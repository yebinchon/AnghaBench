; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_chipco_regctl_maskset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_chipco_regctl_maskset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32 }

@SSB_CHIPCO_REGCTL_ADDR = common dso_local global i32 0, align 4
@SSB_CHIPCO_REGCTL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*, i32, i32, i32)* @ssb_chipco_regctl_maskset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_chipco_regctl_maskset(%struct.ssb_chipcommon* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ssb_chipcommon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %11 = load i32, i32* @SSB_CHIPCO_REGCTL_ADDR, align 4
  %12 = call i32 @chipco_read32(%struct.ssb_chipcommon* %10, i32 %11)
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %14 = load i32, i32* @SSB_CHIPCO_REGCTL_ADDR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @chipco_write32(%struct.ssb_chipcommon* %13, i32 %14, i32 %15)
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %18 = load i32, i32* @SSB_CHIPCO_REGCTL_ADDR, align 4
  %19 = call i32 @chipco_read32(%struct.ssb_chipcommon* %17, i32 %18)
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %21 = load i32, i32* @SSB_CHIPCO_REGCTL_DATA, align 4
  %22 = call i32 @chipco_read32(%struct.ssb_chipcommon* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %30 = load i32, i32* @SSB_CHIPCO_REGCTL_DATA, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @chipco_write32(%struct.ssb_chipcommon* %29, i32 %30, i32 %31)
  %33 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %34 = load i32, i32* @SSB_CHIPCO_REGCTL_DATA, align 4
  %35 = call i32 @chipco_read32(%struct.ssb_chipcommon* %33, i32 %34)
  ret void
}

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
