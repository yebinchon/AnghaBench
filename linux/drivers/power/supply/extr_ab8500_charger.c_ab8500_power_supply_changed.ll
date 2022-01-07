; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_power_supply_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_power_supply_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.power_supply = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_charger*, %struct.power_supply*)* @ab8500_power_supply_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_power_supply_changed(%struct.ab8500_charger* %0, %struct.power_supply* %1) #0 {
  %3 = alloca %struct.ab8500_charger*, align 8
  %4 = alloca %struct.power_supply*, align 8
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %3, align 8
  store %struct.power_supply* %1, %struct.power_supply** %4, align 8
  %5 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %6 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %11 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %9
  %16 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %17 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %15
  %22 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %23 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %28 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %30 = call i32 @ab8500_enable_disable_sw_fallback(%struct.ab8500_charger* %29, i32 0)
  br label %54

31:                                               ; preds = %21, %15, %9
  %32 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %33 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %31
  %37 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %38 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %50 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.ab8500_charger*, %struct.ab8500_charger** %3, align 8
  %52 = call i32 @ab8500_enable_disable_sw_fallback(%struct.ab8500_charger* %51, i32 1)
  br label %53

53:                                               ; preds = %48, %42, %31
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %57 = call i32 @power_supply_changed(%struct.power_supply* %56)
  ret void
}

declare dso_local i32 @ab8500_enable_disable_sw_fallback(%struct.ab8500_charger*, i32) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
