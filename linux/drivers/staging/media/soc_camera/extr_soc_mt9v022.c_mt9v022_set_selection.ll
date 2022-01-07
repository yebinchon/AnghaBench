; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { i64, i32, %struct.v4l2_rect, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mt9v022_colour_fmts = common dso_local global i64 0, align 8
@MT9V022_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9V022_MIN_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9V022_ROW_SKIP = common dso_local global i32 0, align 4
@MT9V022_MIN_HEIGHT = common dso_local global i32 0, align 4
@MT9V022_MAX_HEIGHT = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V022_COLUMN_START = common dso_local global i32 0, align 4
@MT9V022_ROW_START = common dso_local global i32 0, align 4
@MT9V022_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9V022_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Frame %dx%d pixel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @mt9v022_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.mt9v022*, align 8
  %10 = alloca %struct.v4l2_rect, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %17 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %16)
  store %struct.mt9v022* %17, %struct.mt9v022** %9, align 8
  %18 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %18, i32 0, i32 2
  %20 = bitcast %struct.v4l2_rect* %10 to i8*
  %21 = bitcast %struct.v4l2_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %187

36:                                               ; preds = %27
  %37 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %38 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @mt9v022_colour_fmts, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ALIGN(i32 %44, i32 2)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ALIGN(i32 %49, i32 2)
  %51 = ptrtoint i8* %50 to i32
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %36
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %55 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %56 = load i32, i32* @MT9V022_COLUMN_SKIP, align 4
  %57 = load i32, i32* @MT9V022_MIN_WIDTH, align 4
  %58 = load i32, i32* @MT9V022_MAX_WIDTH, align 4
  %59 = call i32 @soc_camera_limit_side(i32* %54, i32* %55, i32 %56, i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %62 = load i32, i32* @MT9V022_ROW_SKIP, align 4
  %63 = load i32, i32* @MT9V022_MIN_HEIGHT, align 4
  %64 = load i32, i32* @MT9V022_MAX_HEIGHT, align 4
  %65 = call i32 @soc_camera_limit_side(i32* %60, i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %67 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %68 = call i32 @reg_read(%struct.i2c_client* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %53
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %77 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %78 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %85 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = add nsw i32 %87, 43
  %89 = call i32 @reg_write(%struct.i2c_client* %76, i32 %81, i32 %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %75, %71
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %96 = load i32, i32* @MT9V022_COLUMN_START, align 4
  %97 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @reg_write(%struct.i2c_client* %95, i32 %96, i32 %98)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %105 = load i32, i32* @MT9V022_ROW_START, align 4
  %106 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @reg_write(%struct.i2c_client* %104, i32 %105, i32 %107)
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %103, %100
  %110 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %111 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @is_mt9v024(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 690, i32* %11, align 4
  store i32 61, i32* %12, align 4
  br label %117

116:                                              ; preds = %109
  store i32 660, i32* %11, align 4
  store i32 43, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %117
  %121 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %122 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %126, %127
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %12, align 4
  br label %137

132:                                              ; preds = %120
  %133 = load i32, i32* %11, align 4
  %134 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %133, %135
  br label %137

137:                                              ; preds = %132, %130
  %138 = phi i32 [ %131, %130 ], [ %136, %132 ]
  %139 = call i32 @v4l2_ctrl_s_ctrl(i32 %123, i32 %138)
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137, %117
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %145 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @v4l2_ctrl_s_ctrl(i32 %146, i32 45)
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %153 = load i32, i32* @MT9V022_WINDOW_WIDTH, align 4
  %154 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @reg_write(%struct.i2c_client* %152, i32 %153, i32 %155)
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %157
  %161 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %162 = load i32, i32* @MT9V022_WINDOW_HEIGHT, align 4
  %163 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %166 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %164, %167
  %169 = call i32 @reg_write(%struct.i2c_client* %161, i32 %162, i32 %168)
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %160, %157
  %171 = load i32, i32* %13, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %4, align 4
  br label %187

175:                                              ; preds = %170
  %176 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_dbg(i32* %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %181)
  %183 = load %struct.mt9v022*, %struct.mt9v022** %9, align 8
  %184 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %183, i32 0, i32 2
  %185 = bitcast %struct.v4l2_rect* %184 to i8*
  %186 = bitcast %struct.v4l2_rect* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %175, %173, %33
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @soc_camera_limit_side(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @is_mt9v024(i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
