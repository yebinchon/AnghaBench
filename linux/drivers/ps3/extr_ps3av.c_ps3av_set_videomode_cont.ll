; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_set_videomode_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_set_videomode_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ps3av_set_videomode_cont.vesa = internal global i32 0, align 4
@PS3AV_MODE_MASK = common dso_local global i32 0, align 4
@PS3AV_MODE_WXGA = common dso_local global i32 0, align 4
@PS3AV_MODE_480P = common dso_local global i32 0, align 4
@PS3AV_MODE_HDCP_OFF = common dso_local global i32 0, align 4
@PS3AV_CMD_AV_HDMI_HDCP_OFF = common dso_local global i32 0, align 4
@PS3AV_STATUS_UNSUPPORTED_HDMI_MODE = common dso_local global i32 0, align 4
@ps3av = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ps3av_cmd_av_hdmi_mode failed\0A\00", align 1
@PS3AV_CMD_AV_HDMI_MODE_NORMAL = common dso_local global i32 0, align 4
@PS3AV_CMD_MUTE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ps3av_set_videomode_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3av_set_videomode_cont(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @ps3av_set_video_disable_sig()
  %7 = load i32, i32* @ps3av_set_videomode_cont.vesa, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PS3AV_MODE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PS3AV_MODE_WXGA, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @PS3AV_MODE_480P, align 4
  %17 = call i32 @ps3av_set_videomode_packet(i32 %16)
  br label %18

18:                                               ; preds = %15, %9, %2
  store i32 1, i32* @ps3av_set_videomode_cont.vesa, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PS3AV_MODE_HDCP_OFF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load i32, i32* @PS3AV_CMD_AV_HDMI_HDCP_OFF, align 4
  %25 = call i32 @ps3av_cmd_av_hdmi_mode(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PS3AV_STATUS_UNSUPPORTED_HDMI_MODE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ps3av, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ps3av, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %29
  br label %68

46:                                               ; preds = %18
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PS3AV_MODE_HDCP_OFF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i32, i32* @PS3AV_CMD_AV_HDMI_MODE_NORMAL, align 4
  %53 = call i32 @ps3av_cmd_av_hdmi_mode(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PS3AV_STATUS_UNSUPPORTED_HDMI_MODE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ps3av, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @dev_dbg(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %56, %51
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @ps3av_set_videomode_packet(i32 %69)
  %71 = call i32 @msleep(i32 1500)
  %72 = load i32, i32* @PS3AV_CMD_MUTE_OFF, align 4
  %73 = call i32 @ps3av_set_av_video_mute(i32 %72)
  ret void
}

declare dso_local i32 @ps3av_set_video_disable_sig(...) #1

declare dso_local i32 @ps3av_set_videomode_packet(i32) #1

declare dso_local i32 @ps3av_cmd_av_hdmi_mode(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ps3av_set_av_video_mute(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
