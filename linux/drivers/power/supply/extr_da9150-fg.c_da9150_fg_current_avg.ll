; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_current_avg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_current_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32 }
%union.power_supply_propval = type { i32 }

@DA9150_QIF_IAVG = common dso_local global i32 0, align 4
@DA9150_QIF_IAVG_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_SHUNT_VAL = common dso_local global i32 0, align 4
@DA9150_QIF_SHUNT_VAL_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_SD_GAIN = common dso_local global i32 0, align 4
@DA9150_QIF_SD_GAIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_fg*, %union.power_supply_propval*)* @da9150_fg_current_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_current_avg(%struct.da9150_fg* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.da9150_fg*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da9150_fg* %0, %struct.da9150_fg** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %10 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %11 = call i32 @da9150_fg_read_sync_start(%struct.da9150_fg* %10)
  %12 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %13 = load i32, i32* @DA9150_QIF_IAVG, align 4
  %14 = load i32, i32* @DA9150_QIF_IAVG_SIZE, align 4
  %15 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %12, i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %17 = load i32, i32* @DA9150_QIF_SHUNT_VAL, align 4
  %18 = load i32, i32* @DA9150_QIF_SHUNT_VAL_SIZE, align 4
  %19 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %16, i32 %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %21 = load i32, i32* @DA9150_QIF_SD_GAIN, align 4
  %22 = load i32, i32* @DA9150_QIF_SD_GAIN_SIZE, align 4
  %23 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %20, i32 %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.da9150_fg*, %struct.da9150_fg** %3, align 8
  %25 = call i32 @da9150_fg_read_sync_end(%struct.da9150_fg* %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = mul i64 %26, %27
  %29 = mul i64 %28, 65536
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @do_div(i32 %31, i32 1000000)
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %33, 1000000
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @do_div(i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  ret i32 0
}

declare dso_local i32 @da9150_fg_read_sync_start(%struct.da9150_fg*) #1

declare dso_local i64 @da9150_fg_read_attr(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @da9150_fg_read_sync_end(%struct.da9150_fg*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
