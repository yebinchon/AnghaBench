; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_wait_vbus_lower_bsv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg.c_hw_wait_vbus_lower_bsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@OTGSC_BSV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for %08x in OTGSC\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @hw_wait_vbus_lower_bsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_wait_vbus_lower_bsv(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 5000)
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @OTGSC_BSV, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @hw_read_otgsc(%struct.ci_hdrc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @time_after(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %15
  %29 = call i32 @msleep(i32 20)
  br label %10

30:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @hw_read_otgsc(%struct.ci_hdrc*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
