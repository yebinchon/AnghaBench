; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_voltage_avg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_voltage_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32 }
%union.power_supply_propval = type { i64 }

@DA9150_QIF_UAVG = common dso_local global i32 0, align 4
@DA9150_QIF_UAVG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_fg*, %union.power_supply_propval*)* @da9150_fg_voltage_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_voltage_avg(%struct.da9150_fg* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9150_fg*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i64, align 8
  store %struct.da9150_fg* %0, %struct.da9150_fg** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %6 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %7 = load i32, i32* @DA9150_QIF_UAVG, align 4
  %8 = load i32, i32* @DA9150_QIF_UAVG_SIZE, align 4
  %9 = call i64 @da9150_fg_read_attr_sync(%struct.da9150_fg* %6, i32 %7, i32 %8)
  %10 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %11 = bitcast %union.power_supply_propval* %10 to i64*
  store i64 %9, i64* %11, align 8
  %12 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %13 = bitcast %union.power_supply_propval* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = mul i64 %14, 186
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @do_div(i64 %16, i32 10000)
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i64*
  store i64 %20, i64* %22, align 8
  ret i32 0
}

declare dso_local i64 @da9150_fg_read_attr_sync(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
