; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_release_cis_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_release_cis_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)* }

@MAP_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_cis_mem(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAP_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %1
  %14 = load i32, i32* @MAP_ACTIVE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)** %24, align 8
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %28 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %27, i32 0, i32 2
  %29 = call i32 %25(%struct.pcmcia_socket* %26, %struct.TYPE_4__* %28)
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %13
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @release_resource(i32* %39)
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %42 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %35, %13
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %51 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @iounmap(i32* %52)
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %1
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %58 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
