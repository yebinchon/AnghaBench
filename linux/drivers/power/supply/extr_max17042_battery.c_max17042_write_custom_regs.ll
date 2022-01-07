; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_write_custom_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_write_custom_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { i64, %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.max17042_config_data* }
%struct.max17042_config_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX17042_RCOMP0 = common dso_local global i32 0, align 4
@MAX17042_TempCo = common dso_local global i32 0, align 4
@MAX17042_ICHGTerm = common dso_local global i32 0, align 4
@MAXIM_DEVICE_TYPE_MAX17042 = common dso_local global i64 0, align 8
@MAX17042_EmptyTempCo = common dso_local global i32 0, align 4
@MAX17042_K_empty0 = common dso_local global i32 0, align 4
@MAX17047_QRTbl00 = common dso_local global i32 0, align 4
@MAX17047_QRTbl10 = common dso_local global i32 0, align 4
@MAX17047_QRTbl20 = common dso_local global i32 0, align 4
@MAX17047_QRTbl30 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max17042_chip*)* @max17042_write_custom_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17042_write_custom_regs(%struct.max17042_chip* %0) #0 {
  %2 = alloca %struct.max17042_chip*, align 8
  %3 = alloca %struct.max17042_config_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.max17042_chip* %0, %struct.max17042_chip** %2, align 8
  %5 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %6 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  store %struct.max17042_config_data* %9, %struct.max17042_config_data** %3, align 8
  %10 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %11 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @MAX17042_RCOMP0, align 4
  %15 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %16 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max17042_write_verify_reg(%struct.regmap* %13, i32 %14, i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %4, align 8
  %20 = load i32, i32* @MAX17042_TempCo, align 4
  %21 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %22 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @max17042_write_verify_reg(%struct.regmap* %19, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load i32, i32* @MAX17042_ICHGTerm, align 4
  %27 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %28 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max17042_write_verify_reg(%struct.regmap* %25, i32 %26, i32 %29)
  %31 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %32 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAXIM_DEVICE_TYPE_MAX17042, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load %struct.regmap*, %struct.regmap** %4, align 8
  %38 = load i32, i32* @MAX17042_EmptyTempCo, align 4
  %39 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %40 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(%struct.regmap* %37, i32 %38, i32 %41)
  %43 = load %struct.regmap*, %struct.regmap** %4, align 8
  %44 = load i32, i32* @MAX17042_K_empty0, align 4
  %45 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %46 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max17042_write_verify_reg(%struct.regmap* %43, i32 %44, i32 %47)
  br label %74

49:                                               ; preds = %1
  %50 = load %struct.regmap*, %struct.regmap** %4, align 8
  %51 = load i32, i32* @MAX17047_QRTbl00, align 4
  %52 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %53 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @max17042_write_verify_reg(%struct.regmap* %50, i32 %51, i32 %54)
  %56 = load %struct.regmap*, %struct.regmap** %4, align 8
  %57 = load i32, i32* @MAX17047_QRTbl10, align 4
  %58 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %59 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max17042_write_verify_reg(%struct.regmap* %56, i32 %57, i32 %60)
  %62 = load %struct.regmap*, %struct.regmap** %4, align 8
  %63 = load i32, i32* @MAX17047_QRTbl20, align 4
  %64 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %65 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @max17042_write_verify_reg(%struct.regmap* %62, i32 %63, i32 %66)
  %68 = load %struct.regmap*, %struct.regmap** %4, align 8
  %69 = load i32, i32* @MAX17047_QRTbl30, align 4
  %70 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %71 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @max17042_write_verify_reg(%struct.regmap* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %49, %36
  ret void
}

declare dso_local i32 @max17042_write_verify_reg(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
