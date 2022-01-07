; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.allegro_channel = type { i64, i64, %struct.allegro_dev* }
%struct.allegro_dev = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: start streaming\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@ALLEGRO_STATE_ENCODING = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @allegro_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.allegro_channel*, align 8
  %6 = alloca %struct.allegro_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %8 = call %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.allegro_channel* %8, %struct.allegro_channel** %5, align 8
  %9 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %10 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %9, i32 0, i32 2
  %11 = load %struct.allegro_dev*, %struct.allegro_dev** %10, align 8
  store %struct.allegro_dev* %11, %struct.allegro_dev** %6, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.allegro_dev*, %struct.allegro_dev** %6, align 8
  %14 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %13, i32 0, i32 0
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @v4l2_dbg(i32 2, i32 %12, i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %32 = load i32, i32* @ALLEGRO_STATE_ENCODING, align 4
  %33 = call i32 @allegro_set_state(%struct.allegro_channel* %31, i32 %32)
  br label %44

34:                                               ; preds = %2
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %42 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %28
  ret i32 0
}

declare dso_local %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i32 @allegro_set_state(%struct.allegro_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
