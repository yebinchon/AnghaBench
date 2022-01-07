; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8350 = type { i32 }

@WM8350_ALARM_SECONDS_MINUTES = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSECS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMINS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMINS_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMHRS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMDAY_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMTH_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMTH_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMDATE_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @wm8350_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %10)
  store %struct.wm8350* %11, %struct.wm8350** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %15 = load i32, i32* @WM8350_ALARM_SECONDS_MINUTES, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %17 = call i32 @wm8350_block_read(%struct.wm8350* %14, i32 %15, i32 4, i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %140

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = load i32, i32* @WM8350_RTC_ALMSECS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WM8350_RTC_ALMSECS_MASK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = load i32, i32* @WM8350_RTC_ALMMINS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WM8350_RTC_ALMMINS_MASK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load i32, i32* @WM8350_RTC_ALMMINS_SHIFT, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WM8350_RTC_ALMHRS_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WM8350_RTC_ALMHRS_MASK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 2
  store i32 -1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %58
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WM8350_RTC_ALMDAY_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 7
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 7
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 3
  store i32 -1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @WM8350_RTC_ALMMTH_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @WM8350_RTC_ALMMTH_MASK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 4
  store i32 -1, i32* %103, align 4
  br label %113

104:                                              ; preds = %89
  %105 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WM8350_RTC_ALMMTH_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %101
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WM8350_RTC_ALMDATE_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @WM8350_RTC_ALMDATE_MASK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 5
  store i32 -1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %113
  %129 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 6
  store i32 -1, i32* %130, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WM8350_RTC_ALMSTS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %139 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %128, %20
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm8350_block_read(%struct.wm8350*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
