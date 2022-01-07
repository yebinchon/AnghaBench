; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_convert_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_convert_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.da9030_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*, %struct.da9030_battery_info*)* @da9030_battery_convert_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_battery_convert_thresholds(%struct.da9030_charger* %0, %struct.da9030_battery_info* %1) #0 {
  %3 = alloca %struct.da9030_charger*, align 8
  %4 = alloca %struct.da9030_battery_info*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %3, align 8
  store %struct.da9030_battery_info* %1, %struct.da9030_battery_info** %4, align 8
  %5 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %6 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %9 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i32 %7, i32* %10, align 8
  %11 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %12 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %15 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  store i32 %13, i32* %16, align 4
  %17 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %18 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %21 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 8
  %23 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %24 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @da9030_millivolt_to_reg(i32 %25)
  %27 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %28 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  store i8* %26, i8** %29, align 8
  %30 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %31 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @da9030_millivolt_to_reg(i32 %32)
  %34 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %35 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i8* %33, i8** %36, align 8
  %37 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %38 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @da9030_millivolt_to_reg(i32 %39)
  %41 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %42 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %45 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @da9030_millivolt_to_reg(i32 %46)
  %48 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %49 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %52 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @da9030_millivolt_to_reg(i32 %53)
  %55 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %56 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %59 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @da9030_millivolt_to_reg(i32 %60)
  %62 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %63 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %4, align 8
  %66 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @da9030_millivolt_to_reg(i32 %67)
  %69 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %70 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  ret void
}

declare dso_local i8* @da9030_millivolt_to_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
