; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

@SSB_GPIO_XTAL = common dso_local global i32 0, align 4
@SSB_GPIO_PLL = common dso_local global i32 0, align 4
@SSB_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4
@SSB_CLKMODE_FAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bus powerup failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_bus_powerup(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %9 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %10 = load i32, i32* @SSB_GPIO_PLL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %8, i32 %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @SSB_CLKMODE_DYNAMIC, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @SSB_CLKMODE_FAST, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %28 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %27, i32 0, i32 1
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ssb_chipco_set_clockmode(i32* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %34

31:                                               ; preds = %15
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ssb_pci_xtal(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_chipco_set_clockmode(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
