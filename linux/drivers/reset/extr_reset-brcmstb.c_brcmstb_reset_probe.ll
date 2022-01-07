; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-brcmstb.c_brcmstb_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-brcmstb.c_brcmstb_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.brcmstb_reset = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SW_INIT_BANK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"incorrect register range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@brcmstb_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.brcmstb_reset*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.brcmstb_reset* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.brcmstb_reset* %11, %struct.brcmstb_reset** %5, align 8
  %12 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %13 = icmp ne %struct.brcmstb_reset* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SW_INIT_BANK_SIZE, align 4
  %25 = call i32 @IS_ALIGNED(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call i32 @resource_size(%struct.resource* %28)
  %30 = load i32, i32* @SW_INIT_BANK_SIZE, align 4
  %31 = call i32 @IS_ALIGNED(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %43 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %45 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %51 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %38
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %57 = call i32 @dev_set_drvdata(%struct.device* %55, %struct.brcmstb_reset* %56)
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %60 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = call i32 @resource_size(%struct.resource* %62)
  %64 = load i32, i32* @SW_INIT_BANK_SIZE, align 4
  %65 = call i32 @DIV_ROUND_DOWN_ULL(i32 %63, i32 %64)
  %66 = mul nsw i32 %65, 32
  %67 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %68 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %71 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32* @brcmstb_reset_ops, i32** %72, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %77 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.brcmstb_reset*, %struct.brcmstb_reset** %5, align 8
  %81 = getelementptr inbounds %struct.brcmstb_reset, %struct.brcmstb_reset* %80, i32 0, i32 0
  %82 = call i32 @devm_reset_controller_register(%struct.device* %79, %struct.TYPE_2__* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %54, %49, %33, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.brcmstb_reset* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.brcmstb_reset*) #1

declare dso_local i32 @DIV_ROUND_DOWN_ULL(i32, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
