; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_vctrl-regulator.c_vctrl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.vctrl_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @vctrl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vctrl_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.vctrl_data*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.vctrl_data* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.vctrl_data* %6, %struct.vctrl_data** %3, align 8
  %7 = load %struct.vctrl_data*, %struct.vctrl_data** %3, align 8
  %8 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @regulator_disable(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.vctrl_data*, %struct.vctrl_data** %3, align 8
  %15 = getelementptr inbounds %struct.vctrl_data, %struct.vctrl_data* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.vctrl_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
