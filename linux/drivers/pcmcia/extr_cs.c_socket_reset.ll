; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@reset_time = common dso_local global i64 0, align 8
@unreset_delay = common dso_local global i32 0, align 4
@unreset_limit = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@unreset_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"time out after reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_reset(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %10 = load i32, i32* @SS_RESET, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)** %20, align 8
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 2
  %25 = call i32 %21(%struct.pcmcia_socket* %22, %struct.TYPE_5__* %24)
  %26 = load i64, i64* @reset_time, align 8
  %27 = call i32 @udelay(i64 %26)
  %28 = load i32, i32* @SS_RESET, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)** %38, align 8
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %41 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %42 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %41, i32 0, i32 2
  %43 = call i32 %39(%struct.pcmcia_socket* %40, %struct.TYPE_5__* %42)
  %44 = load i32, i32* @unreset_delay, align 4
  %45 = mul nsw i32 %44, 10
  %46 = call i32 @msleep(i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %76, %1
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @unreset_limit, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %55, align 8
  %57 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %58 = call i32 %56(%struct.pcmcia_socket* %57, i32* %4)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SS_DETECT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %51
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SS_READY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i32, i32* @unreset_check, align 4
  %74 = mul nsw i32 %73, 10
  %75 = call i32 @msleep(i32 %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %47

79:                                               ; preds = %47
  %80 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %81 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %71, %63
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
