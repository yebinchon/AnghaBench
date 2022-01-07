; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.pm860x_power_pdata*, i32 }
%struct.pm860x_power_pdata = type { i32, i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32 }
%struct.pm860x_battery_info = type { i64, i64, i32, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_10__*, i32, %struct.pm860x_chip* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No IRQ resource!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@pm860x_battery_desc = common dso_local global i32 0, align 4
@pm860x_coulomb_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"coulomb\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@pm860x_batt_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.pm860x_battery_info*, align 8
  %6 = alloca %struct.pm860x_power_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %11)
  store %struct.pm860x_chip* %12, %struct.pm860x_chip** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pm860x_battery_info* @devm_kzalloc(%struct.TYPE_10__* %14, i32 64, i32 %15)
  store %struct.pm860x_battery_info* %16, %struct.pm860x_battery_info** %5, align 8
  %17 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %18 = icmp ne %struct.pm860x_battery_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %201

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i8* @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %27 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %29 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %201

38:                                               ; preds = %22
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i8* @platform_get_irq(%struct.platform_device* %39, i32 1)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %43 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %45 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %201

54:                                               ; preds = %38
  %55 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %56 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %57 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %56, i32 0, i32 9
  store %struct.pm860x_chip* %55, %struct.pm860x_chip** %57, align 8
  %58 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_PM8607, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %65 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  br label %71

67:                                               ; preds = %54
  %68 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %69 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  %73 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %74 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %78 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %77, i32 0, i32 7
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %78, align 8
  %79 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %80 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %81 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %84, align 8
  store %struct.pm860x_power_pdata* %85, %struct.pm860x_power_pdata** %6, align 8
  %86 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %87 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %86, i32 0, i32 5
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %91 = call i32 @platform_set_drvdata(%struct.platform_device* %89, %struct.pm860x_battery_info* %90)
  %92 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %93 = call i32 @pm860x_init_battery(%struct.pm860x_battery_info* %92)
  %94 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %95 = icmp ne %struct.pm860x_power_pdata* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %71
  %97 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %98 = getelementptr inbounds %struct.pm860x_power_pdata, %struct.pm860x_power_pdata* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %103 = getelementptr inbounds %struct.pm860x_power_pdata, %struct.pm860x_power_pdata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %106 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %110

107:                                              ; preds = %96, %71
  %108 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %109 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %108, i32 0, i32 2
  store i32 1500, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %112 = icmp ne %struct.pm860x_power_pdata* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %115 = getelementptr inbounds %struct.pm860x_power_pdata, %struct.pm860x_power_pdata* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.pm860x_power_pdata*, %struct.pm860x_power_pdata** %6, align 8
  %120 = getelementptr inbounds %struct.pm860x_power_pdata, %struct.pm860x_power_pdata* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %123 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %127

124:                                              ; preds = %113, %110
  %125 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %126 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %125, i32 0, i32 3
  store i32 300, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call %struct.TYPE_9__* @devm_power_supply_register(%struct.TYPE_10__* %129, i32* @pm860x_battery_desc, i32* null)
  %131 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %132 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %131, i32 0, i32 4
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %132, align 8
  %133 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %134 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %133, i32 0, i32 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i64 @IS_ERR(%struct.TYPE_9__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %140 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %139, i32 0, i32 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = call i32 @PTR_ERR(%struct.TYPE_9__* %141)
  store i32 %142, i32* %2, align 4
  br label %201

143:                                              ; preds = %127
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %147 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %146, i32 0, i32 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %150, align 8
  %151 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %152 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %155 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @pm860x_coulomb_handler, align 4
  %158 = load i32, i32* @IRQF_ONESHOT, align 4
  %159 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %160 = call i32 @devm_request_threaded_irq(i32 %153, i64 %156, i32* null, i32 %157, i32 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.pm860x_battery_info* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %143
  %164 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %165 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_10__*
  %169 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %170 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %171, i32 %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %2, align 4
  br label %201

175:                                              ; preds = %143
  %176 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %177 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %180 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @pm860x_batt_handler, align 4
  %183 = load i32, i32* @IRQF_ONESHOT, align 4
  %184 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %185 = call i32 @devm_request_threaded_irq(i32 %178, i64 %181, i32* null, i32 %182, i32 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.pm860x_battery_info* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %175
  %189 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %190 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to %struct.TYPE_10__*
  %194 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %195 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %196, i32 %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %188, %163, %138, %48, %32, %19
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.pm860x_battery_info* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm860x_battery_info*) #1

declare dso_local i32 @pm860x_init_battery(%struct.pm860x_battery_info*) #1

declare dso_local %struct.TYPE_9__* @devm_power_supply_register(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i64, i32*, i32, i32, i8*, %struct.pm860x_battery_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
