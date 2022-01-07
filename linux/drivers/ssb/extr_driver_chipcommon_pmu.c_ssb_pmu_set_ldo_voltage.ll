; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_set_ldo_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_set_ldo_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_pmu_set_ldo_voltage(%struct.ssb_chipcommon* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ssb_chipcommon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssb_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %4, align 8
  %12 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %14, align 8
  store %struct.ssb_bus* %15, %struct.ssb_bus** %7, align 8
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %36 [
    i32 17192, label %19
    i32 21332, label %19
    i32 17170, label %28
  ]

19:                                               ; preds = %3, %3
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %25 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
    i32 131, label %24
  ]

21:                                               ; preds = %19
  store i32 2, i32* %8, align 4
  store i32 25, i32* %9, align 4
  store i32 15, i32* %10, align 4
  br label %27

22:                                               ; preds = %19
  store i32 3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 15, i32* %10, align 4
  br label %27

23:                                               ; preds = %19
  store i32 3, i32* %8, align 4
  store i32 9, i32* %9, align 4
  store i32 15, i32* %10, align 4
  br label %27

24:                                               ; preds = %19
  store i32 3, i32* %8, align 4
  store i32 17, i32* %9, align 4
  store i32 63, i32* %10, align 4
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @WARN_ON(i32 1)
  br label %50

27:                                               ; preds = %24, %23, %22, %21
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 131
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %50

35:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  store i32 21, i32* %9, align 4
  store i32 63, i32* %10, align 4
  br label %37

36:                                               ; preds = %3
  br label %50

37:                                               ; preds = %35, %27
  %38 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @ssb_chipco_regctl_maskset(%struct.ssb_chipcommon* %38, i32 %39, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %37, %36, %34, %25
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ssb_chipco_regctl_maskset(%struct.ssb_chipcommon*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
