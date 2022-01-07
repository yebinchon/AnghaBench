; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.wm8350 = type { i32 }

@WM8350_RTC_ALMSECS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMINS_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMINS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMHRS_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMDAY_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMDAY_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMDATE_MASK = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMTH_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_ALMMTH_MASK = common dso_local global i32 0, align 4
@WM8350_ALARM_SECONDS_MINUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @wm8350_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %10)
  store %struct.wm8350* %11, %struct.wm8350** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 12)
  %16 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @WM8350_RTC_ALMSECS_MASK, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WM8350_RTC_ALMMINS_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %51

46:                                               ; preds = %32
  %47 = load i32, i32* @WM8350_RTC_ALMMINS_MASK, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %37
  %52 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %68

63:                                               ; preds = %51
  %64 = load i32, i32* @WM8350_RTC_ALMHRS_MASK, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @WM8350_RTC_ALMDAY_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %88

83:                                               ; preds = %68
  %84 = load i32, i32* @WM8350_RTC_ALMDAY_MASK, align 4
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %73
  %89 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %105

100:                                              ; preds = %88
  %101 = load i32, i32* @WM8350_RTC_ALMDATE_MASK, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @WM8350_RTC_ALMMTH_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %125

120:                                              ; preds = %105
  %121 = load i32, i32* @WM8350_RTC_ALMMTH_MASK, align 4
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %120, %110
  %126 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %127 = call i32 @wm8350_rtc_stop_alarm(%struct.wm8350* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %151

132:                                              ; preds = %125
  %133 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %134 = load i32, i32* @WM8350_ALARM_SECONDS_MINUTES, align 4
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %136 = call i32 @wm8350_block_write(%struct.wm8350* %133, i32 %134, i32 3, i32* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %151

141:                                              ; preds = %132
  %142 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %143 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %148 = call i32 @wm8350_rtc_start_alarm(%struct.wm8350* %147)
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %139, %130
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wm8350_rtc_stop_alarm(%struct.wm8350*) #1

declare dso_local i32 @wm8350_block_write(%struct.wm8350*, i32, i32, i32*) #1

declare dso_local i32 @wm8350_rtc_start_alarm(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
