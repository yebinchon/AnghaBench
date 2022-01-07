; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_camera_bm_controls_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_camera_bm_controls_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.config_item* }
%struct.TYPE_6__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, %struct.uvc_camera_terminal_descriptor }
%struct.uvc_camera_terminal_descriptor = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_default_camera_bm_controls_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_default_camera_bm_controls_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.f_uvc_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_camera_terminal_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.config_item*, %struct.config_item** %3, align 8
  %14 = call %struct.config_group* @to_config_group(%struct.config_item* %13)
  store %struct.config_group* %14, %struct.config_group** %5, align 8
  %15 = load %struct.config_group*, %struct.config_group** %5, align 8
  %16 = getelementptr inbounds %struct.config_group, %struct.config_group* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.mutex* %18, %struct.mutex** %8, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.mutex*, %struct.mutex** %8, align 8
  %21 = call i32 @mutex_lock(%struct.mutex* %20)
  %22 = load %struct.config_group*, %struct.config_group** %5, align 8
  %23 = getelementptr inbounds %struct.config_group, %struct.config_group* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.config_item*, %struct.config_item** %30, align 8
  store %struct.config_item* %31, %struct.config_item** %7, align 8
  %32 = load %struct.config_item*, %struct.config_item** %7, align 8
  %33 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %32)
  store %struct.f_uvc_opts* %33, %struct.f_uvc_opts** %6, align 8
  %34 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %35 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %34, i32 0, i32 1
  store %struct.uvc_camera_terminal_descriptor* %35, %struct.uvc_camera_terminal_descriptor** %9, align 8
  %36 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %37 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(%struct.mutex* %37)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %63, %2
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %9, align 8
  %42 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.uvc_camera_terminal_descriptor*, %struct.uvc_camera_terminal_descriptor** %9, align 8
  %48 = getelementptr inbounds %struct.uvc_camera_terminal_descriptor, %struct.uvc_camera_terminal_descriptor* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %68 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(%struct.mutex* %68)
  %70 = load %struct.mutex*, %struct.mutex** %8, align 8
  %71 = call i32 @mutex_unlock(%struct.mutex* %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local %struct.config_group* @to_config_group(%struct.config_item*) #1

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
