; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.bcm2835_pinctrl = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"brcm,pins\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%pOF: missing brcm,pins property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"brcm,function\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"brcm,pull\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%pOF: neither brcm,function nor brcm,pull specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%pOF: brcm,function must have 1 or %d entries\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%pOF: brcm,pull must have 1 or %d entries\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm2835_gpio_pins = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"%pOF: invalid brcm,pins value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @bcm2835_pctl_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pctl_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bcm2835_pinctrl*, align 8
  %11 = alloca %struct.property*, align 8
  %12 = alloca %struct.property*, align 8
  %13 = alloca %struct.property*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pinctrl_map*, align 8
  %19 = alloca %struct.pinctrl_map*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %26 = call %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %25)
  store %struct.bcm2835_pinctrl* %26, %struct.bcm2835_pinctrl** %10, align 8
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @pinconf_generic_dt_node_to_map_all(%struct.pinctrl_dev* %27, %struct.device_node* %28, %struct.pinctrl_map** %29, i32* %30)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %4
  %39 = load i32, i32* %21, align 4
  store i32 %39, i32* %5, align 4
  br label %247

40:                                               ; preds = %34
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = call %struct.property* @of_find_property(%struct.device_node* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %42, %struct.property** %11, align 8
  %43 = load %struct.property*, %struct.property** %11, align 8
  %44 = icmp ne %struct.property* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %47 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %247

53:                                               ; preds = %40
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call %struct.property* @of_find_property(%struct.device_node* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %55, %struct.property** %12, align 8
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = call %struct.property* @of_find_property(%struct.device_node* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.property* %57, %struct.property** %13, align 8
  %58 = load %struct.property*, %struct.property** %12, align 8
  %59 = icmp ne %struct.property* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load %struct.property*, %struct.property** %13, align 8
  %62 = icmp ne %struct.property* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %65 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.device_node*, %struct.device_node** %7, align 8
  %68 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %247

71:                                               ; preds = %60, %53
  %72 = load %struct.property*, %struct.property** %11, align 8
  %73 = getelementptr inbounds %struct.property, %struct.property* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.property*, %struct.property** %12, align 8
  %77 = icmp ne %struct.property* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.property*, %struct.property** %12, align 8
  %80 = getelementptr inbounds %struct.property, %struct.property* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 4
  br label %84

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i32 [ %82, %78 ], [ 0, %83 ]
  store i32 %85, i32* %15, align 4
  %86 = load %struct.property*, %struct.property** %13, align 8
  %87 = icmp ne %struct.property* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.property*, %struct.property** %13, align 8
  %90 = getelementptr inbounds %struct.property, %struct.property* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 4
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ %92, %88 ], [ 0, %93 ]
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %104 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.device_node*, %struct.device_node** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %247

111:                                              ; preds = %98, %94
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %120 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.device_node*, %struct.device_node** %7, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %122, i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %247

127:                                              ; preds = %114, %111
  store i32 0, i32* %17, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %17, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call %struct.pinctrl_map* @kcalloc(i32 %142, i32 4, i32 %143)
  store %struct.pinctrl_map* %144, %struct.pinctrl_map** %18, align 8
  store %struct.pinctrl_map* %144, %struct.pinctrl_map** %19, align 8
  %145 = load %struct.pinctrl_map*, %struct.pinctrl_map** %18, align 8
  %146 = icmp ne %struct.pinctrl_map* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %247

150:                                              ; preds = %139
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %229, %150
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %232

155:                                              ; preds = %151
  %156 = load %struct.device_node*, %struct.device_node** %7, align 8
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @of_property_read_u32_index(%struct.device_node* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %157, i32* %22)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %239

162:                                              ; preds = %155
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* @bcm2835_gpio_pins, align 4
  %165 = call i32 @ARRAY_SIZE(i32 %164)
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %169 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.device_node*, %struct.device_node** %7, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32 (i32, i8*, %struct.device_node*, ...) @dev_err(i32 %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), %struct.device_node* %171, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %21, align 4
  br label %239

176:                                              ; preds = %162
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %176
  %180 = load %struct.device_node*, %struct.device_node** %7, align 8
  %181 = load i32, i32* %15, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %20, align 4
  br label %186

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ]
  %188 = call i32 @of_property_read_u32_index(%struct.device_node* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32* %23)
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %239

192:                                              ; preds = %186
  %193 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %194 = load %struct.device_node*, %struct.device_node** %7, align 8
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @bcm2835_pctl_dt_node_to_map_func(%struct.bcm2835_pinctrl* %193, %struct.device_node* %194, i32 %195, i32 %196, %struct.pinctrl_map** %19)
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %239

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %176
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %228

205:                                              ; preds = %202
  %206 = load %struct.device_node*, %struct.device_node** %7, align 8
  %207 = load i32, i32* %16, align 4
  %208 = icmp sgt i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32, i32* %20, align 4
  br label %212

211:                                              ; preds = %205
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  %214 = call i32 @of_property_read_u32_index(%struct.device_node* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32* %24)
  store i32 %214, i32* %21, align 4
  %215 = load i32, i32* %21, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %239

218:                                              ; preds = %212
  %219 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %10, align 8
  %220 = load %struct.device_node*, %struct.device_node** %7, align 8
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %24, align 4
  %223 = call i32 @bcm2835_pctl_dt_node_to_map_pull(%struct.bcm2835_pinctrl* %219, %struct.device_node* %220, i32 %221, i32 %222, %struct.pinctrl_map** %19)
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %239

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %202
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  br label %151

232:                                              ; preds = %151
  %233 = load %struct.pinctrl_map*, %struct.pinctrl_map** %18, align 8
  %234 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* %233, %struct.pinctrl_map** %234, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %17, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32*, i32** %9, align 8
  store i32 %237, i32* %238, align 4
  store i32 0, i32* %5, align 4
  br label %247

239:                                              ; preds = %226, %217, %200, %191, %167, %161
  %240 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %241 = load %struct.pinctrl_map*, %struct.pinctrl_map** %18, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %17, align 4
  %244 = mul nsw i32 %242, %243
  %245 = call i32 @bcm2835_pctl_dt_free_map(%struct.pinctrl_dev* %240, %struct.pinctrl_map* %241, i32 %244)
  %246 = load i32, i32* %21, align 4
  store i32 %246, i32* %5, align 4
  br label %247

247:                                              ; preds = %239, %232, %147, %118, %102, %63, %45, %38
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local %struct.bcm2835_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_generic_dt_node_to_map_all(%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, ...) #1

declare dso_local %struct.pinctrl_map* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bcm2835_pctl_dt_node_to_map_func(%struct.bcm2835_pinctrl*, %struct.device_node*, i32, i32, %struct.pinctrl_map**) #1

declare dso_local i32 @bcm2835_pctl_dt_node_to_map_pull(%struct.bcm2835_pinctrl*, %struct.device_node*, i32, i32, %struct.pinctrl_map**) #1

declare dso_local i32 @bcm2835_pctl_dt_free_map(%struct.pinctrl_dev*, %struct.pinctrl_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
