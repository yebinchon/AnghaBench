; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_power_supply_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.power_supply_config = type { i32, i32, %struct.bq2415x_device* }

@bq2415x_sysfs_groups = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@bq2415x_power_supply_props = common dso_local global i32 0, align 4
@bq2415x_power_supply_get_property = common dso_local global i32 0, align 4
@BQUNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1.%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"chip %s, revision %s, vender code %.3d\00", align 1
@bq2415x_chip_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to allocate model name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*)* @bq2415x_power_supply_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_power_supply_init(%struct.bq2415x_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.power_supply_config, align 8
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  %8 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  %9 = load i32, i32* @bq2415x_sysfs_groups, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 1
  %11 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %12 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 2
  %17 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  store %struct.bq2415x_device* %17, %struct.bq2415x_device** %16, align 8
  %18 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %19 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %22 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %25 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %26 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @bq2415x_power_supply_props, align 4
  %29 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %30 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @bq2415x_power_supply_props, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %35 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @bq2415x_power_supply_get_property, align 4
  %38 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %39 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %42 = call i32 @bq2415x_detect_chip(%struct.bq2415x_device* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @BQUNKNOWN, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %51 = call i32 @bq2415x_detect_revision(%struct.bq2415x_device* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %61

57:                                               ; preds = %49
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32*, i32** @bq2415x_chip_name, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %69 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %70 = call i32 @bq2415x_get_vender_code(%struct.bq2415x_device* %69)
  %71 = call i32 @kasprintf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %68, i32 %70)
  %72 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %73 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %75 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %61
  %79 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %80 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @dev_err(%struct.TYPE_4__* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %109

85:                                               ; preds = %61
  %86 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %87 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %90 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %89, i32 0, i32 2
  %91 = call i32 @power_supply_register(%struct.TYPE_4__* %88, %struct.TYPE_5__* %90, %struct.power_supply_config* %7)
  %92 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %93 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %95 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %85
  %100 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %101 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kfree(i32 %102)
  %104 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %105 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %99, %78
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bq2415x_detect_chip(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_detect_revision(%struct.bq2415x_device*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @bq2415x_get_vender_code(%struct.bq2415x_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
