; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynq.c_zynq_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynq.c_zynq_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }
%struct.zynq_reset_data = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to get zynq-slcr regmap\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"missing IO resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@zynq_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.zynq_reset_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.zynq_reset_data* @devm_kzalloc(%struct.TYPE_5__* %7, i32 32, i32 %8)
  store %struct.zynq_reset_data* %9, %struct.zynq_reset_data** %5, align 8
  %10 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %11 = icmp ne %struct.zynq_reset_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %84

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.zynq_reset_data* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @syscon_regmap_lookup_by_phandle(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %25 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %27 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %15
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %36 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %84

39:                                               ; preds = %15
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %4, align 8
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %84

51:                                               ; preds = %39
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %56 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @THIS_MODULE, align 4
  %58 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %59 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = call i32 @resource_size(%struct.resource* %61)
  %63 = sdiv i32 %62, 4
  %64 = load i32, i32* @BITS_PER_LONG, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %67 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %70 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32* @zynq_reset_ops, i32** %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %77 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.zynq_reset_data*, %struct.zynq_reset_data** %5, align 8
  %82 = getelementptr inbounds %struct.zynq_reset_data, %struct.zynq_reset_data* %81, i32 0, i32 0
  %83 = call i32 @devm_reset_controller_register(%struct.TYPE_5__* %80, %struct.TYPE_6__* %82)
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %51, %45, %31, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.zynq_reset_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynq_reset_data*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
