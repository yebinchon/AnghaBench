; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_bm2835_mmal_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_controls.c_bm2835_mmal_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm2835_mmal_v4l2_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bm2835_mmal_dev = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i8* }
%struct.v4l2_ctrl_handler = type { i32 }

@V4L2_CTRL_COUNT = common dso_local global i32 0, align 4
@v4l2_ctrls = common dso_local global %struct.bm2835_mmal_v4l2_ctrl* null, align 8
@bm2835_mmal_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_SCENE_MODE = common dso_local global i32 0, align 4
@V4L2_SCENE_MODE_NONE = common dso_local global i32 0, align 4
@scene_configs = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"error adding control %d/%d id 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm2835_mmal_init_controls(%struct.bm2835_mmal_dev* %0, %struct.v4l2_ctrl_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bm2835_mmal_v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.v4l2_ctrl_handler* %1, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load i32, i32* @V4L2_CTRL_COUNT, align 4
  %12 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %10, i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %140, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @V4L2_CTRL_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  %18 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** @v4l2_ctrls, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %18, i64 %20
  store %struct.bm2835_mmal_v4l2_ctrl* %21, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %22 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %23 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %123 [
    i32 129, label %25
    i32 128, label %49
    i32 130, label %101
    i32 131, label %122
  ]

25:                                               ; preds = %17
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %28 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %31 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %34 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %37 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %40 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_7__* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @bm2835_mmal_ctrl_ops, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %44 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %48, align 8
  br label %123

49:                                               ; preds = %17
  %50 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %51 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %54 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @V4L2_CID_SCENE_MODE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %49
  %59 = load i32, i32* @V4L2_SCENE_MODE_NONE, align 4
  %60 = call i32 @BIT(i32 %59)
  store i32 %60, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %76, %58
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_configs, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_configs, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %49
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %84 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %85 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %88 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %92 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_7__* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %83, i32* @bm2835_mmal_ctrl_ops, i32 %86, i32 %89, i32 %90, i32 %93)
  %95 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %96 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %97, i64 %99
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %100, align 8
  br label %123

101:                                              ; preds = %17
  %102 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %103 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %104 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %107 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %110 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %113 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_7__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %102, i32* @bm2835_mmal_ctrl_ops, i32 %105, i32 %108, i32 %111, i32 %114)
  %116 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %117 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %118, i64 %120
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %121, align 8
  br label %123

122:                                              ; preds = %17
  br label %140

123:                                              ; preds = %17, %101, %82, %25
  %124 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %125 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %143

129:                                              ; preds = %123
  %130 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %131 = bitcast %struct.bm2835_mmal_v4l2_ctrl* %130 to i8*
  %132 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %133 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %134, i64 %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i8* %131, i8** %139, align 8
  br label %140

140:                                              ; preds = %129, %122
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %13

143:                                              ; preds = %128, %13
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @V4L2_CTRL_COUNT, align 4
  %151 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %152 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150, i32 %153)
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %156 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %3, align 4
  br label %195

158:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %191, %158
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @V4L2_CTRL_COUNT, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %194

163:                                              ; preds = %159
  %164 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** @v4l2_ctrls, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %164, i64 %166
  store %struct.bm2835_mmal_v4l2_ctrl* %167, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %168 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %169 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %190 [
    i32 131, label %171
    i32 129, label %189
    i32 128, label %189
    i32 130, label %189
  ]

171:                                              ; preds = %163
  %172 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %173 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %176 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %177, i64 %180
  %182 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %183 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.bm2835_mmal_v4l2_ctrl*, %struct.bm2835_mmal_v4l2_ctrl** %7, align 8
  %186 = getelementptr inbounds %struct.bm2835_mmal_v4l2_ctrl, %struct.bm2835_mmal_v4l2_ctrl* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @v4l2_ctrl_auto_cluster(i32 %174, %struct.TYPE_7__** %181, i32 %184, i32 %187)
  br label %190

189:                                              ; preds = %163, %163, %163
  br label %190

190:                                              ; preds = %163, %189, %171
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %159

194:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %148
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.TYPE_7__* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, %struct.TYPE_7__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
