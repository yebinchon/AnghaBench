; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_gpio_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_gpio_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSB_CHIPCO_GPIOPULLUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_chipco_gpio_pullup(%struct.ssb_chipcommon* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_chipcommon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %11 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %24 = load i32, i32* @SSB_CHIPCO_GPIOPULLUP, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %5, align 8
  %29 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %18, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @chipco_write32_masked(%struct.ssb_chipcommon*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
