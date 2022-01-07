; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_sflash.c_ssb_sflash_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_sflash.c_ssb_sflash_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSB_CHIPCO_FLASHCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHCTL_START = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHCTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SFLASH control command failed (timeout)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*, i32)* @ssb_sflash_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_sflash_cmd(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %7 = load i32, i32* @SSB_CHIPCO_FLASHCTL, align 4
  %8 = load i32, i32* @SSB_CHIPCO_FLASHCTL_START, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @chipco_write32(%struct.ssb_chipcommon* %6, i32 %7, i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %17 = load i32, i32* @SSB_CHIPCO_FLASHCTL, align 4
  %18 = call i32 @chipco_read32(%struct.ssb_chipcommon* %16, i32 %17)
  %19 = load i32, i32* @SSB_CHIPCO_FLASHCTL_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %35

23:                                               ; preds = %15
  %24 = call i32 (...) @cpu_relax()
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %30 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
