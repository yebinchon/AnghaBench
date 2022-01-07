; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, %struct.TYPE_8__*, i32 (i32*)*, %struct.TYPE_7__, i32, i32, i32, %struct.omap_dss_device }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { i32* }

@hdmi = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"ENTER hdmi_display_enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to enable display: no output/manager\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to power on device\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Error restoring audio configuration: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @hdmi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.omap_dss_device* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 11), %struct.omap_dss_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 2))
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %19 = call i32 @hdmi_power_on_full(%struct.omap_dss_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %54

24:                                               ; preds = %17
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 0), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 7, i32 0, i32 0), align 8
  %29 = call i32 @hdmi5_audio_config(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 10), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 9), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 8), i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 6), align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 5), align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 %35(i32* %37)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 0), align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 3), i64 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 0), align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 4), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @hdmi_start_audio_stream(%struct.TYPE_9__* @hdmi)
  br label %50

50:                                               ; preds = %48, %45, %40
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 1), align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 3), i64 %51)
  %53 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 2))
  store i32 0, i32* %2, align 4
  br label %57

54:                                               ; preds = %22, %13
  %55 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hdmi, i32 0, i32 2))
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @hdmi_power_on_full(%struct.omap_dss_device*) #1

declare dso_local i32 @hdmi5_audio_config(i32*, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_start_audio_stream(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
