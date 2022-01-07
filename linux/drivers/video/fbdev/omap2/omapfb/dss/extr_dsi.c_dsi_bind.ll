; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.dsi_data = type { i64, i32, i32, i32, %struct.TYPE_12__*, %struct.platform_device*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_13__, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.resource = type { i64, i64 }
%struct.of_device_id = type { %struct.dsi_module_id_data* }
%struct.dsi_module_id_data = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dsi_framedone_timeout_work_callback = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't get IORESOURCE_MEM DSI\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSI_PROTO_SZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"can't ioremap DSI protocol engine\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@DSI_PHY_OFFSET = common dso_local global i64 0, align 8
@DSI_PHY_SZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"can't ioremap DSI PHY\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@DSI_PLL_OFFSET = common dso_local global i64 0, align 8
@DSI_PLL_SZ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"can't ioremap DSI PLL\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@omap_dsi_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@dsi_of_match = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"unsupported DSI module\0A\00", align 1
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@DSI_REVISION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"OMAP DSI rev %d.%d\0A\00", align 1
@FEAT_DSI_GNQ = common dso_local global i32 0, align 4
@DSI_GNQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Invalid DSI DT data\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Failed to populate DSI child devices: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"dsi1_regs\00", align 1
@dsi1_dump_regs = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"dsi2_regs\00", align 1
@dsi2_dump_regs = common dso_local global i32 0, align 4
@dsi1_dump_irqs = common dso_local global i32 0, align 4
@dsi2_dump_irqs = common dso_local global i32 0, align 4
@dsi_te_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dsi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_data*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.resource*, align 8
  %15 = alloca %struct.resource, align 8
  %16 = alloca %struct.of_device_id*, align 8
  %17 = alloca %struct.dsi_module_id_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.platform_device* @to_platform_device(%struct.device* %18)
  store %struct.platform_device* %19, %struct.platform_device** %8, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.dsi_data* @devm_kzalloc(%struct.TYPE_14__* %21, i32 104, i32 %22)
  store %struct.dsi_data* %23, %struct.dsi_data** %12, align 8
  %24 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %25 = icmp ne %struct.dsi_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %433

29:                                               ; preds = %3
  %30 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %31 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 5
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %36 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %34, %struct.dsi_data* %35)
  %37 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %38 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %37, i32 0, i32 17
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %41 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %40, i32 0, i32 16
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %44 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %43, i32 0, i32 15
  store i64 0, i64* %44, align 8
  %45 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %46 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %45, i32 0, i32 12
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %49 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %48, i32 0, i32 11
  %50 = call i32 @sema_init(i32* %49, i32 1)
  %51 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %52 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %51, i32 0, i32 10
  %53 = load i32, i32* @dsi_framedone_timeout_work_callback, align 4
  %54 = call i32 @INIT_DEFERRABLE_WORK(i32* %52, i32 %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %56 = load i32, i32* @IORESOURCE_MEM, align 4
  %57 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %55, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %57, %struct.resource** %14, align 8
  %58 = load %struct.resource*, %struct.resource** %14, align 8
  %59 = icmp ne %struct.resource* %58, null
  br i1 %59, label %81, label %60

60:                                               ; preds = %29
  %61 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = call %struct.resource* @platform_get_resource(%struct.platform_device* %61, i32 %62, i32 0)
  store %struct.resource* %63, %struct.resource** %14, align 8
  %64 = load %struct.resource*, %struct.resource** %14, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %433

70:                                               ; preds = %60
  %71 = load %struct.resource*, %struct.resource** %14, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DSI_PROTO_SZ, align 8
  %78 = add nsw i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  store %struct.resource* %15, %struct.resource** %14, align 8
  br label %81

81:                                               ; preds = %70, %29
  %82 = load %struct.resource*, %struct.resource** %14, align 8
  store %struct.resource* %82, %struct.resource** %13, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = load %struct.resource*, %struct.resource** %14, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.resource*, %struct.resource** %14, align 8
  %89 = call i32 @resource_size(%struct.resource* %88)
  %90 = call i8* @devm_ioremap(%struct.TYPE_14__* %84, i64 %87, i32 %89)
  %91 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %92 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %91, i32 0, i32 8
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %94 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %93, i32 0, i32 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %81
  %98 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %433

101:                                              ; preds = %81
  %102 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %102, i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.resource* %104, %struct.resource** %14, align 8
  %105 = load %struct.resource*, %struct.resource** %14, align 8
  %106 = icmp ne %struct.resource* %105, null
  br i1 %106, label %130, label %107

107:                                              ; preds = %101
  %108 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %109 = load i32, i32* @IORESOURCE_MEM, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %108, i32 %109, i32 0)
  store %struct.resource* %110, %struct.resource** %14, align 8
  %111 = load %struct.resource*, %struct.resource** %14, align 8
  %112 = icmp ne %struct.resource* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %433

117:                                              ; preds = %107
  %118 = load %struct.resource*, %struct.resource** %14, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DSI_PHY_OFFSET, align 8
  %122 = add nsw i64 %120, %121
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DSI_PHY_SZ, align 8
  %127 = add nsw i64 %125, %126
  %128 = sub nsw i64 %127, 1
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  store i64 %128, i64* %129, align 8
  store %struct.resource* %15, %struct.resource** %14, align 8
  br label %130

130:                                              ; preds = %117, %101
  %131 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 1
  %133 = load %struct.resource*, %struct.resource** %14, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.resource*, %struct.resource** %14, align 8
  %137 = call i32 @resource_size(%struct.resource* %136)
  %138 = call i8* @devm_ioremap(%struct.TYPE_14__* %132, i64 %135, i32 %137)
  %139 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %140 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %142 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %141, i32 0, i32 7
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %130
  %146 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %433

149:                                              ; preds = %130
  %150 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %151 = load i32, i32* @IORESOURCE_MEM, align 4
  %152 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %150, i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %152, %struct.resource** %14, align 8
  %153 = load %struct.resource*, %struct.resource** %14, align 8
  %154 = icmp ne %struct.resource* %153, null
  br i1 %154, label %178, label %155

155:                                              ; preds = %149
  %156 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %157 = load i32, i32* @IORESOURCE_MEM, align 4
  %158 = call %struct.resource* @platform_get_resource(%struct.platform_device* %156, i32 %157, i32 0)
  store %struct.resource* %158, %struct.resource** %14, align 8
  %159 = load %struct.resource*, %struct.resource** %14, align 8
  %160 = icmp ne %struct.resource* %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %433

165:                                              ; preds = %155
  %166 = load %struct.resource*, %struct.resource** %14, align 8
  %167 = getelementptr inbounds %struct.resource, %struct.resource* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DSI_PLL_OFFSET, align 8
  %170 = add nsw i64 %168, %169
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @DSI_PLL_SZ, align 8
  %175 = add nsw i64 %173, %174
  %176 = sub nsw i64 %175, 1
  %177 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  store i64 %176, i64* %177, align 8
  store %struct.resource* %15, %struct.resource** %14, align 8
  br label %178

178:                                              ; preds = %165, %149
  %179 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = load %struct.resource*, %struct.resource** %14, align 8
  %182 = getelementptr inbounds %struct.resource, %struct.resource* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.resource*, %struct.resource** %14, align 8
  %185 = call i32 @resource_size(%struct.resource* %184)
  %186 = call i8* @devm_ioremap(%struct.TYPE_14__* %180, i64 %183, i32 %185)
  %187 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %188 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  %189 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %190 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %189, i32 0, i32 6
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %178
  %194 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %195 = load i32, i32* @ENOMEM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %4, align 4
  br label %433

197:                                              ; preds = %178
  %198 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %199 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %198, i32 0, i32 5
  %200 = load %struct.platform_device*, %struct.platform_device** %199, align 8
  %201 = call i64 @platform_get_irq(%struct.platform_device* %200, i32 0)
  %202 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %203 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %205 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %197
  %209 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  br label %433

212:                                              ; preds = %197
  %213 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 1
  %215 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %216 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @omap_dsi_irq_handler, align 4
  %219 = load i32, i32* @IRQF_SHARED, align 4
  %220 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 1
  %222 = call i32 @dev_name(%struct.TYPE_14__* %221)
  %223 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %224 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %223, i32 0, i32 5
  %225 = load %struct.platform_device*, %struct.platform_device** %224, align 8
  %226 = call i32 @devm_request_irq(%struct.TYPE_14__* %214, i64 %217, i32 %218, i32 %219, i32 %222, %struct.platform_device* %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %212
  %230 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %4, align 4
  br label %433

232:                                              ; preds = %212
  %233 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %288

238:                                              ; preds = %232
  %239 = load i32, i32* @dsi_of_match, align 4
  %240 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call %struct.of_device_id* @of_match_node(i32 %239, i64 %243)
  store %struct.of_device_id* %244, %struct.of_device_id** %16, align 8
  %245 = load %struct.of_device_id*, %struct.of_device_id** %16, align 8
  %246 = icmp ne %struct.of_device_id* %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %238
  %248 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %249 = load i32, i32* @ENODEV, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %4, align 4
  br label %433

251:                                              ; preds = %238
  %252 = load %struct.of_device_id*, %struct.of_device_id** %16, align 8
  %253 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %252, i32 0, i32 0
  %254 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %253, align 8
  store %struct.dsi_module_id_data* %254, %struct.dsi_module_id_data** %17, align 8
  br label %255

255:                                              ; preds = %270, %251
  %256 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %17, align 8
  %257 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %255
  %261 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %17, align 8
  %262 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.resource*, %struct.resource** %13, align 8
  %265 = getelementptr inbounds %struct.resource, %struct.resource* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %263, %266
  br label %268

268:                                              ; preds = %260, %255
  %269 = phi i1 [ false, %255 ], [ %267, %260 ]
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %17, align 8
  %272 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %271, i32 1
  store %struct.dsi_module_id_data* %272, %struct.dsi_module_id_data** %17, align 8
  br label %255

273:                                              ; preds = %268
  %274 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %17, align 8
  %275 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %280 = load i32, i32* @ENODEV, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %4, align 4
  br label %433

282:                                              ; preds = %273
  %283 = load %struct.dsi_module_id_data*, %struct.dsi_module_id_data** %17, align 8
  %284 = getelementptr inbounds %struct.dsi_module_id_data, %struct.dsi_module_id_data* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %287 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 8
  br label %294

288:                                              ; preds = %232
  %289 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %293 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %288, %282
  store i32 0, i32* %11, align 4
  br label %295

295:                                              ; preds = %325, %294
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %298 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %297, i32 0, i32 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %299)
  %301 = icmp slt i32 %296, %300
  br i1 %301, label %302, label %328

302:                                              ; preds = %295
  %303 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %304 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %305 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %304, i32 0, i32 4
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 2
  store i32 %303, i32* %310, align 8
  %311 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %312 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %311, i32 0, i32 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 1
  store i32* null, i32** %317, align 8
  %318 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %319 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %318, i32 0, i32 4
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  br label %325

325:                                              ; preds = %302
  %326 = load i32, i32* %11, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %11, align 4
  br label %295

328:                                              ; preds = %295
  %329 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %330 = call i32 @dsi_get_clocks(%struct.platform_device* %329)
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i32, i32* %10, align 4
  store i32 %334, i32* %4, align 4
  br label %433

335:                                              ; preds = %328
  %336 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %337 = call i32 @dsi_init_pll_data(%struct.platform_device* %336)
  %338 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %339 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %338, i32 0, i32 1
  %340 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %339)
  %341 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %342 = call i32 @dsi_runtime_get(%struct.platform_device* %341)
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %10, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  br label %428

346:                                              ; preds = %335
  %347 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %348 = load i32, i32* @DSI_REVISION, align 4
  %349 = call i32 @dsi_read_reg(%struct.platform_device* %347, i32 %348)
  store i32 %349, i32* %9, align 4
  %350 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %351 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %350, i32 0, i32 1
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @FLD_GET(i32 %352, i32 7, i32 4)
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @FLD_GET(i32 %354, i32 3, i32 0)
  %356 = call i32 @dev_dbg(%struct.TYPE_14__* %351, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %353, i32 %355)
  %357 = load i32, i32* @FEAT_DSI_GNQ, align 4
  %358 = call i64 @dss_has_feature(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %346
  %361 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %362 = load i32, i32* @DSI_GNQ, align 4
  %363 = call i32 @REG_GET(%struct.platform_device* %361, i32 %362, i32 11, i32 9)
  %364 = add nsw i32 1, %363
  %365 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %366 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %365, i32 0, i32 2
  store i32 %364, i32* %366, align 4
  br label %370

367:                                              ; preds = %346
  %368 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %369 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %368, i32 0, i32 2
  store i32 3, i32* %369, align 4
  br label %370

370:                                              ; preds = %367, %360
  %371 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %372 = call i32 @dsi_get_line_buf_size(%struct.platform_device* %371)
  %373 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %374 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 8
  %375 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %376 = call i32 @dsi_init_output(%struct.platform_device* %375)
  %377 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %378 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %403

382:                                              ; preds = %370
  %383 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %384 = call i32 @dsi_probe_of(%struct.platform_device* %383)
  store i32 %384, i32* %10, align 4
  %385 = load i32, i32* %10, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %423

389:                                              ; preds = %382
  %390 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %391 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %395 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %394, i32 0, i32 1
  %396 = call i32 @of_platform_populate(i64 %393, i32* null, i32* null, %struct.TYPE_14__* %395)
  store i32 %396, i32* %10, align 4
  %397 = load i32, i32* %10, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %389
  %400 = load i32, i32* %10, align 4
  %401 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %400)
  br label %402

402:                                              ; preds = %399, %389
  br label %403

403:                                              ; preds = %402, %370
  %404 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %405 = call i32 @dsi_runtime_put(%struct.platform_device* %404)
  %406 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %407 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = load i32, i32* @dsi1_dump_regs, align 4
  %412 = call i32 @dss_debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %411)
  br label %422

413:                                              ; preds = %403
  %414 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %415 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load i32, i32* @dsi2_dump_regs, align 4
  %420 = call i32 @dss_debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %418, %413
  br label %422

422:                                              ; preds = %421, %410
  store i32 0, i32* %4, align 4
  br label %433

423:                                              ; preds = %387
  %424 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %425 = call i32 @dsi_uninit_output(%struct.platform_device* %424)
  %426 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %427 = call i32 @dsi_runtime_put(%struct.platform_device* %426)
  br label %428

428:                                              ; preds = %423, %345
  %429 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %430 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %429, i32 0, i32 1
  %431 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %430)
  %432 = load i32, i32* %10, align 4
  store i32 %432, i32* %4, align 4
  br label %433

433:                                              ; preds = %428, %422, %333, %278, %247, %229, %208, %193, %161, %145, %113, %97, %66, %26
  %434 = load i32, i32* %4, align 4
  ret i32 %434
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dsi_data* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.dsi_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i64, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @dsi_get_clocks(%struct.platform_device*) #1

declare dso_local i32 @dsi_init_pll_data(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @dsi_runtime_get(%struct.platform_device*) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @dsi_get_line_buf_size(%struct.platform_device*) #1

declare dso_local i32 @dsi_init_output(%struct.platform_device*) #1

declare dso_local i32 @dsi_probe_of(%struct.platform_device*) #1

declare dso_local i32 @of_platform_populate(i64, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dsi_runtime_put(%struct.platform_device*) #1

declare dso_local i32 @dss_debugfs_create_file(i8*, i32) #1

declare dso_local i32 @dsi_uninit_output(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
