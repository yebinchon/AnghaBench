; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_update_capacity_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_update_capacity_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.max17042_config_data* }
%struct.max17042_config_data = type { i32, i32, i32 }

@MAX17042_FullCAP = common dso_local global i32 0, align 4
@MAX17042_DesignCap = common dso_local global i32 0, align 4
@MAX17042_FullCAPNom = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max17042_chip*)* @max17042_update_capacity_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17042_update_capacity_regs(%struct.max17042_chip* %0) #0 {
  %2 = alloca %struct.max17042_chip*, align 8
  %3 = alloca %struct.max17042_config_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.max17042_chip* %0, %struct.max17042_chip** %2, align 8
  %5 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %6 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.max17042_config_data*, %struct.max17042_config_data** %8, align 8
  store %struct.max17042_config_data* %9, %struct.max17042_config_data** %3, align 8
  %10 = load %struct.max17042_chip*, %struct.max17042_chip** %2, align 8
  %11 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @MAX17042_FullCAP, align 4
  %15 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %16 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max17042_write_verify_reg(%struct.regmap* %13, i32 %14, i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %4, align 8
  %20 = load i32, i32* @MAX17042_DesignCap, align 4
  %21 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %22 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %19, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load i32, i32* @MAX17042_FullCAPNom, align 4
  %27 = load %struct.max17042_config_data*, %struct.max17042_config_data** %3, align 8
  %28 = getelementptr inbounds %struct.max17042_config_data, %struct.max17042_config_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max17042_write_verify_reg(%struct.regmap* %25, i32 %26, i32 %29)
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
