; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i64, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M48T59_MDAY = common dso_local global i32 0, align 4
@M48T59_CNTL_WRITE = common dso_local global i32 0, align 4
@M48T59_CNTL = common dso_local global i32 0, align 4
@M48T59_ALARM_DATE = common dso_local global i32 0, align 4
@M48T59_ALARM_HOUR = common dso_local global i32 0, align 4
@M48T59_ALARM_MIN = common dso_local global i32 0, align 4
@M48T59_ALARM_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"RTC set alarm time %04d-%02d-%02d %02d/%02d/%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m48t59_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.m48t59_plat_data*, align 8
  %7 = alloca %struct.m48t59_private*, align 8
  %8 = alloca %struct.rtc_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %15)
  store %struct.m48t59_plat_data* %16, %struct.m48t59_plat_data** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.m48t59_private* @dev_get_drvdata(%struct.device* %17)
  store %struct.m48t59_private* %18, %struct.m48t59_private** %7, align 8
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  store %struct.rtc_time* %20, %struct.rtc_time** %8, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %25 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NO_IRQ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %137

32:                                               ; preds = %2
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %137

38:                                               ; preds = %32
  %39 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 31
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @bin2bcd(i32 %48)
  br label %51

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 255, %50 ]
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @M48T59_MDAY, align 4
  %57 = call i32 @M48T59_READ(i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 24
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @bin2bcd(i32 %65)
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  store i32 %69, i32* %10, align 4
  %70 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 60
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @bin2bcd(i32 %76)
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  store i32 %80, i32* %11, align 4
  %81 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 60
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @bin2bcd(i32 %87)
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %12, align 4
  %92 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %93 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %92, i32 0, i32 1
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %97 = load i32, i32* @M48T59_CNTL, align 4
  %98 = call i32 @M48T59_SET_BITS(i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @M48T59_ALARM_DATE, align 4
  %101 = call i32 @M48T59_WRITE(i32 %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @M48T59_ALARM_HOUR, align 4
  %104 = call i32 @M48T59_WRITE(i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @M48T59_ALARM_MIN, align 4
  %107 = call i32 @M48T59_WRITE(i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @M48T59_ALARM_SEC, align 4
  %110 = call i32 @M48T59_WRITE(i32 %108, i32 %109)
  %111 = load i32, i32* @M48T59_CNTL_WRITE, align 4
  %112 = load i32, i32* @M48T59_CNTL, align 4
  %113 = call i32 @M48T59_CLEAR_BITS(i32 %111, i32 %112)
  %114 = load %struct.m48t59_private*, %struct.m48t59_private** %7, align 8
  %115 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %114, i32 0, i32 1
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1900
  %121 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %90, %35, %29
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @M48T59_READ(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_SET_BITS(i32, i32) #1

declare dso_local i32 @M48T59_WRITE(i32, i32) #1

declare dso_local i32 @M48T59_CLEAR_BITS(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
