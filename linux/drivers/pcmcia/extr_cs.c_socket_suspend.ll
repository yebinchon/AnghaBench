; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, i32 (%struct.pcmcia_socket*, i32*)* }

@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@SOCKET_IN_RESUME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_suspend(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SOCKET_SUSPEND, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SOCKET_IN_RESUME, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %10, %1
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SOCKET_IN_RESUME, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* @dead_socket, align 4
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %43, align 8
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %46, i32 0, i32 4
  %48 = call i32 %44(%struct.pcmcia_socket* %45, i32* %47)
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.pcmcia_socket*)**
  %54 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %53, align 8
  %55 = icmp ne i32 (%struct.pcmcia_socket*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.pcmcia_socket*)**
  %62 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %61, align 8
  %63 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %64 = call i32 %62(%struct.pcmcia_socket* %63)
  br label %65

65:                                               ; preds = %56, %36
  %66 = load i32, i32* @SOCKET_SUSPEND, align 4
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %68 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @SOCKET_IN_RESUME, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %78 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %65, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
