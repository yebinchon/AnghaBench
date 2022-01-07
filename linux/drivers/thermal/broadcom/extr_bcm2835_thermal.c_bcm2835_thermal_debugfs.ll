; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_bcm2835_thermal.c_bcm2835_thermal_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_bcm2835_thermal.c_bcm2835_thermal_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm2835_thermal_data = type { i32, i32 }
%struct.debugfs_regset32 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bcm2835_thermal\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@bcm2835_thermal_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"regset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @bcm2835_thermal_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_thermal_debugfs(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm2835_thermal_data*, align 8
  %4 = alloca %struct.debugfs_regset32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.bcm2835_thermal_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.bcm2835_thermal_data* %6, %struct.bcm2835_thermal_data** %3, align 8
  %7 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  %8 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.debugfs_regset32* @devm_kzalloc(i32* %11, i32 12, i32 %12)
  store %struct.debugfs_regset32* %13, %struct.debugfs_regset32** %4, align 8
  %14 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %15 = icmp ne %struct.debugfs_regset32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @bcm2835_thermal_regs, align 4
  %19 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %20 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @bcm2835_thermal_regs, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %24 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %29 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bcm2835_thermal_data*, %struct.bcm2835_thermal_data** %3, align 8
  %31 = getelementptr inbounds %struct.bcm2835_thermal_data, %struct.bcm2835_thermal_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %34 = call i32 @debugfs_create_regset32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %32, %struct.debugfs_regset32* %33)
  br label %35

35:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.bcm2835_thermal_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local %struct.debugfs_regset32* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @debugfs_create_regset32(i8*, i32, i32, %struct.debugfs_regset32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
