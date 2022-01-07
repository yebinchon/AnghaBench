; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.platform_device*, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@dispc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't get IORESOURCE_MEM DISPC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't ioremap DISPC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"syscon-pol\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to get syscon-pol regmap\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get syscon-pol offset\0A\00", align 1
@DISPC_REVISION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"OMAP DISPC rev %d.%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"dispc\00", align 1
@dispc_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dispc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %12, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %19, %struct.platform_device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 3), align 8
  %20 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 6))
  %21 = call i32 (...) @dispc_get_features()
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 5), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 5), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %119

27:                                               ; preds = %3
  %28 = load %struct.platform_device*, %struct.platform_device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 3), align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %11, align 8
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = icmp ne %struct.resource* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = call i32 @DSSERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %119

37:                                               ; preds = %27
  %38 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = call i32 @devm_ioremap(%struct.TYPE_7__* %39, i32 %42, i32 %44)
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 4), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 4), align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = call i32 @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %119

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 3), align 8
  %54 = call i64 @platform_get_irq(%struct.platform_device* %53, i32 0)
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 0), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 0), align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %119

61:                                               ; preds = %52
  %62 = load %struct.device_node*, %struct.device_node** %12, align 8
  %63 = icmp ne %struct.device_node* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load %struct.device_node*, %struct.device_node** %12, align 8
  %66 = call i64 @of_property_read_bool(%struct.device_node* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.device_node*, %struct.device_node** %12, align 8
  %70 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 2), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 2), align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_7__* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 2), align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %119

80:                                               ; preds = %68
  %81 = load %struct.device_node*, %struct.device_node** %12, align 8
  %82 = call i64 @of_property_read_u32_index(%struct.device_node* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dispc, i32 0, i32 1))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %119

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %64, %61
  %92 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @pm_runtime_enable(%struct.TYPE_7__* %93)
  %95 = call i32 (...) @dispc_runtime_get()
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %114

99:                                               ; preds = %91
  %100 = call i32 (...) @_omap_dispc_initial_config()
  %101 = load i32, i32* @DISPC_REVISION, align 4
  %102 = call i32 @dispc_read_reg(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @FLD_GET(i32 %105, i32 7, i32 4)
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @FLD_GET(i32 %107, i32 3, i32 0)
  %109 = call i32 @dev_dbg(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %108)
  %110 = call i32 (...) @dispc_runtime_put()
  %111 = call i32 (...) @dss_init_overlay_managers()
  %112 = load i32, i32* @dispc_dump_regs, align 4
  %113 = call i32 @dss_debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  store i32 0, i32* %4, align 4
  br label %119

114:                                              ; preds = %98
  %115 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @pm_runtime_disable(%struct.TYPE_7__* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %99, %84, %74, %57, %48, %33, %24
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dispc_get_features(...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @_omap_dispc_initial_config(...) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i32 @dss_init_overlay_managers(...) #1

declare dso_local i32 @dss_debugfs_create_file(i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
