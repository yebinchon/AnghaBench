; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_late_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_late_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { {}* }

@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@SOCKET_IN_RESUME = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"suspend state 0x%x != resume state 0x%x\0A\00", align 1
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_late_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_late_resume(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %6 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %5, i32 0, i32 5
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* @SOCKET_SUSPEND, align 4
  %9 = load i32, i32* @SOCKET_IN_RESUME, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 5
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SOCKET_PRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %27 = call i32 @socket_insert(%struct.pcmcia_socket* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %1
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %42 = call i32 @socket_shutdown(%struct.pcmcia_socket* %41)
  store i32 0, i32* %2, align 4
  br label %88

43:                                               ; preds = %35
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 3
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %62 = call i32 @socket_shutdown(%struct.pcmcia_socket* %61)
  %63 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %64 = call i32 @socket_insert(%struct.pcmcia_socket* %63)
  store i32 %64, i32* %2, align 4
  br label %88

65:                                               ; preds = %43
  %66 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %67 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SOCKET_CARDBUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = icmp ne %struct.TYPE_2__* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %79 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i32 (%struct.pcmcia_socket*)**
  %83 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %82, align 8
  %84 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %85 = call i32 %83(%struct.pcmcia_socket* %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %77, %72, %65
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %51, %40, %33
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @socket_insert(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_shutdown(%struct.pcmcia_socket*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
