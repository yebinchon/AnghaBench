; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8824x.c_sy8824_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.sy8824_device_info = type { %struct.sy8824_config* }
%struct.sy8824_config = type { i32 }

@SY8824C_MODE = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @sy8824_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8824_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.sy8824_device_info*, align 8
  %5 = alloca %struct.sy8824_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.sy8824_device_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.sy8824_device_info* %9, %struct.sy8824_device_info** %4, align 8
  %10 = load %struct.sy8824_device_info*, %struct.sy8824_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.sy8824_device_info, %struct.sy8824_device_info* %10, i32 0, i32 0
  %12 = load %struct.sy8824_config*, %struct.sy8824_config** %11, align 8
  store %struct.sy8824_config* %12, %struct.sy8824_config** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sy8824_config*, %struct.sy8824_config** %5, align 8
  %17 = getelementptr inbounds %struct.sy8824_config, %struct.sy8824_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SY8824C_MODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.sy8824_device_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
