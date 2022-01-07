; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_read_mgtv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_read_mgtv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32 }

@THM_MGTV = common dso_local global i32 0, align 4
@TV_MASK = common dso_local global i32 0, align 4
@TV_SHIFT = common dso_local global i32 0, align 4
@THM_MGTA = common dso_local global i32 0, align 4
@MGTA_SLOPE_MASK = common dso_local global i32 0, align 4
@MGTA_SLOPE_SHIFT = common dso_local global i32 0, align 4
@MGTA_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*)* @read_mgtv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mgtv(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %7 = load i32, i32* @THM_MGTV, align 4
  %8 = call i32 @thm_readq(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TV_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @TV_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @THM_MGTA, align 4
  %15 = call i32 @thm_readw(i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MGTA_SLOPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MGTA_SLOPE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MGTA_OFFSET_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %26, 64
  %28 = ashr i32 %27, 7
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %3, align 4
  ret i32 0
}

declare dso_local i32 @thm_readq(i32) #1

declare dso_local i32 @thm_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
