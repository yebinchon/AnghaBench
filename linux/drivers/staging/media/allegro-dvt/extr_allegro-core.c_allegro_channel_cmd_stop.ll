; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_cmd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_channel_cmd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { i32, %struct.TYPE_2__, %struct.allegro_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"channel %d: CMD_STOP: continue encoding src buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"channel %d: CMD_STOP: signaling EOS\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"channel %d: CMD_STOP: wait for CAPTURE buffer to signal EOS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_channel*)* @allegro_channel_cmd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_channel_cmd_stop(%struct.allegro_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.allegro_channel*, align 8
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.allegro_channel* %0, %struct.allegro_channel** %3, align 8
  %6 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %7 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %6, i32 0, i32 2
  %8 = load %struct.allegro_dev*, %struct.allegro_dev** %7, align 8
  store %struct.allegro_dev* %8, %struct.allegro_dev** %4, align 8
  %9 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %10 = call i32 @allegro_get_state(%struct.allegro_channel* %9)
  switch i32 %10, label %17 [
    i32 130, label %11
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %16 = call i32 @allegro_set_state(%struct.allegro_channel* %15, i32 130)
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

18:                                               ; preds = %14
  %19 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %20 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @v4l2_m2m_num_src_bufs_ready(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* @debug, align 4
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %28 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %27, i32 0, i32 0
  %29 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %30 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @v4l2_dbg(i32 1, i32 %26, i32* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %2, align 4
  br label %63

33:                                               ; preds = %18
  %34 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %35 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %37)
  store %struct.vb2_v4l2_buffer* %38, %struct.vb2_v4l2_buffer** %5, align 8
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %40 = icmp ne %struct.vb2_v4l2_buffer* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* @debug, align 4
  %43 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %44 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %43, i32 0, i32 0
  %45 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %46 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @v4l2_dbg(i32 1, i32 %42, i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %51 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %52 = call i32 @allegro_channel_buf_done(%struct.allegro_channel* %49, %struct.vb2_v4l2_buffer* %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %63

53:                                               ; preds = %33
  %54 = load i32, i32* @debug, align 4
  %55 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %56 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %55, i32 0, i32 0
  %57 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %58 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @v4l2_dbg(i32 1, i32 %54, i32* %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.allegro_channel*, %struct.allegro_channel** %3, align 8
  %62 = call i32 @allegro_set_state(%struct.allegro_channel* %61, i32 128)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %53, %41, %25, %17, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @allegro_get_state(%struct.allegro_channel*) #1

declare dso_local i32 @allegro_set_state(%struct.allegro_channel*, i32) #1

declare dso_local i64 @v4l2_m2m_num_src_bufs_ready(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @allegro_channel_buf_done(%struct.allegro_channel*, %struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
