; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_imx_media_register_ipu_internal_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_imx_media_register_ipu_internal_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_subdev = type { i64, i32 (%struct.v4l2_subdev*)*, %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)* }
%struct.v4l2_subdev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.device.0 = type opaque
%struct.ipu_soc = type { i32 }
%struct.imx_media_dev = type { i32, %struct.v4l2_subdev***, i32, %struct.ipu_soc** }

@.str = private unnamed_addr constant [21 x i8] c"invalid IPU device!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid IPU id %d!\0A\00", align 1
@NUM_IPU_SUBDEVS = common dso_local global i32 0, align 4
@int_subdev = common dso_local global %struct.internal_subdev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_register_ipu_internal_subdevs(%struct.imx_media_dev* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_media_dev*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.internal_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.ipu_soc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.ipu_soc* @dev_get_drvdata(%struct.device* %18)
  store %struct.ipu_soc* %19, %struct.ipu_soc** %9, align 8
  %20 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  %21 = icmp ne %struct.ipu_soc* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %24 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %23, i32 0, i32 2
  %25 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %233

28:                                               ; preds = %2
  %29 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  %30 = call i32 @ipu_get_num(%struct.ipu_soc* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %35 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %233

40:                                               ; preds = %28
  %41 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %42 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %45 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %44, i32 0, i32 3
  %46 = load %struct.ipu_soc**, %struct.ipu_soc*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ipu_soc*, %struct.ipu_soc** %46, i64 %48
  %50 = load %struct.ipu_soc*, %struct.ipu_soc** %49, align 8
  %51 = icmp ne %struct.ipu_soc* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %40
  %53 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  %54 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %55 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %54, i32 0, i32 3
  %56 = load %struct.ipu_soc**, %struct.ipu_soc*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ipu_soc*, %struct.ipu_soc** %56, i64 %58
  store %struct.ipu_soc* %53, %struct.ipu_soc** %59, align 8
  br label %60

60:                                               ; preds = %52, %40
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %126, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @NUM_IPU_SUBDEVS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %129

65:                                               ; preds = %61
  %66 = load %struct.internal_subdev*, %struct.internal_subdev** @int_subdev, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %66, i64 %68
  store %struct.internal_subdev* %69, %struct.internal_subdev** %7, align 8
  %70 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %71 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %70, i32 0, i32 1
  %72 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %72, i64 %74
  %76 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %76, i64 %78
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %79, align 8
  store %struct.v4l2_subdev* %80, %struct.v4l2_subdev** %8, align 8
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %82 = icmp ne %struct.v4l2_subdev* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %65
  %84 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %85 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %84, i32 0, i32 2
  %86 = load %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)*, %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)** %85, align 8
  %87 = icmp ne %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %65
  br label %126

89:                                               ; preds = %83
  %90 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %91 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %94 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %93, i32 0, i32 2
  %95 = load %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)*, %struct.v4l2_subdev* (i32*, %struct.device.0*, %struct.ipu_soc*, i64)** %94, align 8
  %96 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %97 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %96, i32 0, i32 2
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = bitcast %struct.device* %98 to %struct.device.0*
  %100 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  %101 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %102 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.v4l2_subdev* %95(i32* %97, %struct.device.0* %99, %struct.ipu_soc* %100, i64 %103)
  store %struct.v4l2_subdev* %104, %struct.v4l2_subdev** %8, align 8
  %105 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %106 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %109 = call i64 @IS_ERR(%struct.v4l2_subdev* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %89
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %113 = call i32 @PTR_ERR(%struct.v4l2_subdev* %112)
  store i32 %113, i32* %12, align 4
  br label %187

114:                                              ; preds = %89
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %116 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %117 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %116, i32 0, i32 1
  %118 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %118, i64 %120
  %122 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %122, i64 %124
  store %struct.v4l2_subdev* %115, %struct.v4l2_subdev** %125, align 8
  br label %126

126:                                              ; preds = %114, %88
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %61

129:                                              ; preds = %61
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %180, %129
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @NUM_IPU_SUBDEVS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %183

134:                                              ; preds = %130
  %135 = load %struct.internal_subdev*, %struct.internal_subdev** @int_subdev, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %135, i64 %137
  store %struct.internal_subdev* %138, %struct.internal_subdev** %7, align 8
  %139 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %140 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev* %147, %struct.v4l2_subdev** %8, align 8
  br label %164

148:                                              ; preds = %134
  %149 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %150 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %149, i32 0, i32 1
  %151 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %151, i64 %153
  %155 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %155, i64 %157
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %158, align 8
  store %struct.v4l2_subdev* %159, %struct.v4l2_subdev** %8, align 8
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %161 = icmp ne %struct.v4l2_subdev* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %148
  br label %180

163:                                              ; preds = %148
  br label %164

164:                                              ; preds = %163, %146
  %165 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %166 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @create_ipu_internal_links(%struct.imx_media_dev* %165, %struct.internal_subdev* %166, %struct.v4l2_subdev* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %164
  %173 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %174 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %173, i32 0, i32 0
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %177 = call i32 @imx_media_unregister_ipu_internal_subdevs(%struct.imx_media_dev* %176)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %3, align 4
  br label %233

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179, %162
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %130

183:                                              ; preds = %130
  %184 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %185 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  store i32 0, i32* %3, align 4
  br label %233

187:                                              ; preds = %111
  br label %188

188:                                              ; preds = %216, %215, %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %10, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %188
  %193 = load %struct.internal_subdev*, %struct.internal_subdev** @int_subdev, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %193, i64 %195
  store %struct.internal_subdev* %196, %struct.internal_subdev** %7, align 8
  %197 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %198 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %197, i32 0, i32 1
  %199 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %199, i64 %201
  %203 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %203, i64 %205
  %207 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %206, align 8
  store %struct.v4l2_subdev* %207, %struct.v4l2_subdev** %8, align 8
  %208 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %209 = icmp ne %struct.v4l2_subdev* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %192
  %211 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %212 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %211, i32 0, i32 1
  %213 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %212, align 8
  %214 = icmp ne i32 (%struct.v4l2_subdev*)* %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %210, %192
  br label %188

216:                                              ; preds = %210
  %217 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %218 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %221 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %220, i32 0, i32 1
  %222 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %221, align 8
  %223 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %224 = call i32 %222(%struct.v4l2_subdev* %223)
  %225 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %226 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %225, i32 0, i32 0
  %227 = call i32 @mutex_lock(i32* %226)
  br label %188

228:                                              ; preds = %188
  %229 = load %struct.imx_media_dev*, %struct.imx_media_dev** %4, align 8
  %230 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load i32, i32* %12, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %228, %183, %172, %33, %22
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.ipu_soc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @ipu_get_num(%struct.ipu_soc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_subdev*) #1

declare dso_local i32 @PTR_ERR(%struct.v4l2_subdev*) #1

declare dso_local i32 @create_ipu_internal_links(%struct.imx_media_dev*, %struct.internal_subdev*, %struct.v4l2_subdev*, i32) #1

declare dso_local i32 @imx_media_unregister_ipu_internal_subdevs(%struct.imx_media_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
