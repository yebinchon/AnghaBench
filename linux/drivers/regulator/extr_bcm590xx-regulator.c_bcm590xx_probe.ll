; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bcm590xx-regulator.c_bcm590xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm590xx_info = type { i8*, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bcm590xx = type { i32, i32, i32 }
%struct.bcm590xx_reg = type { %struct.TYPE_7__*, %struct.bcm590xx* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.regulator_config = type { i32, %struct.bcm590xx_reg*, i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM590XX_NUM_REGS = common dso_local global i32 0, align 4
@bcm590xx_regs = common dso_local global %struct.bcm590xx_info* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@bcm590xx_ops_ldo = common dso_local global i32 0, align 4
@BCM590XX_LDO_VSEL_MASK = common dso_local global i32 0, align 4
@bcm590xx_ops_vbus = common dso_local global i32 0, align 4
@bcm590xx_ops_dcdc = common dso_local global i32 0, align 4
@BCM590XX_SR_VSEL_MASK = common dso_local global i32 0, align 4
@BCM590XX_VBUS_ENABLE = common dso_local global i32 0, align 4
@BCM590XX_REG_ENABLE = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm590xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm590xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm590xx*, align 8
  %5 = alloca %struct.bcm590xx_reg*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.bcm590xx_info*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bcm590xx* @dev_get_drvdata(i32 %13)
  store %struct.bcm590xx* %14, %struct.bcm590xx** %4, align 8
  %15 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bcm590xx_reg* @devm_kzalloc(%struct.TYPE_6__* %17, i32 16, i32 %18)
  store %struct.bcm590xx_reg* %19, %struct.bcm590xx_reg** %5, align 8
  %20 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %21 = icmp ne %struct.bcm590xx_reg* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %309

25:                                               ; preds = %1
  %26 = load %struct.bcm590xx*, %struct.bcm590xx** %4, align 8
  %27 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %28 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %27, i32 0, i32 1
  store %struct.bcm590xx* %26, %struct.bcm590xx** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.bcm590xx_reg* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load i32, i32* @BCM590XX_NUM_REGS, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_7__* @devm_kcalloc(%struct.TYPE_6__* %33, i32 %34, i32 4, i32 %35)
  %37 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %38 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %37, i32 0, i32 0
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %40 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %309

46:                                               ; preds = %25
  %47 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** @bcm590xx_regs, align 8
  store %struct.bcm590xx_info* %47, %struct.bcm590xx_info** %7, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %303, %46
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @BCM590XX_NUM_REGS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %308

52:                                               ; preds = %48
  %53 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %54 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %57 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i8* %55, i8** %62, align 8
  %63 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %64 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @of_match_ptr(i8* %65)
  %67 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %68 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 16
  store i8* %66, i8** %73, align 8
  %74 = call i8* @of_match_ptr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %76 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 15
  store i8* %74, i8** %81, align 8
  %82 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %83 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %86 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 14
  store i32 %84, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %94 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %92, i32* %99, align 8
  %100 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %101 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %104 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 13
  store i32 %102, i32* %109, align 4
  %110 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %111 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %114 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 12
  store i32 %112, i32* %119, align 8
  %120 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %121 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %124 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 11
  store i32 %122, i32* %129, align 4
  %130 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %131 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %134 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 10
  store i32 %132, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i64 @BCM590XX_REG_IS_LDO(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %52
  %144 = load i32, i32* %9, align 4
  %145 = call i64 @BCM590XX_REG_IS_GPLDO(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %143, %52
  %148 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %149 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 9
  store i32* @bcm590xx_ops_ldo, i32** %154, align 8
  %155 = load i32, i32* @BCM590XX_LDO_VSEL_MASK, align 4
  %156 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %157 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 8
  store i32 %155, i32* %162, align 4
  br label %192

163:                                              ; preds = %143
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @BCM590XX_REG_IS_VBUS(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %169 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 9
  store i32* @bcm590xx_ops_vbus, i32** %174, align 8
  br label %191

175:                                              ; preds = %163
  %176 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %177 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 9
  store i32* @bcm590xx_ops_dcdc, i32** %182, align 8
  %183 = load i32, i32* @BCM590XX_SR_VSEL_MASK, align 4
  %184 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %185 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 8
  store i32 %183, i32* %190, align 4
  br label %191

191:                                              ; preds = %175, %167
  br label %192

192:                                              ; preds = %191, %147
  %193 = load i32, i32* %9, align 4
  %194 = call i64 @BCM590XX_REG_IS_VBUS(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* @BCM590XX_VBUS_ENABLE, align 4
  %198 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %199 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 6
  store i32 %197, i32* %204, align 4
  br label %230

205:                                              ; preds = %192
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @bcm590xx_get_vsel_register(i32 %206)
  %208 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %209 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %208, i32 0, i32 0
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 7
  store i32 %207, i32* %214, align 8
  %215 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %216 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %215, i32 0, i32 0
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  store i32 1, i32* %221, align 4
  %222 = load i32, i32* @BCM590XX_REG_ENABLE, align 4
  %223 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %224 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 6
  store i32 %222, i32* %229, align 4
  br label %230

230:                                              ; preds = %205, %196
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @bcm590xx_get_enable_register(i32 %231)
  %233 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %234 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 5
  store i32 %232, i32* %239, align 8
  %240 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %241 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %242 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %241, i32 0, i32 0
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 4
  store i32 %240, i32* %247, align 4
  %248 = load i32, i32* @THIS_MODULE, align 4
  %249 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %250 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %249, i32 0, i32 0
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  store i32 %248, i32* %255, align 8
  %256 = load %struct.bcm590xx*, %struct.bcm590xx** %4, align 8
  %257 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %258, i32* %259, align 8
  %260 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %261 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.bcm590xx_reg* %260, %struct.bcm590xx_reg** %261, align 8
  %262 = load i32, i32* %9, align 4
  %263 = call i64 @BCM590XX_REG_IS_GPLDO(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %230
  %266 = load i32, i32* %9, align 4
  %267 = call i64 @BCM590XX_REG_IS_VBUS(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265, %230
  %270 = load %struct.bcm590xx*, %struct.bcm590xx** %4, align 8
  %271 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %272, i32* %273, align 8
  br label %279

274:                                              ; preds = %265
  %275 = load %struct.bcm590xx*, %struct.bcm590xx** %4, align 8
  %276 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %277, i32* %278, align 8
  br label %279

279:                                              ; preds = %274, %269
  %280 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %281 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %280, i32 0, i32 1
  %282 = load %struct.bcm590xx_reg*, %struct.bcm590xx_reg** %5, align 8
  %283 = getelementptr inbounds %struct.bcm590xx_reg, %struct.bcm590xx_reg* %282, i32 0, i32 0
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %281, %struct.TYPE_7__* %287, %struct.regulator_config* %6)
  store %struct.regulator_dev* %288, %struct.regulator_dev** %8, align 8
  %289 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %290 = call i64 @IS_ERR(%struct.regulator_dev* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %279
  %293 = load %struct.bcm590xx*, %struct.bcm590xx** %4, align 8
  %294 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @dev_err(i32 %295, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %298)
  %300 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %301 = call i32 @PTR_ERR(%struct.regulator_dev* %300)
  store i32 %301, i32* %2, align 4
  br label %309

302:                                              ; preds = %279
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %9, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %9, align 4
  %306 = load %struct.bcm590xx_info*, %struct.bcm590xx_info** %7, align 8
  %307 = getelementptr inbounds %struct.bcm590xx_info, %struct.bcm590xx_info* %306, i32 1
  store %struct.bcm590xx_info* %307, %struct.bcm590xx_info** %7, align 8
  br label %48

308:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %308, %292, %43, %22
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local %struct.bcm590xx* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.bcm590xx_reg* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm590xx_reg*) #1

declare dso_local %struct.TYPE_7__* @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i8* @of_match_ptr(i8*) #1

declare dso_local i64 @BCM590XX_REG_IS_LDO(i32) #1

declare dso_local i64 @BCM590XX_REG_IS_GPLDO(i32) #1

declare dso_local i64 @BCM590XX_REG_IS_VBUS(i32) #1

declare dso_local i32 @bcm590xx_get_vsel_register(i32) #1

declare dso_local i32 @bcm590xx_get_enable_register(i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
