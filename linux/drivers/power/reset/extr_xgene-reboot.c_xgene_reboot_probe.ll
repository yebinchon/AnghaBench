; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_xgene-reboot.c_xgene_reboot_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_xgene-reboot.c_xgene_reboot_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xgene_reboot_context = type { i32, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can not map resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@xgene_restart_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_reboot_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_reboot_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xgene_reboot_context*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.xgene_reboot_context* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.xgene_reboot_context* %11, %struct.xgene_reboot_context** %4, align 8
  %12 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %13 = icmp ne %struct.xgene_reboot_context* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @of_iomap(i32 %20, i32 0)
  %22 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %23 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %25 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %17
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %38 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %37, i32 0, i32 0
  %39 = call i64 @of_property_read_u32(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %43 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %47 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %46, i32 0, i32 3
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load i32, i32* @xgene_restart_handler, align 4
  %49 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %50 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %53 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 128, i32* %54, align 8
  %55 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %56 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %55, i32 0, i32 2
  %57 = call i32 @register_restart_handler(%struct.TYPE_2__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %44
  %61 = load %struct.xgene_reboot_context*, %struct.xgene_reboot_context** %4, align 8
  %62 = getelementptr inbounds %struct.xgene_reboot_context, %struct.xgene_reboot_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iounmap(i32 %63)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %60, %44
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %28, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.xgene_reboot_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_iomap(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_2__*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
