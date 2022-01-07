; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_sgi_w1.c_sgi_w1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sgi_w1_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.sgi_w1_device* }
%struct.sgi_w1_platform_data = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sgi_w1_reset_bus = common dso_local global i32 0, align 4
@sgi_w1_touch_bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sgi_w1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_w1_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sgi_w1_device*, align 8
  %5 = alloca %struct.sgi_w1_platform_data*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sgi_w1_device* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.sgi_w1_device* %10, %struct.sgi_w1_device** %4, align 8
  %11 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %12 = icmp ne %struct.sgi_w1_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %25 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %27 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %33 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %16
  %37 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %38 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %39 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store %struct.sgi_w1_device* %37, %struct.sgi_w1_device** %40, align 8
  %41 = load i32, i32* @sgi_w1_reset_bus, align 4
  %42 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %43 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @sgi_w1_touch_bit, align 4
  %46 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %47 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call %struct.sgi_w1_platform_data* @dev_get_platdata(i32* %50)
  store %struct.sgi_w1_platform_data* %51, %struct.sgi_w1_platform_data** %5, align 8
  %52 = load %struct.sgi_w1_platform_data*, %struct.sgi_w1_platform_data** %5, align 8
  %53 = icmp ne %struct.sgi_w1_platform_data* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %36
  %55 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %56 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sgi_w1_platform_data*, %struct.sgi_w1_platform_data** %5, align 8
  %59 = getelementptr inbounds %struct.sgi_w1_platform_data, %struct.sgi_w1_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strlcpy(i32 %57, i32 %60, i32 4)
  %62 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %63 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %66 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %54, %36
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.sgi_w1_device* %70)
  %72 = load %struct.sgi_w1_device*, %struct.sgi_w1_device** %4, align 8
  %73 = getelementptr inbounds %struct.sgi_w1_device, %struct.sgi_w1_device* %72, i32 0, i32 0
  %74 = call i32 @w1_add_master_device(%struct.TYPE_2__* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %31, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.sgi_w1_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.sgi_w1_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sgi_w1_device*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
