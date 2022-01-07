; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-brcmstb.c_brcmstb_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-brcmstb.c_brcmstb_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.brcmstb_reset = type { i64 }

@SW_INIT_BANK_SIZE = common dso_local global i32 0, align 4
@SW_INIT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @brcmstb_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmstb_reset*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @SW_INIT_BANK(i64 %7)
  %9 = load i32, i32* @SW_INIT_BANK_SIZE, align 4
  %10 = mul i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %12 = call %struct.brcmstb_reset* @to_brcmstb(%struct.reset_controller_dev* %11)
  store %struct.brcmstb_reset* %12, %struct.brcmstb_reset** %6, align 8
  %13 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %6, align 8
  %14 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i64, i64* @SW_INIT_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @SW_INIT_BIT(i64 %22)
  %24 = and i32 %21, %23
  ret i32 %24
}

declare dso_local i32 @SW_INIT_BANK(i64) #1

declare dso_local %struct.brcmstb_reset* @to_brcmstb(%struct.reset_controller_dev*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @SW_INIT_BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
