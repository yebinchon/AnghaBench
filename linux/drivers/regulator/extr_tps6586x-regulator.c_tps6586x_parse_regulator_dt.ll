; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_parse_regulator_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_parse_regulator_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6586x_platform_data = type { i32 }
%struct.platform_device = type { i32 }
%struct.of_regulator_match = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tps6586x_platform_data* (%struct.platform_device*, %struct.of_regulator_match**)* @tps6586x_parse_regulator_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tps6586x_platform_data* @tps6586x_parse_regulator_dt(%struct.platform_device* %0, %struct.of_regulator_match** %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_regulator_match**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.of_regulator_match** %1, %struct.of_regulator_match*** %4, align 8
  %5 = load %struct.of_regulator_match**, %struct.of_regulator_match*** %4, align 8
  store %struct.of_regulator_match* null, %struct.of_regulator_match** %5, align 8
  ret %struct.tps6586x_platform_data* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
