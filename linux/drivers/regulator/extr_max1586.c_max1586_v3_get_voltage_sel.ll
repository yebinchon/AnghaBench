; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max1586.c_max1586_v3_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max1586.c_max1586_v3_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max1586_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max1586_v3_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_v3_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.max1586_data*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %4 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %5 = call %struct.max1586_data* @rdev_get_drvdata(%struct.regulator_dev* %4)
  store %struct.max1586_data* %5, %struct.max1586_data** %3, align 8
  %6 = load %struct.max1586_data*, %struct.max1586_data** %3, align 8
  %7 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

declare dso_local %struct.max1586_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
