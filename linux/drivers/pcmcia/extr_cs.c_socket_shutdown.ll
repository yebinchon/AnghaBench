; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_4__*, i32, i64, i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*)* }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*)* }

@.str = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@SOCKET_INUSE = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@shutdown_delay = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"*** DANGER *** unable to remove socket power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*)* @socket_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_shutdown(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %4, i32 0, i32 1
  %6 = call i32 @dev_dbg(i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %15, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %18 = call i32 %16(%struct.pcmcia_socket* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @SOCKET_INUSE, align 4
  %24 = load i32, i32* @SOCKET_PRESENT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @shutdown_delay, align 4
  %31 = mul nsw i32 %30, 10
  %32 = call i32 @msleep(i32 %31)
  %33 = load i32, i32* @SOCKET_INUSE, align 4
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @dead_socket, align 4
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %42 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %44, align 8
  %46 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %47 = call i32 %45(%struct.pcmcia_socket* %46)
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %51, align 8
  %53 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 7
  %56 = call i32 %52(%struct.pcmcia_socket* %53, i32* %55)
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %58 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %64 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %66 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %68 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %67, i32 0, i32 3
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = call i32 @msleep(i32 100)
  %71 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %72 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %74, align 8
  %76 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %77 = call i32 %75(%struct.pcmcia_socket* %76, i32* %3)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @SS_POWERON, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %19
  %83 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %84 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %83, i32 0, i32 1
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %19
  %87 = load i32, i32* @SOCKET_INUSE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %90 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
