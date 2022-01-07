; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_reset_ppm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_reset_ppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.ucsi_control*)*, %struct.TYPE_8__* }
%struct.ucsi_control = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@UCSI_PPM_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@UCSI_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to reset PPM! Trying again..\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi*)* @ucsi_reset_ppm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_reset_ppm(%struct.ucsi* %0) #0 {
  %2 = alloca %struct.ucsi*, align 8
  %3 = alloca %struct.ucsi_control, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ucsi* %0, %struct.ucsi** %2, align 8
  %6 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %3, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @UCSI_PPM_RESET, align 4
  %8 = getelementptr inbounds %struct.ucsi_control, %struct.ucsi_control* %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = call i32 @trace_ucsi_command(%struct.ucsi_control* %3)
  %11 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %12 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_9__*, %struct.ucsi_control*)*, i32 (%struct.TYPE_9__*, %struct.ucsi_control*)** %14, align 8
  %16 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %17 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i32 %15(%struct.TYPE_9__* %18, %struct.ucsi_control* %3)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %82

23:                                               ; preds = %1
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @UCSI_TIMEOUT_MS, align 4
  %26 = call i64 @msecs_to_jiffies(i32 %25)
  %27 = add i64 %24, %26
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %77, %23
  %29 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %30 = call i32 @ucsi_sync(%struct.ucsi* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %82

34:                                               ; preds = %28
  %35 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %36 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %81

45:                                               ; preds = %34
  %46 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %47 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %56 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_warn_ratelimited(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @trace_ucsi_command(%struct.ucsi_control* %3)
  %60 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %61 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_9__*, %struct.ucsi_control*)*, i32 (%struct.TYPE_9__*, %struct.ucsi_control*)** %63, align 8
  %65 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %66 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 %64(%struct.TYPE_9__* %67, %struct.ucsi_control* %3)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %54
  br label %82

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %45
  %74 = call i32 @msleep(i32 20)
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @time_is_after_jiffies(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %28, label %81

81:                                               ; preds = %77, %44
  br label %82

82:                                               ; preds = %81, %71, %33, %22
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @trace_ucsi_reset_ppm(%struct.ucsi_control* %3, i32 %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @trace_ucsi_command(%struct.ucsi_control*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ucsi_sync(%struct.ucsi*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @trace_ucsi_reset_ppm(%struct.ucsi_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
