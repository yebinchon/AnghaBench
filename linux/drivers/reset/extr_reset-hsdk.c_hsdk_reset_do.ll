; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-hsdk.c_hsdk_reset_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-hsdk.c_hsdk_reset_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsdk_rst = type { i64 }

@CGU_IP_SW_RESET = common dso_local global i64 0, align 8
@CGU_IP_SW_RESET_DELAY_MASK = common dso_local global i32 0, align 4
@CGU_IP_SW_RESET_DELAY = common dso_local global i32 0, align 4
@CGU_IP_SW_RESET_DELAY_SHIFT = common dso_local global i32 0, align 4
@CGU_IP_SW_RESET_RESET = common dso_local global i32 0, align 4
@SW_RESET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsdk_rst*)* @hsdk_reset_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_reset_do(%struct.hsdk_rst* %0) #0 {
  %2 = alloca %struct.hsdk_rst*, align 8
  %3 = alloca i32, align 4
  store %struct.hsdk_rst* %0, %struct.hsdk_rst** %2, align 8
  %4 = load %struct.hsdk_rst*, %struct.hsdk_rst** %2, align 8
  %5 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CGU_IP_SW_RESET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CGU_IP_SW_RESET_DELAY_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @CGU_IP_SW_RESET_DELAY, align 4
  %15 = load i32, i32* @CGU_IP_SW_RESET_DELAY_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @CGU_IP_SW_RESET_RESET, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.hsdk_rst*, %struct.hsdk_rst** %2, align 8
  %24 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CGU_IP_SW_RESET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.hsdk_rst*, %struct.hsdk_rst** %2, align 8
  %30 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CGU_IP_SW_RESET, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CGU_IP_SW_RESET_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @SW_RESET_TIMEOUT, align 4
  %42 = call i32 @readl_poll_timeout_atomic(i64 %33, i32 %34, i32 %40, i32 5, i32 %41)
  ret i32 %42
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
