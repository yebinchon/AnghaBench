; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_probe_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_probe_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_channel_config = type { i64, i64 }
%struct.most_video_dev = type { i32, %struct.TYPE_4__, i32, %struct.most_interface*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"channel already linked\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MOST_CH_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong direction, expect rx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MOST_CH_SYNC = common dso_local global i64 0, align 8
@MOST_CH_ISOC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"wrong channel type, expect sync or isoc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@comp_v4l2_dev_release = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"v4l2_device_register() failed\0A\00", align 1
@list_lock = common dso_local global i32 0, align 4
@video_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32, %struct.most_channel_config*, i8*, i8*)* @comp_probe_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_probe_channel(%struct.most_interface* %0, i32 %1, %struct.most_channel_config* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.most_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.most_channel_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.most_video_dev*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.most_channel_config* %2, %struct.most_channel_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.most_video_dev* @get_comp_dev(%struct.most_interface* %14, i32 %15)
  store %struct.most_video_dev* %16, %struct.most_video_dev** %13, align 8
  %17 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %18 = icmp ne %struct.most_video_dev* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %116

23:                                               ; preds = %5
  %24 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %25 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MOST_CH_RX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %116

33:                                               ; preds = %23
  %34 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %35 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MOST_CH_SYNC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.most_channel_config*, %struct.most_channel_config** %9, align 8
  %41 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MOST_CH_ISOC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %116

49:                                               ; preds = %39, %33
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.most_video_dev* @kzalloc(i32 40, i32 %50)
  store %struct.most_video_dev* %51, %struct.most_video_dev** %13, align 8
  %52 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %53 = icmp ne %struct.most_video_dev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %116

57:                                               ; preds = %49
  %58 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %59 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %58, i32 0, i32 7
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %62 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %61, i32 0, i32 6
  %63 = call i32 @atomic_set(i32* %62, i32 -1)
  %64 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %65 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %64, i32 0, i32 5
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %68 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %67, i32 0, i32 4
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.most_interface*, %struct.most_interface** %7, align 8
  %71 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %72 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %71, i32 0, i32 3
  store %struct.most_interface* %70, %struct.most_interface** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %75 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @comp_v4l2_dev_release, align 4
  %77 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %78 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %81 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @strlcpy(i32 %83, i8* %84, i32 4)
  %86 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %87 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %86, i32 0, i32 1
  %88 = call i32 @v4l2_device_register(i32* null, %struct.TYPE_4__* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %57
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %94 = call i32 @kfree(%struct.most_video_dev* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %116

96:                                               ; preds = %57
  %97 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %98 = call i32 @comp_register_videodev(%struct.most_video_dev* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %108

102:                                              ; preds = %96
  %103 = call i32 @spin_lock_irq(i32* @list_lock)
  %104 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %105 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %104, i32 0, i32 2
  %106 = call i32 @list_add(i32* %105, i32* @video_devices)
  %107 = call i32 @spin_unlock_irq(i32* @list_lock)
  store i32 0, i32* %6, align 4
  br label %116

108:                                              ; preds = %101
  %109 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %110 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %109, i32 0, i32 1
  %111 = call i32 @v4l2_device_disconnect(%struct.TYPE_4__* %110)
  %112 = load %struct.most_video_dev*, %struct.most_video_dev** %13, align 8
  %113 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %112, i32 0, i32 1
  %114 = call i32 @v4l2_device_put(%struct.TYPE_4__* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %108, %102, %91, %54, %45, %29, %19
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.most_video_dev* @get_comp_dev(%struct.most_interface*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.most_video_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.most_video_dev*) #1

declare dso_local i32 @comp_register_videodev(%struct.most_video_dev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_device_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
