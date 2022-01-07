; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_add_hwmon_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_hwmon.c_power_supply_add_hwmon_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.power_supply_desc*, %struct.device }
%struct.power_supply_desc = type { i32, i32*, i8* }
%struct.device = type { i32 }
%struct.power_supply_hwmon = type { i32, %struct.power_supply* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TIME_TO_FULL_AVG = common dso_local global i64 0, align 8
@power_supply_hwmon_bitmap_free = common dso_local global i32 0, align 4
@power_supply_hwmon_chip_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_add_hwmon_sysfs(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca %struct.power_supply_desc*, align 8
  %5 = alloca %struct.power_supply_hwmon*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0
  %15 = load %struct.power_supply_desc*, %struct.power_supply_desc** %14, align 8
  store %struct.power_supply_desc* %15, %struct.power_supply_desc** %4, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @devres_open_group(%struct.device* %18, i32 (%struct.power_supply*)* @power_supply_add_hwmon_sysfs, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %128

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.power_supply_hwmon* @devm_kzalloc(%struct.device* %26, i32 16, i32 %27)
  store %struct.power_supply_hwmon* %28, %struct.power_supply_hwmon** %5, align 8
  %29 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %30 = icmp ne %struct.power_supply_hwmon* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %124

34:                                               ; preds = %25
  %35 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %36 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %37 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %36, i32 0, i32 1
  store %struct.power_supply* %35, %struct.power_supply** %37, align 8
  %38 = load i64, i64* @POWER_SUPPLY_PROP_TIME_TO_FULL_AVG, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @bitmap_zalloc(i64 %39, i32 %40)
  %42 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %43 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %45 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %124

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load i32, i32* @power_supply_hwmon_bitmap_free, align 4
  %54 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %55 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @devm_add_action(%struct.device* %52, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %124

61:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %85, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %65 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62
  %69 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %70 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  switch i32 %76, label %83 [
    i32 142, label %77
    i32 141, label %77
    i32 140, label %77
    i32 139, label %77
    i32 133, label %77
    i32 132, label %77
    i32 137, label %77
    i32 138, label %77
    i32 136, label %77
    i32 134, label %77
    i32 135, label %77
    i32 131, label %77
    i32 129, label %77
    i32 130, label %77
    i32 128, label %77
  ]

77:                                               ; preds = %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68, %68
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %80 = getelementptr inbounds %struct.power_supply_hwmon, %struct.power_supply_hwmon* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_bit(i32 %78, i32 %81)
  br label %84

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %90 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %89, i32 0, i32 0
  %91 = load %struct.power_supply_desc*, %struct.power_supply_desc** %90, align 8
  %92 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i64 @strchr(i8* %94, i8 signext 45)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %88
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @devm_kstrdup(%struct.device* %98, i8* %99, i32 %100)
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %124

107:                                              ; preds = %97
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strreplace(i8* %108, i8 signext 45, i8 signext 95)
  %110 = load i8*, i8** %12, align 8
  store i8* %110, i8** %10, align 8
  br label %111

111:                                              ; preds = %107, %88
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.power_supply_hwmon*, %struct.power_supply_hwmon** %5, align 8
  %115 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %112, i8* %113, %struct.power_supply_hwmon* %114, i32* @power_supply_hwmon_chip_info, i32* null)
  store %struct.device* %115, %struct.device** %7, align 8
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %124

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 @devres_close_group(%struct.device* %122, i32 (%struct.power_supply*)* @power_supply_add_hwmon_sysfs)
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %120, %104, %60, %48, %31
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @devres_release_group(%struct.device* %125, i32* null)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %121, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @devres_open_group(%struct.device*, i32 (%struct.power_supply*)*, i32) #1

declare dso_local %struct.power_supply_hwmon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @bitmap_zalloc(i64, i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @devm_kstrdup(%struct.device*, i8*, i32) #1

declare dso_local i32 @strreplace(i8*, i8 signext, i8 signext) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.power_supply_hwmon*, i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

declare dso_local i32 @devres_close_group(%struct.device*, i32 (%struct.power_supply*)*) #1

declare dso_local i32 @devres_release_group(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
