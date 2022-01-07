; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_hi6220_reset.c_hi6220_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/hisilicon/extr_hi6220_reset.c_hi6220_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hi6220_reset_data = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32*, %struct.device_node* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to get reset controller regmap\0A\00", align 1
@MEDIA = common dso_local global i32 0, align 4
@hi6220_media_reset_ops = common dso_local global i32 0, align 4
@MEDIA_MAX_INDEX = common dso_local global i32 0, align 4
@hi6220_peripheral_reset_ops = common dso_local global i32 0, align 4
@PERIPH_MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6220_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hi6220_reset_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hi6220_reset_data* @devm_kzalloc(%struct.device* %15, i32 32, i32 %16)
  store %struct.hi6220_reset_data* %17, %struct.hi6220_reset_data** %7, align 8
  %18 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %19 = icmp ne %struct.hi6220_reset_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i64 @of_device_get_match_data(%struct.device* %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %27)
  store %struct.regmap* %28, %struct.regmap** %8, align 8
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = call i64 @IS_ERR(%struct.regmap* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.regmap*, %struct.regmap** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.regmap* %35)
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %23
  %38 = load %struct.regmap*, %struct.regmap** %8, align 8
  %39 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %40 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %39, i32 0, i32 1
  store %struct.regmap* %38, %struct.regmap** %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %43 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store %struct.device_node* %41, %struct.device_node** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MEDIA, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %50 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32* @hi6220_media_reset_ops, i32** %51, align 8
  %52 = load i32, i32* @MEDIA_MAX_INDEX, align 4
  %53 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %54 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %64

56:                                               ; preds = %37
  %57 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %58 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32* @hi6220_peripheral_reset_ops, i32** %59, align 8
  %60 = load i32, i32* @PERIPH_MAX_INDEX, align 4
  %61 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %62 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.hi6220_reset_data*, %struct.hi6220_reset_data** %7, align 8
  %66 = getelementptr inbounds %struct.hi6220_reset_data, %struct.hi6220_reset_data* %65, i32 0, i32 0
  %67 = call i32 @reset_controller_register(%struct.TYPE_2__* %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %32, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.hi6220_reset_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
