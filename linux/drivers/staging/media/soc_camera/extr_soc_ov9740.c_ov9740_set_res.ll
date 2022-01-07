; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_set_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_set_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@OV9740_MAX_WIDTH = common dso_local global i32 0, align 4
@OV9740_MAX_HEIGHT = common dso_local global i32 0, align 4
@OV9740_X_ADDR_START_HI = common dso_local global i32 0, align 4
@OV9740_X_ADDR_START_LO = common dso_local global i32 0, align 4
@OV9740_Y_ADDR_START_HI = common dso_local global i32 0, align 4
@OV9740_Y_ADDR_START_LO = common dso_local global i32 0, align 4
@OV9740_X_ADDR_END_HI = common dso_local global i32 0, align 4
@OV9740_X_ADDR_END_LO = common dso_local global i32 0, align 4
@OV9740_Y_ADDR_END_HI = common dso_local global i32 0, align 4
@OV9740_Y_ADDR_END_LO = common dso_local global i32 0, align 4
@OV9740_X_OUTPUT_SIZE_HI = common dso_local global i32 0, align 4
@OV9740_X_OUTPUT_SIZE_LO = common dso_local global i32 0, align 4
@OV9740_Y_OUTPUT_SIZE_HI = common dso_local global i32 0, align 4
@OV9740_Y_OUTPUT_SIZE_LO = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL1E = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL1F = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL20 = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL21 = common dso_local global i32 0, align 4
@OV9740_VFIFO_READ_START_HI = common dso_local global i32 0, align 4
@OV9740_VFIFO_READ_START_LO = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL00 = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL01 = common dso_local global i32 0, align 4
@OV9740_ISP_CTRL03 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @ov9740_set_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_set_res(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  store i32 %37, i32* %13, align 4
  br label %45

38:                                               ; preds = %23
  %39 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* @OV9740_MAX_WIDTH, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @OV9740_MAX_HEIGHT, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @OV9740_X_ADDR_START_HI, align 4
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @ov9740_reg_write(%struct.i2c_client* %62, i32 %63, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  br label %248

70:                                               ; preds = %45
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @OV9740_X_ADDR_START_LO, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @ov9740_reg_write(%struct.i2c_client* %71, i32 %72, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %248

79:                                               ; preds = %70
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load i32, i32* @OV9740_Y_ADDR_START_HI, align 4
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 8
  %84 = call i32 @ov9740_reg_write(%struct.i2c_client* %80, i32 %81, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %248

88:                                               ; preds = %79
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* @OV9740_Y_ADDR_START_LO, align 4
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 255
  %93 = call i32 @ov9740_reg_write(%struct.i2c_client* %89, i32 %90, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %248

97:                                               ; preds = %88
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @OV9740_X_ADDR_END_HI, align 4
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 8
  %102 = call i32 @ov9740_reg_write(%struct.i2c_client* %98, i32 %99, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %248

106:                                              ; preds = %97
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @OV9740_X_ADDR_END_LO, align 4
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @ov9740_reg_write(%struct.i2c_client* %107, i32 %108, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %248

115:                                              ; preds = %106
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = load i32, i32* @OV9740_Y_ADDR_END_HI, align 4
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 8
  %120 = call i32 @ov9740_reg_write(%struct.i2c_client* %116, i32 %117, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %248

124:                                              ; preds = %115
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = load i32, i32* @OV9740_Y_ADDR_END_LO, align 4
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 255
  %129 = call i32 @ov9740_reg_write(%struct.i2c_client* %125, i32 %126, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %248

133:                                              ; preds = %124
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = load i32, i32* @OV9740_X_OUTPUT_SIZE_HI, align 4
  %136 = load i32, i32* %5, align 4
  %137 = ashr i32 %136, 8
  %138 = call i32 @ov9740_reg_write(%struct.i2c_client* %134, i32 %135, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %248

142:                                              ; preds = %133
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* @OV9740_X_OUTPUT_SIZE_LO, align 4
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, 255
  %147 = call i32 @ov9740_reg_write(%struct.i2c_client* %143, i32 %144, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %248

151:                                              ; preds = %142
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = load i32, i32* @OV9740_Y_OUTPUT_SIZE_HI, align 4
  %154 = load i32, i32* %6, align 4
  %155 = ashr i32 %154, 8
  %156 = call i32 @ov9740_reg_write(%struct.i2c_client* %152, i32 %153, i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %248

160:                                              ; preds = %151
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = load i32, i32* @OV9740_Y_OUTPUT_SIZE_LO, align 4
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 255
  %165 = call i32 @ov9740_reg_write(%struct.i2c_client* %161, i32 %162, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %248

169:                                              ; preds = %160
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = load i32, i32* @OV9740_ISP_CTRL1E, align 4
  %172 = load i32, i32* %12, align 4
  %173 = ashr i32 %172, 8
  %174 = call i32 @ov9740_reg_write(%struct.i2c_client* %170, i32 %171, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %248

178:                                              ; preds = %169
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load i32, i32* @OV9740_ISP_CTRL1F, align 4
  %181 = load i32, i32* %12, align 4
  %182 = and i32 %181, 255
  %183 = call i32 @ov9740_reg_write(%struct.i2c_client* %179, i32 %180, i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %248

187:                                              ; preds = %178
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = load i32, i32* @OV9740_ISP_CTRL20, align 4
  %190 = load i32, i32* %13, align 4
  %191 = ashr i32 %190, 8
  %192 = call i32 @ov9740_reg_write(%struct.i2c_client* %188, i32 %189, i32 %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %248

196:                                              ; preds = %187
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = load i32, i32* @OV9740_ISP_CTRL21, align 4
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, 255
  %201 = call i32 @ov9740_reg_write(%struct.i2c_client* %197, i32 %198, i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %248

205:                                              ; preds = %196
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = load i32, i32* @OV9740_VFIFO_READ_START_HI, align 4
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %5, align 4
  %210 = sub nsw i32 %208, %209
  %211 = ashr i32 %210, 8
  %212 = call i32 @ov9740_reg_write(%struct.i2c_client* %206, i32 %207, i32 %211)
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %248

216:                                              ; preds = %205
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = load i32, i32* @OV9740_VFIFO_READ_START_LO, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %5, align 4
  %221 = sub nsw i32 %219, %220
  %222 = and i32 %221, 255
  %223 = call i32 @ov9740_reg_write(%struct.i2c_client* %217, i32 %218, i32 %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  br label %248

227:                                              ; preds = %216
  %228 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %229 = load i32, i32* @OV9740_ISP_CTRL00, align 4
  %230 = call i32 @ov9740_reg_write(%struct.i2c_client* %228, i32 %229, i32 255)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %248

234:                                              ; preds = %227
  %235 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %236 = load i32, i32* @OV9740_ISP_CTRL01, align 4
  %237 = load i32, i32* %11, align 4
  %238 = shl i32 %237, 4
  %239 = or i32 239, %238
  %240 = call i32 @ov9740_reg_write(%struct.i2c_client* %235, i32 %236, i32 %239)
  store i32 %240, i32* %14, align 4
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %248

244:                                              ; preds = %234
  %245 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %246 = load i32, i32* @OV9740_ISP_CTRL03, align 4
  %247 = call i32 @ov9740_reg_write(%struct.i2c_client* %245, i32 %246, i32 255)
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %244, %243, %233, %226, %215, %204, %195, %186, %177, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %69
  %249 = load i32, i32* %14, align 4
  ret i32 %249
}

declare dso_local i32 @ov9740_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
