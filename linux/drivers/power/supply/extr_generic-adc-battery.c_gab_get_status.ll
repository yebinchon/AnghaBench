; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gab = type { i64, i32, %struct.gab_platform_data* }
%struct.gab_platform_data = type { %struct.power_supply_info }
%struct.power_supply_info = type { i64 }

@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gab*)* @gab_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gab_get_status(%struct.gab* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gab*, align 8
  %4 = alloca %struct.gab_platform_data*, align 8
  %5 = alloca %struct.power_supply_info*, align 8
  store %struct.gab* %0, %struct.gab** %3, align 8
  %6 = load %struct.gab*, %struct.gab** %3, align 8
  %7 = getelementptr inbounds %struct.gab, %struct.gab* %6, i32 0, i32 2
  %8 = load %struct.gab_platform_data*, %struct.gab_platform_data** %7, align 8
  store %struct.gab_platform_data* %8, %struct.gab_platform_data** %4, align 8
  %9 = load %struct.gab_platform_data*, %struct.gab_platform_data** %4, align 8
  %10 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %9, i32 0, i32 0
  store %struct.power_supply_info* %10, %struct.power_supply_info** %5, align 8
  %11 = load %struct.gab*, %struct.gab** %3, align 8
  %12 = getelementptr inbounds %struct.gab, %struct.gab* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.power_supply_info*, %struct.power_supply_info** %5, align 8
  %15 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.gab*, %struct.gab** %3, align 8
  %22 = getelementptr inbounds %struct.gab, %struct.gab* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
