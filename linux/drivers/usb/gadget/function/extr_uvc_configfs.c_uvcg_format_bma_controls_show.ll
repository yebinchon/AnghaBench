; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_format_bma_controls_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_format_bma_controls_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvcg_format = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.config_item* }
%struct.config_item = type { i32 }
%struct.TYPE_6__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@UVCG_STREAMING_CONTROL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvcg_format*, i8*)* @uvcg_format_bma_controls_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_format_bma_controls_show(%struct.uvcg_format* %0, i8* %1) #0 {
  %3 = alloca %struct.uvcg_format*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.f_uvc_opts*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.uvcg_format* %0, %struct.uvcg_format** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.uvcg_format*, %struct.uvcg_format** %3, align 8
  %12 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.mutex* %15, %struct.mutex** %7, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %10, align 8
  %17 = load %struct.mutex*, %struct.mutex** %7, align 8
  %18 = call i32 @mutex_lock(%struct.mutex* %17)
  %19 = load %struct.uvcg_format*, %struct.uvcg_format** %3, align 8
  %20 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.config_item*, %struct.config_item** %26, align 8
  store %struct.config_item* %27, %struct.config_item** %6, align 8
  %28 = load %struct.config_item*, %struct.config_item** %6, align 8
  %29 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %28)
  store %struct.f_uvc_opts* %29, %struct.f_uvc_opts** %5, align 8
  %30 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %31 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(%struct.mutex* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %59, %2
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @UVCG_STREAMING_CONTROL_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.uvcg_format*, %struct.uvcg_format** %3, align 8
  %46 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %5, align 8
  %64 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(%struct.mutex* %64)
  %66 = load %struct.mutex*, %struct.mutex** %7, align 8
  %67 = call i32 @mutex_unlock(%struct.mutex* %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
