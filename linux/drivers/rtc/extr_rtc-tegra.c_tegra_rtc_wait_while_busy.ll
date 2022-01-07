; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_wait_while_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_wait_while_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_rtc_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"write failed: retry count exceeded\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_rtc_wait_while_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_wait_while_busy(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_rtc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_rtc_info* %7, %struct.tegra_rtc_info** %4, align 8
  store i32 500, i32* %5, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %4, align 8
  %10 = call i64 @tegra_rtc_check_busy(%struct.tegra_rtc_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %20

17:                                               ; preds = %12
  %18 = call i32 @udelay(i32 1)
  br label %8

19:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %25

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @tegra_rtc_check_busy(%struct.tegra_rtc_info*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
