; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_dw_frame_interval_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_dw_frame_interval_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.uvcg_frame = type { i32*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.config_item* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_frame_dw_frame_interval_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_frame_dw_frame_interval_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uvcg_frame*, align 8
  %6 = alloca %struct.f_uvc_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.config_item*, %struct.config_item** %3, align 8
  %13 = call %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item* %12)
  store %struct.uvcg_frame* %13, %struct.uvcg_frame** %5, align 8
  %14 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %15 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %struct.mutex* %20, %struct.mutex** %8, align 8
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.mutex*, %struct.mutex** %8, align 8
  %23 = call i32 @mutex_lock(%struct.mutex* %22)
  %24 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %25 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.config_item*, %struct.config_item** %32, align 8
  store %struct.config_item* %33, %struct.config_item** %7, align 8
  %34 = load %struct.config_item*, %struct.config_item** %7, align 8
  %35 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %34)
  store %struct.f_uvc_opts* %35, %struct.f_uvc_opts** %6, align 8
  %36 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %37 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(%struct.mutex* %37)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %64, %2
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %42 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.uvcg_frame*, %struct.uvcg_frame** %5, align 8
  %49 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %46
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %39

67:                                               ; preds = %39
  %68 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %69 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(%struct.mutex* %69)
  %71 = load %struct.mutex*, %struct.mutex** %8, align 8
  %72 = call i32 @mutex_unlock(%struct.mutex* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
