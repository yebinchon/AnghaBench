; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_subdev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_v4l2_subdev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.TYPE_10__*, i32, %struct.imgu_media_pipe* }
%struct.TYPE_10__ = type { i32 }
%struct.imgu_media_pipe = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.imgu_v4l2_subdev = type { i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_13__*, %struct.v4l2_ctrl_handler }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, %struct.v4l2_ctrl_handler*, i32, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@IMGU_NODE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed initialize subdev media entity (%d)\0A\00", align 1
@imgu_media_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@imgu_subdev_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_STATISTICS = common dso_local global i32 0, align 4
@imgu_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %u\00", align 1
@IMGU_NAME = common dso_local global i8* null, align 8
@IPU3_RUNNING_MODE_VIDEO = common dso_local global i32 0, align 4
@imgu_subdev_ctrl_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to create subdev v4l2 ctrl with err %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed initialize subdev (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*, %struct.imgu_v4l2_subdev*, i32)* @imgu_v4l2_subdev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_v4l2_subdev_register(%struct.imgu_device* %0, %struct.imgu_v4l2_subdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca %struct.imgu_v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_ctrl_handler*, align 8
  %11 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %5, align 8
  store %struct.imgu_v4l2_subdev* %1, %struct.imgu_v4l2_subdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %13 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %12, i32 0, i32 5
  store %struct.v4l2_ctrl_handler* %13, %struct.v4l2_ctrl_handler** %10, align 8
  %14 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %15 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %14, i32 0, i32 2
  %16 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %16, i64 %18
  store %struct.imgu_media_pipe* %19, %struct.imgu_media_pipe** %11, align 8
  %20 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %21 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* @IMGU_NODE_NUM, align 4
  %24 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %25 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %24, i32 0, i32 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = call i32 @media_entity_pads_init(%struct.TYPE_12__* %22, i32 %23, %struct.TYPE_13__* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %32 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %160

38:                                               ; preds = %3
  %39 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %40 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32* @imgu_media_ops, i32** %42, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %70, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IMGU_NODE_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %11, align 8
  %49 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %64 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %63, i32 0, i32 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %75 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %74, i32 0, i32 1
  %76 = call i32 @v4l2_subdev_init(%struct.TYPE_11__* %75, i32* @imgu_subdev_ops)
  %77 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_STATISTICS, align 4
  %78 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %79 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %83 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  store i32* @imgu_subdev_internal_ops, i32** %84, align 8
  %85 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %86 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %89 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %92 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** @IMGU_NAME, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %99 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %98, i32 0, i32 1
  %100 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %101 = call i32 @v4l2_set_subdevdata(%struct.TYPE_11__* %99, %struct.imgu_device* %100)
  %102 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %103 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %102, i32 0, i32 3
  %104 = load i32, i32* @IPU3_RUNNING_MODE_VIDEO, align 4
  %105 = call i32 @atomic_set(i32* %103, i32 %104)
  %106 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %10, align 8
  %107 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %106, i32 1)
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %10, align 8
  %109 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %110 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %108, %struct.v4l2_ctrl_handler** %111, align 8
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %10, align 8
  %113 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %112, i32* @imgu_subdev_ctrl_mode, i32* null)
  %114 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %115 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %10, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %73
  %121 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %125 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %149

130:                                              ; preds = %73
  %131 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %132 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %131, i32 0, i32 1
  %133 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %134 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %133, i32 0, i32 1
  %135 = call i32 @v4l2_device_register_subdev(i32* %132, %struct.TYPE_11__* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %140 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %149

145:                                              ; preds = %130
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %148 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %4, align 4
  br label %160

149:                                              ; preds = %138, %120
  %150 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %151 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %152, align 8
  %154 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %153)
  %155 = load %struct.imgu_v4l2_subdev*, %struct.imgu_v4l2_subdev** %6, align 8
  %156 = getelementptr inbounds %struct.imgu_v4l2_subdev, %struct.imgu_v4l2_subdev* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = call i32 @media_entity_cleanup(%struct.TYPE_12__* %157)
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %149, %145, %30
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_11__*, %struct.imgu_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
