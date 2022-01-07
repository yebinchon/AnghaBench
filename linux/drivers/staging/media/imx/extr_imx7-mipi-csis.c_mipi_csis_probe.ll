; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.csi_state = type { i64, i32, %struct.TYPE_6__, i32, i64, i32, %struct.TYPE_5__, i32, %struct.device*, i32, %struct.platform_device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to parse device tree: %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to enable clocks: %d\0A\00", align 1
@mipi_csis_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Interrupt request failed\0A\00", align 1
@mipi_csis_subdev_ops = common dso_local global i32 0, align 4
@mipi_csis_events = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"lanes: %d, hs_settle: %d, wclk: %d, freq: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mipi_csis_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.csi_state*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.csi_state* @devm_kzalloc(%struct.device* %10, i32 80, i32 %11)
  store %struct.csi_state* %12, %struct.csi_state** %6, align 8
  %13 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %14 = icmp ne %struct.csi_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %182

18:                                               ; preds = %1
  %19 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %20 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %19, i32 0, i32 11
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %24 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %23, i32 0, i32 10
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %27 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %26, i32 0, i32 8
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %30 = call i32 @mipi_csis_parse_dt(%struct.platform_device* %28, %struct.csi_state* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %182

38:                                               ; preds = %18
  %39 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %40 = call i32 @mipi_csis_phy_init(%struct.csi_state* %39)
  %41 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %42 = call i32 @mipi_csis_phy_reset(%struct.csi_state* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %5, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.resource*, %struct.resource** %5, align 8
  %48 = call i32 @devm_ioremap_resource(%struct.device* %46, %struct.resource* %47)
  %49 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %50 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %52 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %58 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %182

61:                                               ; preds = %38
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i64 @platform_get_irq(%struct.platform_device* %62, i32 0)
  %64 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %65 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %67 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %72 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  br label %182

75:                                               ; preds = %61
  %76 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %77 = call i32 @mipi_csis_clk_get(%struct.csi_state* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %182

82:                                               ; preds = %75
  %83 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %84 = call i32 @mipi_csis_clk_enable(%struct.csi_state* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %89 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %88, i32 0, i32 8
  %90 = load %struct.device*, %struct.device** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %182

94:                                               ; preds = %82
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %97 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @mipi_csis_irq_handler, align 4
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_name(%struct.device* %101)
  %103 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %104 = call i32 @devm_request_irq(%struct.device* %95, i32 %99, i32 %100, i32 0, i32 %102, %struct.csi_state* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %94
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %175

110:                                              ; preds = %94
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %113 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %112, i32 0, i32 2
  %114 = call i32 @platform_set_drvdata(%struct.platform_device* %111, %struct.TYPE_6__* %113)
  %115 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %116 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %115, i32 0, i32 1
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %119 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %118, i32 0, i32 2
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @mipi_csis_subdev_init(%struct.TYPE_6__* %119, %struct.platform_device* %120, i32* @mipi_csis_subdev_ops)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %175

125:                                              ; preds = %110
  %126 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %127 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @mipi_csis_events, align 4
  %130 = call i32 @memcpy(i32 %128, i32 %129, i32 4)
  %131 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %132 = call i32 @mipi_csis_debugfs_init(%struct.csi_state* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @pm_runtime_enable(%struct.device* %133)
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @pm_runtime_enabled(%struct.device* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %125
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @mipi_csis_pm_resume(%struct.device* %139, i32 1)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %165

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %125
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %149 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %153 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %156 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %162 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dev_info(%struct.device* %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %154, i32 %160, i32 %163)
  store i32 0, i32* %2, align 4
  br label %182

165:                                              ; preds = %143
  %166 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %167 = call i32 @mipi_csis_debugfs_exit(%struct.csi_state* %166)
  %168 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %169 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = call i32 @media_entity_cleanup(i32* %170)
  %172 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %173 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %172, i32 0, i32 2
  %174 = call i32 @v4l2_async_unregister_subdev(%struct.TYPE_6__* %173)
  br label %175

175:                                              ; preds = %165, %124, %107
  %176 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %177 = call i32 @mipi_csis_clk_disable(%struct.csi_state* %176)
  %178 = load %struct.csi_state*, %struct.csi_state** %6, align 8
  %179 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %178, i32 0, i32 1
  %180 = call i32 @mutex_destroy(i32* %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %175, %145, %87, %80, %70, %56, %33, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.csi_state* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mipi_csis_parse_dt(%struct.platform_device*, %struct.csi_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mipi_csis_phy_init(%struct.csi_state*) #1

declare dso_local i32 @mipi_csis_phy_reset(%struct.csi_state*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mipi_csis_clk_get(%struct.csi_state*) #1

declare dso_local i32 @mipi_csis_clk_enable(%struct.csi_state*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.csi_state*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mipi_csis_subdev_init(%struct.TYPE_6__*, %struct.platform_device*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mipi_csis_debugfs_init(%struct.csi_state*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @mipi_csis_pm_resume(%struct.device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mipi_csis_debugfs_exit(%struct.csi_state*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @mipi_csis_clk_disable(%struct.csi_state*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
