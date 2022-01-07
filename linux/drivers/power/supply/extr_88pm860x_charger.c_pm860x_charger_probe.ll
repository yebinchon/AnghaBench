; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_pm860x_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_charger.c_pm860x_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pm860x_chip = type { i64, i32, i32, i32 }
%struct.power_supply_config = type { i64*, i32, %struct.pm860x_charger_info* }
%struct.pm860x_charger_info = type { i64*, i32, i32, i32, %struct.TYPE_5__*, i32, i32, %struct.pm860x_chip* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_PM8607 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Missed I2C address of 88PM8606!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VCHG_NORMAL_LOW = common dso_local global i32 0, align 4
@VCHG_OVP_LOW = common dso_local global i32 0, align 4
@pm860x_supplied_to = common dso_local global i64* null, align 8
@pm860x_charger_desc = common dso_local global i32 0, align 4
@pm860x_irq_descs = common dso_local global %struct.TYPE_6__* null, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm860x_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.pm860x_charger_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pm860x_chip* @dev_get_drvdata(i32 %14)
  store %struct.pm860x_chip* %15, %struct.pm860x_chip** %4, align 8
  %16 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.pm860x_charger_info* @devm_kzalloc(%struct.TYPE_5__* %18, i32 48, i32 %19)
  store %struct.pm860x_charger_info* %20, %struct.pm860x_charger_info** %6, align 8
  %21 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %22 = icmp ne %struct.pm860x_charger_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %224

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %56, %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @platform_get_irq(%struct.platform_device* %35, i32 %36)
  %38 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %39 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  %44 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %45 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %56

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %62 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %64 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %65 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %64, i32 0, i32 7
  store %struct.pm860x_chip* %63, %struct.pm860x_chip** %65, align 8
  %66 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %67 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_PM8607, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %73 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  br label %79

75:                                               ; preds = %59
  %76 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %77 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %74, %71 ], [ %78, %75 ]
  %81 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %82 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %84 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CHIP_PM8607, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %90 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  br label %96

92:                                               ; preds = %79
  %93 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %94 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  %98 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %99 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %101 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %96
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 1
  %107 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %222

110:                                              ; preds = %96
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 1
  %113 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %114 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %113, i32 0, i32 4
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %114, align 8
  %115 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %116 = load i32, i32* @VCHG_NORMAL_LOW, align 4
  %117 = load i32, i32* @VCHG_OVP_LOW, align 4
  %118 = call i32 @set_vchg_threshold(%struct.pm860x_charger_info* %115, i32 %116, i32 %117)
  %119 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %120 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %119, i32 0, i32 3
  %121 = call i32 @mutex_init(i32* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %124 = call i32 @platform_set_drvdata(%struct.platform_device* %122, %struct.pm860x_charger_info* %123)
  %125 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %126 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 2
  store %struct.pm860x_charger_info* %125, %struct.pm860x_charger_info** %126, align 8
  %127 = load i64*, i64** @pm860x_supplied_to, align 8
  %128 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store i64* %127, i64** %128, align 8
  %129 = load i64*, i64** @pm860x_supplied_to, align 8
  %130 = call i32 @ARRAY_SIZE(i64* %129)
  %131 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = call i32 @power_supply_register(%struct.TYPE_5__* %133, i32* @pm860x_charger_desc, %struct.power_supply_config* %5)
  %135 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %136 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %138 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %110
  %143 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %144 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @PTR_ERR(i32 %145)
  store i32 %146, i32* %7, align 4
  br label %222

147:                                              ; preds = %110
  %148 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %149 = call i32 @pm860x_init_charger(%struct.pm860x_charger_info* %148)
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %198, %147
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %153 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = call i32 @ARRAY_SIZE(i64* %154)
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %201

157:                                              ; preds = %150
  %158 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %159 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm860x_irq_descs, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IRQF_ONESHOT, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm860x_irq_descs, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %179 = call i32 @request_threaded_irq(i64 %164, i32* null, i32 %170, i32 %171, i32 %177, %struct.pm860x_charger_info* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %157
  %183 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %184 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to %struct.TYPE_5__*
  %188 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %189 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %194, i32 %195)
  br label %202

197:                                              ; preds = %157
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %150

201:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %224

202:                                              ; preds = %182
  %203 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %204 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @power_supply_unregister(i32 %205)
  br label %207

207:                                              ; preds = %211, %202
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %9, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %213 = getelementptr inbounds %struct.pm860x_charger_info, %struct.pm860x_charger_info* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.pm860x_charger_info*, %struct.pm860x_charger_info** %6, align 8
  %220 = call i32 @free_irq(i64 %218, %struct.pm860x_charger_info* %219)
  br label %207

221:                                              ; preds = %207
  br label %222

222:                                              ; preds = %221, %142, %104
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %222, %201, %23
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local %struct.pm860x_chip* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pm860x_charger_info* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @set_vchg_threshold(%struct.pm860x_charger_info*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm860x_charger_info*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm860x_init_charger(%struct.pm860x_charger_info*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i32, %struct.pm860x_charger_info*) #1

declare dso_local i32 @power_supply_unregister(i32) #1

declare dso_local i32 @free_irq(i64, %struct.pm860x_charger_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
