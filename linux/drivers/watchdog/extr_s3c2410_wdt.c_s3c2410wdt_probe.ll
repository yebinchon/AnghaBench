; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_s3c2410_wdt.c_s3c2410wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.device*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { i32, %struct.device }
%struct.s3c2410_wdt = type { i64, %struct.TYPE_13__, i64, i64, %struct.TYPE_12__*, i32, %struct.device* }
%struct.TYPE_12__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s3c2410_wdd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@QUIRKS_HAVE_PMUREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"no irq resource specified\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to find watchdog clock source\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register cpufreq\0A\00", align 1
@tmr_margin = common dso_local global i32 0, align 4
@S3C2410_WATCHDOG_DEFAULT_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"tmr_margin value out of range, default %d used\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"default timer value is out of range, cannot start\0A\00", align 1
@s3c2410wdt_irq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@nowayout = common dso_local global i32 0, align 4
@tmr_atboot = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"starting watchdog timer\0A\00", align 1
@S3C2410_WTCON = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"watchdog %sactive, reset %sabled, irq %sabled\0A\00", align 1
@S3C2410_WTCON_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@S3C2410_WTCON_RSTEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@S3C2410_WTCON_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c2410wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s3c2410_wdt*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.s3c2410_wdt* @devm_kzalloc(%struct.device* %12, i32 80, i32 %13)
  store %struct.s3c2410_wdt* %14, %struct.s3c2410_wdt** %5, align 8
  %15 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %16 = icmp ne %struct.s3c2410_wdt* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %278

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %23 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %22, i32 0, i32 6
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %25 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %24, i32 0, i32 5
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %28 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %27, i32 0, i32 1
  %29 = bitcast %struct.TYPE_13__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_13__* @s3c2410_wdd to i8*), i64 32, i1 false)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call %struct.TYPE_12__* @s3c2410_get_wdt_drv_data(%struct.platform_device* %30)
  %32 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %33 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %32, i32 0, i32 4
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %33, align 8
  %34 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %35 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %34, i32 0, i32 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QUIRKS_HAVE_PMUREG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %20
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @syscon_regmap_lookup_by_phandle(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %48 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %50 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @IS_ERR(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %58 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @PTR_ERR(i64 %59)
  store i32 %60, i32* %2, align 4
  br label %278

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_IRQ, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %6, align 8
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = icmp eq %struct.resource* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %276

73:                                               ; preds = %62
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %74, i32 0)
  %76 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %77 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %79 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @IS_ERR(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %85 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @PTR_ERR(i64 %86)
  store i32 %87, i32* %9, align 4
  br label %276

88:                                               ; preds = %73
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i64 @devm_clk_get(%struct.device* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %92 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %94 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @IS_ERR(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %102 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @PTR_ERR(i64 %103)
  store i32 %104, i32* %9, align 4
  br label %276

105:                                              ; preds = %88
  %106 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %107 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @clk_prepare_enable(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %278

116:                                              ; preds = %105
  %117 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %118 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %121 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @s3c2410wdt_max_timeout(i64 %122)
  %124 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %125 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 8
  %127 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %128 = call i32 @s3c2410wdt_cpufreq_register(%struct.s3c2410_wdt* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %271

134:                                              ; preds = %116
  %135 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %136 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %135, i32 0, i32 1
  %137 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %138 = call i32 @watchdog_set_drvdata(%struct.TYPE_13__* %136, %struct.s3c2410_wdt* %137)
  %139 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %140 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %139, i32 0, i32 1
  %141 = load i32, i32* @tmr_margin, align 4
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i32 @watchdog_init_timeout(%struct.TYPE_13__* %140, i32 %141, %struct.device* %142)
  %144 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %145 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %144, i32 0, i32 1
  %146 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %147 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @s3c2410wdt_set_heartbeat(%struct.TYPE_13__* %145, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %134
  %154 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %155 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %154, i32 0, i32 1
  %156 = load i32, i32* @S3C2410_WATCHDOG_DEFAULT_TIME, align 4
  %157 = call i32 @s3c2410wdt_set_heartbeat(%struct.TYPE_13__* %155, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = load i32, i32* @S3C2410_WATCHDOG_DEFAULT_TIME, align 4
  %163 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  br label %167

164:                                              ; preds = %153
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %165, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %160
  br label %168

168:                                              ; preds = %167, %134
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = load %struct.resource*, %struct.resource** %6, align 8
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @s3c2410wdt_irq, align 4
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = call i32 @devm_request_irq(%struct.device* %169, i32 %172, i32 %173, i32 0, i32 %176, %struct.platform_device* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %168
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %183)
  br label %268

185:                                              ; preds = %168
  %186 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %187 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %186, i32 0, i32 1
  %188 = load i32, i32* @nowayout, align 4
  %189 = call i32 @watchdog_set_nowayout(%struct.TYPE_13__* %187, i32 %188)
  %190 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %191 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %190, i32 0, i32 1
  %192 = call i32 @watchdog_set_restart_priority(%struct.TYPE_13__* %191, i32 128)
  %193 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %194 = call i32 @s3c2410wdt_get_bootstatus(%struct.s3c2410_wdt* %193)
  %195 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %196 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  %198 = load %struct.device*, %struct.device** %4, align 8
  %199 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %200 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  store %struct.device* %198, %struct.device** %201, align 8
  %202 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %203 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %202, i32 0, i32 1
  %204 = call i32 @watchdog_register_device(%struct.TYPE_13__* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %185
  br label %268

208:                                              ; preds = %185
  %209 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %210 = call i32 @s3c2410wdt_mask_and_disable_reset(%struct.s3c2410_wdt* %209, i32 0)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %264

214:                                              ; preds = %208
  %215 = load i64, i64* @tmr_atboot, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load %struct.device*, %struct.device** %4, align 8
  %222 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %221, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %223 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %224 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %223, i32 0, i32 1
  %225 = call i32 @s3c2410wdt_start(%struct.TYPE_13__* %224)
  br label %234

226:                                              ; preds = %217, %214
  %227 = load i64, i64* @tmr_atboot, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %231 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %230, i32 0, i32 1
  %232 = call i32 @s3c2410wdt_stop(%struct.TYPE_13__* %231)
  br label %233

233:                                              ; preds = %229, %226
  br label %234

234:                                              ; preds = %233, %220
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %237 = call i32 @platform_set_drvdata(%struct.platform_device* %235, %struct.s3c2410_wdt* %236)
  %238 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %239 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @S3C2410_WTCON, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @readl(i64 %242)
  store i32 %243, i32* %7, align 4
  %244 = load %struct.device*, %struct.device** %4, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @S3C2410_WTCON_ENABLE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @S3C2410_WTCON_RSTEN, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @S3C2410_WTCON_INTEN, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %263 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %244, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %250, i8* %256, i8* %262)
  store i32 0, i32* %2, align 4
  br label %278

264:                                              ; preds = %213
  %265 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %266 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %265, i32 0, i32 1
  %267 = call i32 @watchdog_unregister_device(%struct.TYPE_13__* %266)
  br label %268

268:                                              ; preds = %264, %207, %181
  %269 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %270 = call i32 @s3c2410wdt_cpufreq_deregister(%struct.s3c2410_wdt* %269)
  br label %271

271:                                              ; preds = %268, %131
  %272 = load %struct.s3c2410_wdt*, %struct.s3c2410_wdt** %5, align 8
  %273 = getelementptr inbounds %struct.s3c2410_wdt, %struct.s3c2410_wdt* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @clk_disable_unprepare(i64 %274)
  br label %276

276:                                              ; preds = %271, %98, %83, %68
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %276, %234, %112, %54, %17
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.s3c2410_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @s3c2410_get_wdt_drv_data(%struct.platform_device*) #1

declare dso_local i64 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @s3c2410wdt_max_timeout(i64) #1

declare dso_local i32 @s3c2410wdt_cpufreq_register(%struct.s3c2410_wdt*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_13__*, %struct.s3c2410_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_13__*, i32, %struct.device*) #1

declare dso_local i32 @s3c2410wdt_set_heartbeat(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @s3c2410wdt_get_bootstatus(%struct.s3c2410_wdt*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @s3c2410wdt_mask_and_disable_reset(%struct.s3c2410_wdt*, i32) #1

declare dso_local i32 @s3c2410wdt_start(%struct.TYPE_13__*) #1

declare dso_local i32 @s3c2410wdt_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c2410_wdt*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @watchdog_unregister_device(%struct.TYPE_13__*) #1

declare dso_local i32 @s3c2410wdt_cpufreq_deregister(%struct.s3c2410_wdt*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
