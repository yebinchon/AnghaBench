; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_omap4iss_csiphy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.iss_csi2_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.iss_csiphy_dphy_cfg = type { i32, i32, i32, i8*, i8* }
%struct.iss_pipeline = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.iss_v4l2_subdevs_group* }
%struct.iss_v4l2_subdevs_group = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.iss_csiphy_lanes_cfg }

@ISS_INTERFACE_CSI2A_PHY1 = common dso_local global i64 0, align 8
@OMAP4_CAMERARX_CSI21_LANEENABLE_MASK = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI21_CAMMODE_MASK = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI21_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI21_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@ISS_INTERFACE_CSI2B_PHY2 = common dso_local global i64 0, align 8
@OMAP4_CAMERARX_CSI22_LANEENABLE_MASK = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI22_CAMMODE_MASK = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI22_LANEENABLE_SHIFT = common dso_local global i32 0, align 4
@OMAP4_CAMERARX_CSI22_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCLK_TERM = common dso_local global i32 0, align 4
@TCLK_MISS = common dso_local global i32 0, align 4
@TCLK_SETTLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csiphy_config(%struct.iss_device* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.iss_csi2_device*, align 8
  %7 = alloca %struct.iss_pipeline*, align 8
  %8 = alloca %struct.iss_v4l2_subdevs_group*, align 8
  %9 = alloca %struct.iss_csiphy_dphy_cfg, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iss_csiphy_lanes_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.iss_csi2_device* %16, %struct.iss_csi2_device** %6, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %18)
  store %struct.iss_pipeline* %19, %struct.iss_pipeline** %7, align 8
  %20 = load %struct.iss_pipeline*, %struct.iss_pipeline** %7, align 8
  %21 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %23, align 8
  store %struct.iss_v4l2_subdevs_group* %24, %struct.iss_v4l2_subdevs_group** %8, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %8, align 8
  %26 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.iss_csiphy_lanes_cfg* %28, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %29 = load %struct.iss_device*, %struct.iss_device** %4, align 8
  %30 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_read(i32 %31, i32 104, i32* %13)
  %33 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %8, align 8
  %34 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ISS_INTERFACE_CSI2A_PHY1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load i32, i32* @OMAP4_CAMERARX_CSI21_LANEENABLE_MASK, align 4
  %40 = load i32, i32* @OMAP4_CAMERARX_CSI21_CAMMODE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @OMAP4_CAMERARX_CSI21_LANEENABLE_SHIFT, align 4
  %46 = shl i32 31, %45
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @OMAP4_CAMERARX_CSI21_CTRLCLKEN_MASK, align 4
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %38, %2
  %53 = load %struct.iss_v4l2_subdevs_group*, %struct.iss_v4l2_subdevs_group** %8, align 8
  %54 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, %struct.iss_v4l2_subdevs_group* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ISS_INTERFACE_CSI2B_PHY2, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load i32, i32* @OMAP4_CAMERARX_CSI22_LANEENABLE_MASK, align 4
  %60 = load i32, i32* @OMAP4_CAMERARX_CSI22_CAMMODE_MASK, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* @OMAP4_CAMERARX_CSI22_LANEENABLE_SHIFT, align 4
  %66 = shl i32 3, %65
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @OMAP4_CAMERARX_CSI22_CTRLCLKEN_MASK, align 4
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %58, %52
  %73 = load %struct.iss_device*, %struct.iss_device** %4, align 8
  %74 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @regmap_write(i32 %75, i32 104, i32 %76)
  %78 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %79 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %164, %72
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %85 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ult i32 %83, %88
  br i1 %89, label %90, label %167

90:                                               ; preds = %82
  %91 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %92 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %164

101:                                              ; preds = %90
  %102 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %103 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %127, label %111

111:                                              ; preds = %101
  %112 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %113 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %121 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, 1
  %126 = icmp ugt i32 %119, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %111, %101
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %261

130:                                              ; preds = %111
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %133 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 1, %139
  %141 = and i32 %131, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %261

146:                                              ; preds = %130
  %147 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %148 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %12, align 4
  %158 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %159 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %146, %100
  %165 = load i32, i32* %14, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %82

167:                                              ; preds = %82
  %168 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %169 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %185, label %173

173:                                              ; preds = %167
  %174 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %175 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %179 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add i32 %182, 1
  %184 = icmp ugt i32 %177, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %173, %167
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %261

188:                                              ; preds = %173
  %189 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %190 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %197 = getelementptr inbounds %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_lanes_cfg* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 1, %199
  %201 = and i32 %195, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %194, %188
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %3, align 4
  br label %261

206:                                              ; preds = %194
  %207 = load %struct.iss_pipeline*, %struct.iss_pipeline** %7, align 8
  %208 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %209, 1000
  %211 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %212 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 2, %215
  %217 = sdiv i32 %210, %216
  %218 = load %struct.iss_pipeline*, %struct.iss_pipeline** %7, align 8
  %219 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = mul nsw i32 25, %222
  %224 = call i8* @DIV_ROUND_UP(i32 %223, i32 2000000)
  %225 = getelementptr i8, i8* %224, i64 -1
  %226 = getelementptr inbounds %struct.iss_csiphy_dphy_cfg, %struct.iss_csiphy_dphy_cfg* %9, i32 0, i32 4
  store i8* %225, i8** %226, align 8
  %227 = load i32, i32* %10, align 4
  %228 = mul nsw i32 90, %227
  %229 = call i8* @DIV_ROUND_UP(i32 %228, i32 1000000)
  %230 = getelementptr i8, i8* %229, i64 3
  %231 = getelementptr inbounds %struct.iss_csiphy_dphy_cfg, %struct.iss_csiphy_dphy_cfg* %9, i32 0, i32 3
  store i8* %230, i8** %231, align 8
  %232 = load i32, i32* @TCLK_TERM, align 4
  %233 = getelementptr inbounds %struct.iss_csiphy_dphy_cfg, %struct.iss_csiphy_dphy_cfg* %9, i32 0, i32 2
  store i32 %232, i32* %233, align 8
  %234 = load i32, i32* @TCLK_MISS, align 4
  %235 = getelementptr inbounds %struct.iss_csiphy_dphy_cfg, %struct.iss_csiphy_dphy_cfg* %9, i32 0, i32 1
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* @TCLK_SETTLE, align 4
  %237 = getelementptr inbounds %struct.iss_csiphy_dphy_cfg, %struct.iss_csiphy_dphy_cfg* %9, i32 0, i32 0
  store i32 %236, i32* %237, align 8
  %238 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %239 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %238, i32 0, i32 0
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = call i32 @mutex_lock(i32* %241)
  %243 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %244 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 4
  %247 = bitcast %struct.iss_csiphy_dphy_cfg* %246 to i8*
  %248 = bitcast %struct.iss_csiphy_dphy_cfg* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 32, i1 false)
  %249 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %250 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %249, i32 0, i32 0
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  %253 = load %struct.iss_csiphy_lanes_cfg*, %struct.iss_csiphy_lanes_cfg** %11, align 8
  %254 = bitcast %struct.iss_csiphy_lanes_cfg* %252 to i8*
  %255 = bitcast %struct.iss_csiphy_lanes_cfg* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 16, i1 false)
  %256 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %257 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %256, i32 0, i32 0
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  %260 = call i32 @mutex_unlock(i32* %259)
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %206, %203, %185, %143, %127
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
