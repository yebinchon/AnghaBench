; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-hsdk.c_hsdk_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-hsdk.c_hsdk_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hsdk_rst = type { %struct.TYPE_4__, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@hsdk_reset_ops = common dso_local global i32 0, align 4
@HSDK_MAX_RESETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hsdk_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hsdk_rst*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hsdk_rst* @devm_kzalloc(%struct.TYPE_5__* %7, i32 56, i32 %8)
  store %struct.hsdk_rst* %9, %struct.hsdk_rst** %4, align 8
  %10 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %11 = icmp ne %struct.hsdk_rst* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %20, %struct.resource* %21)
  %23 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %24 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %26 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %32 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 1)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %40, %struct.resource* %41)
  %43 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %44 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %46 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %52 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %83

55:                                               ; preds = %35
  %56 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %57 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %56, i32 0, i32 1
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %61 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %64 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32* @hsdk_reset_ops, i32** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %71 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @HSDK_MAX_RESETS, align 4
  %74 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %75 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %78 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.hsdk_rst*, %struct.hsdk_rst** %4, align 8
  %81 = getelementptr inbounds %struct.hsdk_rst, %struct.hsdk_rst* %80, i32 0, i32 0
  %82 = call i32 @reset_controller_register(%struct.TYPE_4__* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %55, %50, %30, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.hsdk_rst* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
