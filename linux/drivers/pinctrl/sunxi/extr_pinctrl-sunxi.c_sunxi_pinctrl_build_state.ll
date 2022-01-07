; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_pinctrl = type { i32, i32, i32, i32*, %struct.TYPE_3__*, i32*, %struct.sunxi_pinctrl_group* }
%struct.TYPE_3__ = type { i32, %struct.sunxi_desc_pin* }
%struct.sunxi_desc_pin = type { i32, %struct.TYPE_4__, %struct.sunxi_desc_function* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.sunxi_desc_function = type { i32, i32, i32, i64 }
%struct.sunxi_pinctrl_group = type { i8*, i32 }
%struct.sunxi_pinctrl_function = type { i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@IRQ_PER_BANK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_pinctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sunxi_pinctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_desc_pin*, align 8
  %8 = alloca %struct.sunxi_pinctrl_group*, align 8
  %9 = alloca %struct.sunxi_desc_pin*, align 8
  %10 = alloca %struct.sunxi_desc_function*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sunxi_desc_pin*, align 8
  %13 = alloca %struct.sunxi_desc_function*, align 8
  %14 = alloca %struct.sunxi_pinctrl_function*, align 8
  %15 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.sunxi_pinctrl* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.sunxi_pinctrl* %17, %struct.sunxi_pinctrl** %4, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kcalloc(i32* %19, i32 %24, i32 16, i32 %25)
  %27 = bitcast i8* %26 to %struct.sunxi_pinctrl_group*
  %28 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %28, i32 0, i32 6
  store %struct.sunxi_pinctrl_group* %27, %struct.sunxi_pinctrl_group** %29, align 8
  %30 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %30, i32 0, i32 6
  %32 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %31, align 8
  %33 = icmp ne %struct.sunxi_pinctrl_group* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %358

37:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %94, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %38
  %47 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %51, i64 %53
  store %struct.sunxi_desc_pin* %54, %struct.sunxi_desc_pin** %7, align 8
  %55 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %56 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %55, i32 0, i32 6
  %57 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %56, align 8
  %58 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %59 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %57, i64 %61
  store %struct.sunxi_pinctrl_group* %62, %struct.sunxi_pinctrl_group** %8, align 8
  %63 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %7, align 8
  %64 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %46
  %68 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %69 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %7, align 8
  %72 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %94

77:                                               ; preds = %67, %46
  %78 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %7, align 8
  %79 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %8, align 8
  %83 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %7, align 8
  %85 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %8, align 8
  %89 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %91 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %77, %76
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %38

97:                                               ; preds = %38
  %98 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %99 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i32* @kcalloc(i32 %100, i32 4, i32 %101)
  %103 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %104 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %106 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %358

112:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %204, %112
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %116 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %115, i32 0, i32 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %207

121:                                              ; preds = %113
  %122 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %123 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %122, i32 0, i32 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %126, i64 %128
  store %struct.sunxi_desc_pin* %129, %struct.sunxi_desc_pin** %9, align 8
  %130 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %131 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %121
  %135 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %136 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %139 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  br label %204

144:                                              ; preds = %134, %121
  %145 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %146 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %145, i32 0, i32 2
  %147 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %146, align 8
  store %struct.sunxi_desc_function* %147, %struct.sunxi_desc_function** %10, align 8
  br label %148

148:                                              ; preds = %200, %144
  %149 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %150 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %203

153:                                              ; preds = %148
  %154 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %155 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %160 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %163 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  br label %200

168:                                              ; preds = %158, %153
  %169 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %170 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @strcmp(i64 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %168
  %175 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %176 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %179 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IRQ_PER_BANK, align 4
  %182 = mul nsw i32 %180, %181
  %183 = add nsw i32 %177, %182
  store i32 %183, i32* %11, align 4
  %184 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %9, align 8
  %185 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %189 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  br label %194

194:                                              ; preds = %174, %168
  %195 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %196 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %197 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @sunxi_pinctrl_add_function(%struct.sunxi_pinctrl* %195, i64 %198)
  br label %200

200:                                              ; preds = %194, %167
  %201 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %10, align 8
  %202 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %201, i32 1
  store %struct.sunxi_desc_function* %202, %struct.sunxi_desc_function** %10, align 8
  br label %148

203:                                              ; preds = %148
  br label %204

204:                                              ; preds = %203, %143
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %113

207:                                              ; preds = %113
  %208 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %209 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %212 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = load i32, i32* @GFP_KERNEL, align 4
  %218 = call i8* @krealloc(i32* %210, i32 %216, i32 %217)
  store i8* %218, i8** %5, align 8
  %219 = load i8*, i8** %5, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %230, label %221

221:                                              ; preds = %207
  %222 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %223 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @kfree(i32* %224)
  %226 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %227 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %226, i32 0, i32 3
  store i32* null, i32** %227, align 8
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %358

230:                                              ; preds = %207
  %231 = load i8*, i8** %5, align 8
  %232 = bitcast i8* %231 to i32*
  %233 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %234 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %233, i32 0, i32 3
  store i32* %232, i32** %234, align 8
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %354, %230
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %238 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %237, i32 0, i32 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %236, %241
  br i1 %242, label %243, label %357

243:                                              ; preds = %235
  %244 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %245 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %244, i32 0, i32 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %248, i64 %250
  store %struct.sunxi_desc_pin* %251, %struct.sunxi_desc_pin** %12, align 8
  %252 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %12, align 8
  %253 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %243
  %257 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %258 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %12, align 8
  %261 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %256
  br label %354

266:                                              ; preds = %256, %243
  %267 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %12, align 8
  %268 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %267, i32 0, i32 2
  %269 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %268, align 8
  store %struct.sunxi_desc_function* %269, %struct.sunxi_desc_function** %13, align 8
  br label %270

270:                                              ; preds = %350, %266
  %271 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %13, align 8
  %272 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %353

275:                                              ; preds = %270
  %276 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %13, align 8
  %277 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %275
  %281 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %282 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %13, align 8
  %285 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %283, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %280
  br label %350

290:                                              ; preds = %280, %275
  %291 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %292 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %13, align 8
  %293 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = call %struct.sunxi_pinctrl_function* @sunxi_pinctrl_find_function_by_name(%struct.sunxi_pinctrl* %291, i64 %294)
  store %struct.sunxi_pinctrl_function* %295, %struct.sunxi_pinctrl_function** %14, align 8
  %296 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %297 = icmp ne %struct.sunxi_pinctrl_function* %296, null
  br i1 %297, label %305, label %298

298:                                              ; preds = %290
  %299 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %300 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %299, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @kfree(i32* %301)
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %2, align 4
  br label %358

305:                                              ; preds = %290
  %306 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %307 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %306, i32 0, i32 0
  %308 = load i8**, i8*** %307, align 8
  %309 = icmp ne i8** %308, null
  br i1 %309, label %333, label %310

310:                                              ; preds = %305
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 0
  %313 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %314 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @GFP_KERNEL, align 4
  %317 = call i8* @devm_kcalloc(i32* %312, i32 %315, i32 8, i32 %316)
  %318 = bitcast i8* %317 to i8**
  %319 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %320 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %319, i32 0, i32 0
  store i8** %318, i8*** %320, align 8
  %321 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %322 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %321, i32 0, i32 0
  %323 = load i8**, i8*** %322, align 8
  %324 = icmp ne i8** %323, null
  br i1 %324, label %332, label %325

325:                                              ; preds = %310
  %326 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %4, align 8
  %327 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %326, i32 0, i32 3
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 @kfree(i32* %328)
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %2, align 4
  br label %358

332:                                              ; preds = %310
  br label %333

333:                                              ; preds = %332, %305
  %334 = load %struct.sunxi_pinctrl_function*, %struct.sunxi_pinctrl_function** %14, align 8
  %335 = getelementptr inbounds %struct.sunxi_pinctrl_function, %struct.sunxi_pinctrl_function* %334, i32 0, i32 0
  %336 = load i8**, i8*** %335, align 8
  store i8** %336, i8*** %15, align 8
  br label %337

337:                                              ; preds = %341, %333
  %338 = load i8**, i8*** %15, align 8
  %339 = load i8*, i8** %338, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load i8**, i8*** %15, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i32 1
  store i8** %343, i8*** %15, align 8
  br label %337

344:                                              ; preds = %337
  %345 = load %struct.sunxi_desc_pin*, %struct.sunxi_desc_pin** %12, align 8
  %346 = getelementptr inbounds %struct.sunxi_desc_pin, %struct.sunxi_desc_pin* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = load i8**, i8*** %15, align 8
  store i8* %348, i8** %349, align 8
  br label %350

350:                                              ; preds = %344, %289
  %351 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %13, align 8
  %352 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %351, i32 1
  store %struct.sunxi_desc_function* %352, %struct.sunxi_desc_function** %13, align 8
  br label %270

353:                                              ; preds = %270
  br label %354

354:                                              ; preds = %353, %265
  %355 = load i32, i32* %6, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %6, align 4
  br label %235

357:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %358

358:                                              ; preds = %357, %325, %298, %221, %109, %34
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local %struct.sunxi_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @sunxi_pinctrl_add_function(%struct.sunxi_pinctrl*, i64) #1

declare dso_local i8* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.sunxi_pinctrl_function* @sunxi_pinctrl_find_function_by_name(%struct.sunxi_pinctrl*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
