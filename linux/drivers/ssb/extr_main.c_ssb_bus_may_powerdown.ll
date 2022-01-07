; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_may_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_bus_may_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64, i64, %struct.ssb_chipcommon }
%struct.ssb_chipcommon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8
@SSB_CLKMODE_SLOW = common dso_local global i32 0, align 4
@SSB_GPIO_XTAL = common dso_local global i32 0, align 4
@SSB_GPIO_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bus powerdown failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_BUSTYPE_SSB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 2
  store %struct.ssb_chipcommon* %13, %struct.ssb_chipcommon** %3, align 8
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %41

19:                                               ; preds = %11
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %21 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %30 = load i32, i32* @SSB_CLKMODE_SLOW, align 4
  %31 = call i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %29, i32 %30)
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %33 = load i32, i32* @SSB_GPIO_XTAL, align 4
  %34 = load i32, i32* @SSB_GPIO_PLL, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %32, i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %45

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %45, %40, %27, %18, %10
  %42 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %43 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %4, align 4
  ret i32 %44

45:                                               ; preds = %39
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %41
}

declare dso_local i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @ssb_pci_xtal(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
