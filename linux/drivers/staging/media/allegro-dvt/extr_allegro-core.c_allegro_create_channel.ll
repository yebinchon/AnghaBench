; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_create_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_create_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.allegro_dev* }
%struct.allegro_dev = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"channel already exists\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no free channels available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"user %d: creating channel (%4.4s, %dx%d@%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"user %d: selected Level %s too low: increasing to Level %s\0A\00", align 1
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"channel %d: accepting buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_channel*)* @allegro_create_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_create_channel(%struct.allegro_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.allegro_channel* %0, %struct.allegro_channel** %3, align 8
  %7 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %8 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %7, i32 0, i32 15
  %9 = load %struct.allegro_dev*, %struct.allegro_dev** %8, align 8
  store %struct.allegro_dev* %9, %struct.allegro_dev** %4, align 8
  %10 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %11 = call i64 @channel_exists(%struct.allegro_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %15 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %158

17:                                               ; preds = %1
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %19 = call i64 @allegro_next_user_id(%struct.allegro_dev* %18)
  %20 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %21 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %23 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %28 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %27, i32 0, i32 0
  %29 = call i32 @v4l2_err(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %158

32:                                               ; preds = %17
  %33 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %34 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %37 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %36, i32 0, i32 1
  %38 = call i32 @set_bit(i64 %35, i32* %37)
  %39 = load i32, i32* @debug, align 4
  %40 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %41 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %40, i32 0, i32 0
  %42 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %43 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %46 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %45, i32 0, i32 14
  %47 = bitcast i32* %46 to i8*
  %48 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %49 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %52 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i32, i32*, i8*, i64, ...) @v4l2_dbg(i32 1, i32 %39, i32* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %44, i8* %47, i32 %50, i32 %53, i32 25)
  %55 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %56 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %59 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @select_minimum_h264_level(i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %63 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %32
  %68 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %69 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %68, i32 0, i32 0
  %70 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %71 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %74 = call i32* @v4l2_ctrl_get_menu(i32 %73)
  %75 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %76 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %82 = call i32* @v4l2_ctrl_get_menu(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i8*, ...) @v4l2_warn(i32* %69, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %72, i32 %80, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %90 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %67, %32
  %92 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %93 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @v4l2_ctrl_grab(i32 %94, i32 1)
  %96 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %97 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @v4l2_ctrl_grab(i32 %98, i32 1)
  %100 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %101 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @v4l2_ctrl_grab(i32 %102, i32 1)
  %104 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %105 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @v4l2_ctrl_grab(i32 %106, i32 1)
  %108 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %109 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @v4l2_ctrl_grab(i32 %110, i32 1)
  %112 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %113 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @v4l2_ctrl_grab(i32 %114, i32 1)
  %116 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %117 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @v4l2_ctrl_grab(i32 %118, i32 1)
  %120 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %121 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %120, i32 0, i32 4
  %122 = call i32 @reinit_completion(i32* %121)
  %123 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %124 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %125 = call i32 @allegro_mcu_send_create_channel(%struct.allegro_dev* %123, %struct.allegro_channel* %124)
  %126 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %127 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %126, i32 0, i32 4
  %128 = call i32 @msecs_to_jiffies(i32 5000)
  %129 = call i64 @wait_for_completion_timeout(i32* %127, i32 %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %91
  %133 = load i32, i32* @ETIMEDOUT, align 4
  %134 = sub nsw i32 0, %133
  %135 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %136 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %91
  %138 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %139 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %152

143:                                              ; preds = %137
  %144 = load i32, i32* @debug, align 4
  %145 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %146 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %145, i32 0, i32 0
  %147 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %148 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = call i32 (i32, i32, i32*, i8*, i64, ...) @v4l2_dbg(i32 1, i32 %144, i32* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %150)
  store i32 0, i32* %2, align 4
  br label %158

152:                                              ; preds = %142
  %153 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %154 = call i32 @allegro_destroy_channel(%struct.allegro_channel* %153)
  %155 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %156 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %152, %143, %26, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @channel_exists(%struct.allegro_channel*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, ...) #1

declare dso_local i64 @allegro_next_user_id(%struct.allegro_dev*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i64, ...) #1

declare dso_local i32 @select_minimum_h264_level(i32, i32) #1

declare dso_local i32* @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @allegro_mcu_send_create_channel(%struct.allegro_dev*, %struct.allegro_channel*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @allegro_destroy_channel(%struct.allegro_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
