; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.aspeed_wdt_config = type { i64 }
%struct.of_device_id = type { %struct.aspeed_wdt_config* }
%struct.aspeed_wdt = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.device*, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aspeed_wdt_info = common dso_local global i32 0, align 4
@aspeed_wdt_ops = common dso_local global i32 0, align 4
@WDT_MAX_TIMEOUT_MS = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@aspeed_wdt_of_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WDT_CTRL_1MHZ_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"aspeed,reset-type\00", align 1
@WDT_CTRL_RESET_MODE_SOC = common dso_local global i32 0, align 4
@WDT_CTRL_RESET_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@WDT_CTRL_RESET_MODE_ARM_CPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@WDT_CTRL_RESET_MODE_FULL_CHIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"aspeed,external-signal\00", align 1
@WDT_CTRL_WDT_EXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"aspeed,alt-boot\00", align 1
@WDT_CTRL_BOOT_SECONDARY = common dso_local global i32 0, align 4
@WDT_CTRL = common dso_local global i64 0, align 8
@WDT_CTRL_ENABLE = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"aspeed,ast2500-wdt\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"aspeed,ast2600-wdt\00", align 1
@WDT_RESET_WIDTH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"aspeed,ext-push-pull\00", align 1
@WDT_PUSH_PULL_MAGIC = common dso_local global i64 0, align 8
@WDT_OPEN_DRAIN_MAGIC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"aspeed,ext-active-high\00", align 1
@WDT_ACTIVE_HIGH_MAGIC = common dso_local global i64 0, align 8
@WDT_ACTIVE_LOW_MAGIC = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"aspeed,ext-pulse-duration\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid pulse duration: %uus\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Pulse duration set to %uus\0A\00", align 1
@WDT_TIMEOUT_STATUS = common dso_local global i64 0, align 8
@WDT_TIMEOUT_STATUS_BOOT_SECONDARY = common dso_local global i64 0, align 8
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"aspeed,ast2400-wdt\00", align 1
@bswitch_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aspeed_wdt_config*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.aspeed_wdt*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.aspeed_wdt* @devm_kzalloc(%struct.device* %17, i32 64, i32 %18)
  store %struct.aspeed_wdt* %19, %struct.aspeed_wdt** %7, align 8
  %20 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %21 = icmp ne %struct.aspeed_wdt* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %316

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %26, i32 0)
  %28 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %29 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %31 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @IS_ERR(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %37 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @PTR_ERR(i64 %38)
  store i32 %39, i32* %2, align 4
  br label %316

40:                                               ; preds = %25
  %41 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %42 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  store i32* @aspeed_wdt_info, i32** %43, align 8
  %44 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %45 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  store i32* @aspeed_wdt_ops, i32** %46, align 8
  %47 = load i32, i32* @WDT_MAX_TIMEOUT_MS, align 4
  %48 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %49 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %53 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store %struct.device* %51, %struct.device** %54, align 8
  %55 = load i32, i32* @WDT_DEFAULT_TIMEOUT, align 4
  %56 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %57 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %60 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %59, i32 0, i32 1
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @watchdog_init_timeout(%struct.TYPE_4__* %60, i32 0, %struct.device* %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load %struct.device_node*, %struct.device_node** %64, align 8
  store %struct.device_node* %65, %struct.device_node** %8, align 8
  %66 = load i32, i32* @aspeed_wdt_of_table, align 4
  %67 = load %struct.device_node*, %struct.device_node** %8, align 8
  %68 = call %struct.of_device_id* @of_match_node(i32 %66, %struct.device_node* %67)
  store %struct.of_device_id* %68, %struct.of_device_id** %6, align 8
  %69 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %70 = icmp ne %struct.of_device_id* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %40
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %316

74:                                               ; preds = %40
  %75 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %76 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %75, i32 0, i32 0
  %77 = load %struct.aspeed_wdt_config*, %struct.aspeed_wdt_config** %76, align 8
  store %struct.aspeed_wdt_config* %77, %struct.aspeed_wdt_config** %5, align 8
  %78 = load i32, i32* @WDT_CTRL_1MHZ_CLK, align 4
  %79 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %80 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.device_node*, %struct.device_node** %8, align 8
  %82 = call i32 @of_property_read_string(%struct.device_node* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @WDT_CTRL_RESET_MODE_SOC, align 4
  %87 = load i32, i32* @WDT_CTRL_RESET_SYSTEM, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %90 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %140

93:                                               ; preds = %74
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @WDT_CTRL_RESET_MODE_ARM_CPU, align 4
  %99 = load i32, i32* @WDT_CTRL_RESET_SYSTEM, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %102 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %139

105:                                              ; preds = %93
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @WDT_CTRL_RESET_MODE_SOC, align 4
  %111 = load i32, i32* @WDT_CTRL_RESET_SYSTEM, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %114 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %138

117:                                              ; preds = %105
  %118 = load i8*, i8** %9, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @WDT_CTRL_RESET_MODE_FULL_CHIP, align 4
  %123 = load i32, i32* @WDT_CTRL_RESET_SYSTEM, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %126 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %137

129:                                              ; preds = %117
  %130 = load i8*, i8** %9, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %316

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %121
  br label %138

138:                                              ; preds = %137, %109
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %85
  %141 = load %struct.device_node*, %struct.device_node** %8, align 8
  %142 = call i64 @of_property_read_bool(%struct.device_node* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32, i32* @WDT_CTRL_WDT_EXT, align 4
  %146 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %147 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %140
  %151 = load %struct.device_node*, %struct.device_node** %8, align 8
  %152 = call i64 @of_property_read_bool(%struct.device_node* %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32, i32* @WDT_CTRL_BOOT_SECONDARY, align 4
  %156 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %157 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %150
  %161 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %162 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @WDT_CTRL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  %167 = load i32, i32* @WDT_CTRL_ENABLE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %160
  %171 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %172 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %171, i32 0, i32 1
  %173 = call i32 @aspeed_wdt_start(%struct.TYPE_4__* %172)
  %174 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %175 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %176 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = call i32 @set_bit(i32 %174, i32* %177)
  br label %179

179:                                              ; preds = %170, %160
  %180 = load %struct.device_node*, %struct.device_node** %8, align 8
  %181 = call i64 @of_device_is_compatible(%struct.device_node* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load %struct.device_node*, %struct.device_node** %8, align 8
  %185 = call i64 @of_device_is_compatible(%struct.device_node* %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %243

187:                                              ; preds = %183, %179
  %188 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %189 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @WDT_RESET_WIDTH, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @readl(i64 %192)
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %13, align 8
  %195 = load %struct.aspeed_wdt_config*, %struct.aspeed_wdt_config** %5, align 8
  %196 = getelementptr inbounds %struct.aspeed_wdt_config, %struct.aspeed_wdt_config* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %13, align 8
  %199 = and i64 %198, %197
  store i64 %199, i64* %13, align 8
  %200 = load %struct.device_node*, %struct.device_node** %8, align 8
  %201 = call i64 @of_property_read_bool(%struct.device_node* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %187
  %204 = load i64, i64* @WDT_PUSH_PULL_MAGIC, align 8
  %205 = load i64, i64* %13, align 8
  %206 = or i64 %205, %204
  store i64 %206, i64* %13, align 8
  br label %211

207:                                              ; preds = %187
  %208 = load i64, i64* @WDT_OPEN_DRAIN_MAGIC, align 8
  %209 = load i64, i64* %13, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %13, align 8
  br label %211

211:                                              ; preds = %207, %203
  %212 = load i64, i64* %13, align 8
  %213 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %214 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @WDT_RESET_WIDTH, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @writel(i64 %212, i64 %217)
  %219 = load %struct.aspeed_wdt_config*, %struct.aspeed_wdt_config** %5, align 8
  %220 = getelementptr inbounds %struct.aspeed_wdt_config, %struct.aspeed_wdt_config* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %13, align 8
  %223 = and i64 %222, %221
  store i64 %223, i64* %13, align 8
  %224 = load %struct.device_node*, %struct.device_node** %8, align 8
  %225 = call i64 @of_property_read_bool(%struct.device_node* %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %211
  %228 = load i64, i64* @WDT_ACTIVE_HIGH_MAGIC, align 8
  %229 = load i64, i64* %13, align 8
  %230 = or i64 %229, %228
  store i64 %230, i64* %13, align 8
  br label %235

231:                                              ; preds = %211
  %232 = load i64, i64* @WDT_ACTIVE_LOW_MAGIC, align 8
  %233 = load i64, i64* %13, align 8
  %234 = or i64 %233, %232
  store i64 %234, i64* %13, align 8
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i64, i64* %13, align 8
  %237 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %238 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @WDT_RESET_WIDTH, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @writel(i64 %236, i64 %241)
  br label %243

243:                                              ; preds = %235, %183
  %244 = load %struct.device_node*, %struct.device_node** %8, align 8
  %245 = call i32 @of_property_read_u32(%struct.device_node* %244, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i64* %10)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %278, label %247

247:                                              ; preds = %243
  %248 = load %struct.aspeed_wdt_config*, %struct.aspeed_wdt_config** %5, align 8
  %249 = getelementptr inbounds %struct.aspeed_wdt_config, %struct.aspeed_wdt_config* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %14, align 8
  %252 = load i64, i64* %10, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %247
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* %14, align 8
  %257 = icmp sgt i64 %255, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %254, %247
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = load i64, i64* %10, align 8
  %261 = call i32 @dev_err(%struct.device* %259, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %260)
  %262 = load i64, i64* %14, align 8
  %263 = load i64, i64* %10, align 8
  %264 = call i32 @min(i64 %262, i64 %263)
  %265 = call i64 @max(i32 1, i32 %264)
  store i64 %265, i64* %10, align 8
  %266 = load %struct.device*, %struct.device** %4, align 8
  %267 = load i64, i64* %10, align 8
  %268 = call i32 @dev_info(%struct.device* %266, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i64 %267)
  br label %269

269:                                              ; preds = %258, %254
  %270 = load i64, i64* %10, align 8
  %271 = sub nsw i64 %270, 1
  %272 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %273 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @WDT_RESET_WIDTH, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @writel(i64 %271, i64 %276)
  br label %278

278:                                              ; preds = %269, %243
  %279 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %280 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @WDT_TIMEOUT_STATUS, align 8
  %283 = add nsw i64 %281, %282
  %284 = call i32 @readl(i64 %283)
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %11, align 8
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* @WDT_TIMEOUT_STATUS_BOOT_SECONDARY, align 8
  %288 = and i64 %286, %287
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %278
  %291 = load i32, i32* @WDIOF_CARDRESET, align 4
  %292 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %293 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 4
  %295 = load %struct.device_node*, %struct.device_node** %8, align 8
  %296 = call i64 @of_device_is_compatible(%struct.device_node* %295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %290
  %299 = load %struct.device_node*, %struct.device_node** %8, align 8
  %300 = call i64 @of_device_is_compatible(%struct.device_node* %299, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %298, %290
  %303 = load i32, i32* @bswitch_groups, align 4
  %304 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %305 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 8
  br label %307

307:                                              ; preds = %302, %298
  br label %308

308:                                              ; preds = %307, %278
  %309 = load %struct.device*, %struct.device** %4, align 8
  %310 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %311 = call i32 @dev_set_drvdata(%struct.device* %309, %struct.aspeed_wdt* %310)
  %312 = load %struct.device*, %struct.device** %4, align 8
  %313 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %7, align 8
  %314 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %313, i32 0, i32 1
  %315 = call i32 @devm_watchdog_register_device(%struct.device* %312, %struct.TYPE_4__* %314)
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %308, %133, %71, %35, %22
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.aspeed_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_4__*, i32, %struct.device*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @aspeed_wdt_start(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aspeed_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
