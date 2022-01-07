; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ath79.c_ath79_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ath79.c_ath79_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ath79_reset = type { %struct.TYPE_7__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ath79_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ath79_reset_restart_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register restart handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath79_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath79_reset*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ath79_reset* @devm_kzalloc(%struct.TYPE_8__* %8, i32 40, i32 %9)
  store %struct.ath79_reset* %10, %struct.ath79_reset** %4, align 8
  %11 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %12 = icmp ne %struct.ath79_reset* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.ath79_reset* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %24, %struct.resource* %25)
  %27 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %28 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %30 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %36 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %90

39:                                               ; preds = %16
  %40 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %41 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %44 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  store i32* @ath79_reset_ops, i32** %45, align 8
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %48 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %55 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %58 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %61 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 32, i32* %62, align 4
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %66 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %65, i32 0, i32 1
  %67 = call i32 @devm_reset_controller_register(%struct.TYPE_8__* %64, %struct.TYPE_9__* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %39
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %90

72:                                               ; preds = %39
  %73 = load i32, i32* @ath79_reset_restart_handler, align 4
  %74 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %75 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %78 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 128, i32* %79, align 8
  %80 = load %struct.ath79_reset*, %struct.ath79_reset** %4, align 8
  %81 = getelementptr inbounds %struct.ath79_reset, %struct.ath79_reset* %80, i32 0, i32 0
  %82 = call i32 @register_restart_handler(%struct.TYPE_7__* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_warn(%struct.TYPE_8__* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %72
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %70, %34, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ath79_reset* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ath79_reset*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
