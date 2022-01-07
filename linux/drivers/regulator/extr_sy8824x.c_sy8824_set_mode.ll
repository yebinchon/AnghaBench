; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.sy8824_device_info = type { %struct.sy8824_config* }
%struct.sy8824_config = type { i32 }

@SY8824C_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @sy8824_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8824_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sy8824_device_info*, align 8
  %7 = alloca %struct.sy8824_config*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.sy8824_device_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.sy8824_device_info* %9, %struct.sy8824_device_info** %6, align 8
  %10 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %6, align 8
  %11 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %10, i32 0, i32 0
  %12 = load %struct.sy8824_config*, %struct.sy8824_config** %11, align 8
  store %struct.sy8824_config* %12, %struct.sy8824_config** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %33 [
    i32 129, label %14
    i32 128, label %24
  ]

14:                                               ; preds = %2
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sy8824_config*, %struct.sy8824_config** %7, align 8
  %19 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SY8824C_MODE, align 4
  %22 = load i32, i32* @SY8824C_MODE, align 4
  %23 = call i32 @regmap_update_bits(i32 %17, i32 %20, i32 %21, i32 %22)
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sy8824_config*, %struct.sy8824_config** %7, align 8
  %29 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SY8824C_MODE, align 4
  %32 = call i32 @regmap_update_bits(i32 %27, i32 %30, i32 %31, i32 0)
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %24, %14
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sy8824_device_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
