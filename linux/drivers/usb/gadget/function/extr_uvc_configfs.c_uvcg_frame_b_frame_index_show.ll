; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_b_frame_index_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_b_frame_index_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.config_item* }
%struct.uvcg_frame = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.config_item*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.uvcg_format = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_frame_b_frame_index_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_frame_b_frame_index_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uvcg_frame*, align 8
  %6 = alloca %struct.uvcg_format*, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.config_item*, align 8
  %9 = alloca %struct.config_item*, align 8
  %10 = alloca %struct.mutex*, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.config_item*, %struct.config_item** %3, align 8
  %13 = call %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item* %12)
  store %struct.uvcg_frame* %13, %struct.uvcg_frame** %5, align 8
  %14 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %15 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.mutex* %20, %struct.mutex** %10, align 8
  %21 = load %struct.mutex*, %struct.mutex** %10, align 8
  %22 = call i32 @mutex_lock(%struct.mutex* %21)
  %23 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %24 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.config_item*, %struct.config_item** %25, align 8
  store %struct.config_item* %26, %struct.config_item** %9, align 8
  %27 = load %struct.config_item*, %struct.config_item** %9, align 8
  %28 = call %struct.uvcg_format* @to_uvcg_format(%struct.config_item* %27)
  store %struct.uvcg_format* %28, %struct.uvcg_format** %6, align 8
  %29 = load %struct.uvcg_format*, %struct.uvcg_format** %6, align 8
  %30 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.config_item*, %struct.config_item** %9, align 8
  %38 = getelementptr inbounds %struct.config_item, %struct.config_item* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.config_item*, %struct.config_item** %42, align 8
  store %struct.config_item* %43, %struct.config_item** %8, align 8
  %44 = load %struct.config_item*, %struct.config_item** %8, align 8
  %45 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %44)
  store %struct.f_uvc_opts* %45, %struct.f_uvc_opts** %7, align 8
  %46 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %47 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(%struct.mutex* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %51 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %56 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(%struct.mutex* %56)
  br label %58

58:                                               ; preds = %36, %33
  %59 = load %struct.mutex*, %struct.mutex** %10, align 8
  %60 = call i32 @mutex_unlock(%struct.mutex* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.uvcg_format* @to_uvcg_format(%struct.config_item*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
