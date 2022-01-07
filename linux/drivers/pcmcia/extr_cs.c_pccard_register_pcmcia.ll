; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pccard_register_pcmcia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pccard_register_pcmcia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.pcmcia_callback* }
%struct.pcmcia_callback = type { i32 (%struct.pcmcia_socket*)* }

@EBUSY = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_register_pcmcia(%struct.pcmcia_socket* %0, %struct.pcmcia_callback* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.pcmcia_callback*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store %struct.pcmcia_callback* %1, %struct.pcmcia_callback** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %4, align 8
  %10 = icmp ne %struct.pcmcia_callback* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2
  %14 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %13, align 8
  %15 = icmp ne %struct.pcmcia_callback* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %11
  %20 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %4, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 2
  store %struct.pcmcia_callback* %20, %struct.pcmcia_callback** %22, align 8
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SOCKET_PRESENT, align 4
  %27 = load i32, i32* @SOCKET_CARDBUS, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @SOCKET_PRESENT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 2
  %35 = load %struct.pcmcia_callback*, %struct.pcmcia_callback** %34, align 8
  %36 = getelementptr inbounds %struct.pcmcia_callback, %struct.pcmcia_callback* %35, i32 0, i32 0
  %37 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %36, align 8
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %39 = call i32 %37(%struct.pcmcia_socket* %38)
  br label %40

40:                                               ; preds = %32, %19
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 2
  store %struct.pcmcia_callback* null, %struct.pcmcia_callback** %43, align 8
  br label %44

44:                                               ; preds = %41, %40
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
