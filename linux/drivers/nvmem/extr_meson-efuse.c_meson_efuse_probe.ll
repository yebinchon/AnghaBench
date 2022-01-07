; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-efuse.c_meson_efuse_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-efuse.c_meson_efuse_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.nvmem_device = type { i32 }
%struct.nvmem_config = type { i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.clk = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get efuse gate\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to enable gate\00", align 1
@clk_disable_unprepare = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add disable callback\00", align 1
@SM_EFUSE_USER_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to get max user\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_efuse_read = common dso_local global i32 0, align 4
@meson_efuse_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_efuse_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_efuse_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvmem_device*, align 8
  %6 = alloca %struct.nvmem_config*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.clk* @devm_clk_get(%struct.device* %12, i32* null)
  store %struct.clk* %13, %struct.clk** %7, align 8
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = call i64 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.clk*, %struct.clk** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.clk* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.clk*, %struct.clk** %7, align 8
  %31 = call i32 @clk_prepare_enable(%struct.clk* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i64, i64* @clk_disable_unprepare, align 8
  %41 = inttoptr i64 %40 to void (i8*)*
  %42 = load %struct.clk*, %struct.clk** %7, align 8
  %43 = call i32 @devm_add_action_or_reset(%struct.device* %39, void (i8*)* %41, %struct.clk* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %95

50:                                               ; preds = %38
  %51 = load i32, i32* @SM_EFUSE_USER_MAX, align 4
  %52 = call i64 @meson_sm_call(i32 %51, i32* %8, i32 0, i32 0, i32 0, i32 0, i32 0)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.nvmem_config* @devm_kzalloc(%struct.device* %60, i32 32, i32 %61)
  store %struct.nvmem_config* %62, %struct.nvmem_config** %6, align 8
  %63 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %64 = icmp ne %struct.nvmem_config* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %95

68:                                               ; preds = %59
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %71 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %70, i32 0, i32 6
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_name(%struct.device* %72)
  %74 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %75 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %77 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %79 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load i32, i32* @meson_efuse_read, align 4
  %81 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %82 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @meson_efuse_write, align 4
  %84 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %85 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %88 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.nvmem_config*, %struct.nvmem_config** %6, align 8
  %92 = call %struct.nvmem_device* @devm_nvmem_register(%struct.device* %90, %struct.nvmem_config* %91)
  store %struct.nvmem_device* %92, %struct.nvmem_device** %5, align 8
  %93 = load %struct.nvmem_device*, %struct.nvmem_device** %5, align 8
  %94 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %68, %65, %54, %46, %34, %27
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, void (i8*)*, %struct.clk*) #1

declare dso_local i64 @meson_sm_call(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nvmem_config* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(%struct.device*, %struct.nvmem_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
