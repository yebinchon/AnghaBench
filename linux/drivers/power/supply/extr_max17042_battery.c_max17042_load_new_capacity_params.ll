; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_load_new_capacity_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_load_new_capacity_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.max17042_config_data* }
%struct.max17042_config_data = type { i32, i32, i32 }

@MAX17042_FullCAP0 = common dso_local global i32 0, align 4
@MAX17042_VFSOC = common dso_local global i32 0, align 4
@MAX17042_RemCap = common dso_local global i32 0, align 4
@MAX17042_RepCap = common dso_local global i32 0, align 4
@dQ_ACC_DIV = common dso_local global i32 0, align 4
@MAX17042_dQacc = common dso_local global i32 0, align 4
@MAX17042_dPacc = common dso_local global i32 0, align 4
@dP_ACC_200 = common dso_local global i32 0, align 4
@MAX17042_FullCAP = common dso_local global i32 0, align 4
@MAX17042_DesignCap = common dso_local global i32 0, align 4
@MAX17042_FullCAPNom = common dso_local global i32 0, align 4
@MAX17042_RepSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max17042_chip*)* @max17042_load_new_capacity_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17042_load_new_capacity_params(%struct.max17042_chip* %0) #0 {
  %2 = alloca %struct.max17042_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max17042_config_data*, align 8
  %9 = alloca %struct.regmap*, align 8
  store %struct.max17042_chip* %0, %struct.max17042_chip** %2, align 8
  %10 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %11 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.max17042_config_data*, %struct.max17042_config_data** %13, align 8
  store %struct.max17042_config_data* %14, %struct.max17042_config_data** %8, align 8
  %15 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %16 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %9, align 8
  %18 = load %struct.regmap*, %struct.regmap** %9, align 8
  %19 = load i32, i32* @MAX17042_FullCAP0, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %3)
  %21 = load %struct.regmap*, %struct.regmap** %9, align 8
  %22 = load i32, i32* @MAX17042_VFSOC, align 4
  %23 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %6)
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 100
  store i32 %28, i32* %7, align 4
  %29 = load %struct.regmap*, %struct.regmap** %9, align 8
  %30 = load i32, i32* @MAX17042_RemCap, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @max17042_write_verify_reg(%struct.regmap* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.regmap*, %struct.regmap** %9, align 8
  %35 = load i32, i32* @MAX17042_RepCap, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @max17042_write_verify_reg(%struct.regmap* %34, i32 %35, i32 %36)
  %38 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  %39 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @dQ_ACC_DIV, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.regmap*, %struct.regmap** %9, align 8
  %44 = load i32, i32* @MAX17042_dQacc, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @max17042_write_verify_reg(%struct.regmap* %43, i32 %44, i32 %45)
  %47 = load %struct.regmap*, %struct.regmap** %9, align 8
  %48 = load i32, i32* @MAX17042_dPacc, align 4
  %49 = load i32, i32* @dP_ACC_200, align 4
  %50 = call i32 @max17042_write_verify_reg(%struct.regmap* %47, i32 %48, i32 %49)
  %51 = load %struct.regmap*, %struct.regmap** %9, align 8
  %52 = load i32, i32* @MAX17042_FullCAP, align 4
  %53 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  %54 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @max17042_write_verify_reg(%struct.regmap* %51, i32 %52, i32 %55)
  %57 = load %struct.regmap*, %struct.regmap** %9, align 8
  %58 = load i32, i32* @MAX17042_DesignCap, align 4
  %59 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  %60 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regmap_write(%struct.regmap* %57, i32 %58, i32 %61)
  %63 = load %struct.regmap*, %struct.regmap** %9, align 8
  %64 = load i32, i32* @MAX17042_FullCAPNom, align 4
  %65 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  %66 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max17042_write_verify_reg(%struct.regmap* %63, i32 %64, i32 %67)
  %69 = load %struct.regmap*, %struct.regmap** %9, align 8
  %70 = load i32, i32* @MAX17042_RepSOC, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @regmap_write(%struct.regmap* %69, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @max17042_write_verify_reg(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
