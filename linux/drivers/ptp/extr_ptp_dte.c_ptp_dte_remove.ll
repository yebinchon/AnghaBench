; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_dte.c_ptp_dte_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_dte.c_ptp_dte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ptp_dte = type { i64, i32 }

@DTE_NUM_REGS_TO_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ptp_dte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_dte_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ptp_dte*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ptp_dte* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ptp_dte* %6, %struct.ptp_dte** %3, align 8
  %7 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %8 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ptp_clock_unregister(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DTE_NUM_REGS_TO_RESTORE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %17 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %18, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  ret i32 0
}

declare dso_local %struct.ptp_dte* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ptp_clock_unregister(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
