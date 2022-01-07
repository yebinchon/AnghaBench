; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.samsung_pinctrl_drv_data = type { i32, i32, i32, i32, %struct.samsung_pin_bank*, %struct.pinctrl_desc }
%struct.samsung_pin_bank = type { i32, i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pinctrl_desc = type { i8*, i32, %struct.pinctrl_pin_desc*, i32*, i32*, i32*, i32 }
%struct.pinctrl_pin_desc = type { i32, i8* }

@.str = private unnamed_addr constant [16 x i8] c"samsung-pinctrl\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@samsung_pctrl_ops = common dso_local global i32 0, align 4
@samsung_pinmux_ops = common dso_local global i32 0, align 4
@samsung_pinconf_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.samsung_pinctrl_drv_data*)* @samsung_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_pinctrl_register(%struct.platform_device* %0, %struct.samsung_pinctrl_drv_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.pinctrl_pin_desc*, align 8
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca %struct.samsung_pin_bank*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.samsung_pinctrl_drv_data* %1, %struct.samsung_pinctrl_drv_data** %5, align 8
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %15 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %14, i32 0, i32 5
  store %struct.pinctrl_desc* %15, %struct.pinctrl_desc** %6, align 8
  %16 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %17 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %20 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %22 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %21, i32 0, i32 5
  store i32* @samsung_pctrl_ops, i32** %22, align 8
  %23 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %24 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %23, i32 0, i32 4
  store i32* @samsung_pinmux_ops, i32** %24, align 8
  %25 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %26 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %25, i32 0, i32 3
  store i32* @samsung_pinconf_ops, i32** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %30 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %28, i32 %31, i32 16, i32 %32)
  store %struct.pinctrl_pin_desc* %33, %struct.pinctrl_pin_desc** %7, align 8
  %34 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %35 = icmp ne %struct.pinctrl_pin_desc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %225

39:                                               ; preds = %2
  %40 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %41 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %42 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %41, i32 0, i32 2
  store %struct.pinctrl_pin_desc* %40, %struct.pinctrl_pin_desc** %42, align 8
  %43 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %44 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %47 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %11, align 4
  %48 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  store %struct.pinctrl_pin_desc* %48, %struct.pinctrl_pin_desc** %8, align 8
  br label %49

49:                                               ; preds = %63, %39
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %52 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %58 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %62 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %67 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %66, i32 1
  store %struct.pinctrl_pin_desc* %67, %struct.pinctrl_pin_desc** %8, align 8
  br label %49

68:                                               ; preds = %49
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* @PIN_NAME_LENGTH, align 4
  %72 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %73 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @array3_size(i32 1, i32 %71, i32 %74)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @devm_kzalloc(i32* %70, i32 %75, i32 %76)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %225

83:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %130, %83
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %87 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %84
  %91 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %92 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %91, i32 0, i32 4
  %93 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %93, i64 %95
  store %struct.samsung_pin_bank* %96, %struct.samsung_pin_bank** %9, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %126, %90
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %100 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %97
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %106 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %107, i32 %108)
  %110 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %111 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %112 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %110, i64 %114
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %115, i64 %117
  store %struct.pinctrl_pin_desc* %118, %struct.pinctrl_pin_desc** %8, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %121 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @PIN_NAME_LENGTH, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %10, align 8
  br label %126

126:                                              ; preds = %103
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %97

129:                                              ; preds = %97
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %84

133:                                              ; preds = %84
  %134 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %135 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %136 = call i32 @samsung_pinctrl_parse_dt(%struct.platform_device* %134, %struct.samsung_pinctrl_drv_data* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %3, align 4
  br label %225

141:                                              ; preds = %133
  %142 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %145 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %146 = call i32 @devm_pinctrl_register(i32* %143, %struct.pinctrl_desc* %144, %struct.samsung_pinctrl_drv_data* %145)
  %147 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %148 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %150 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %141
  %155 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %159 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %3, align 4
  br label %225

162:                                              ; preds = %141
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %221, %162
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %166 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %224

169:                                              ; preds = %163
  %170 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %171 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %170, i32 0, i32 4
  %172 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %172, i64 %174
  store %struct.samsung_pin_bank* %175, %struct.samsung_pin_bank** %9, align 8
  %176 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %177 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %180 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %184 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 8
  %186 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %187 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %190 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %188, %191
  %193 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %194 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 4
  %196 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %197 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %201 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  store i32 %199, i32* %202, align 8
  %203 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %204 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %208 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 5
  store i32 %206, i32* %209, align 8
  %210 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %211 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %210, i32 0, i32 4
  %212 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %213 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  store %struct.TYPE_3__* %211, %struct.TYPE_3__** %214, align 8
  %215 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %216 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %9, align 8
  %219 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %218, i32 0, i32 3
  %220 = call i32 @pinctrl_add_gpio_range(i32 %217, %struct.TYPE_4__* %219)
  br label %221

221:                                              ; preds = %169
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %163

224:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %224, %154, %139, %80, %36
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @samsung_pinctrl_parse_dt(%struct.platform_device*, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.pinctrl_desc*, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
