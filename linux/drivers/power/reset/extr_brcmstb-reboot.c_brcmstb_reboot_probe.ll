; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_brcmstb-reboot.c_brcmstb_reboot_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_brcmstb-reboot.c_brcmstb_reboot_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }

@of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to look up compatible string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@reset_masks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get syscon phandle\0A\00", align 1
@RESET_SOURCE_ENABLE_REG = common dso_local global i32 0, align 4
@rst_src_en = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"can't get rst_src_en offset (%d)\0A\00", align 1
@SW_MASTER_RESET_REG = common dso_local global i32 0, align 4
@sw_mstr_rst = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"can't get sw_mstr_rst offset (%d)\0A\00", align 1
@brcmstb_restart_nb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_reboot_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_reboot_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load i32, i32* @of_match, align 4
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call %struct.of_device_id* @of_match_node(i32 %11, %struct.device_node* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %6, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %66

20:                                               ; preds = %1
  %21 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @reset_masks, align 4
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* @regmap, align 4
  %26 = load i32, i32* @regmap, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %20
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = load i32, i32* @RESET_SOURCE_ENABLE_REG, align 4
  %36 = call i32 @of_property_read_u32_index(%struct.device_node* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32* @rst_src_en)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %66

44:                                               ; preds = %33
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = load i32, i32* @SW_MASTER_RESET_REG, align 4
  %47 = call i32 @of_property_read_u32_index(%struct.device_node* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32* @sw_mstr_rst)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %44
  %56 = call i32 @register_restart_handler(i32* @brcmstb_restart_nb)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %50, %39, %29, %16
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @register_restart_handler(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
