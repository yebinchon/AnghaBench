; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.config_item* }
%struct.uvcg_frame = type { %struct.config_item, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvcg_format = type { i64, i32 }
%struct.f_uvc_opts = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UVCG_UNCOMPRESSED = common dso_local global i64 0, align 8
@UVC_VS_FRAME_UNCOMPRESSED = common dso_local global i32 0, align 4
@UVCG_MJPEG = common dso_local global i64 0, align 8
@UVC_VS_FRAME_MJPEG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@uvcg_frame_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @uvcg_frame_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @uvcg_frame_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uvcg_frame*, align 8
  %7 = alloca %struct.uvcg_format*, align 8
  %8 = alloca %struct.f_uvc_opts*, align 8
  %9 = alloca %struct.config_item*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.uvcg_frame* @kzalloc(i32 56, i32 %10)
  store %struct.uvcg_frame* %11, %struct.uvcg_frame** %6, align 8
  %12 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %13 = icmp ne %struct.uvcg_frame* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.config_item* @ERR_PTR(i32 %16)
  store %struct.config_item* %17, %struct.config_item** %3, align 8
  br label %111

18:                                               ; preds = %2
  %19 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %20 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %21 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  store i32 %19, i32* %22, align 8
  %23 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %24 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %27 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 640, i32* %28, align 4
  %29 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %30 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i32 360, i32* %31, align 8
  %32 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %33 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 18432000, i32* %34, align 4
  %35 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %36 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i32 55296000, i32* %37, align 8
  %38 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %39 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32 460800, i32* %40, align 4
  %41 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %42 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  store i32 666666, i32* %43, align 8
  %44 = load %struct.config_group*, %struct.config_group** %4, align 8
  %45 = getelementptr inbounds %struct.config_group, %struct.config_group* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.config_item*, %struct.config_item** %50, align 8
  store %struct.config_item* %51, %struct.config_item** %9, align 8
  %52 = load %struct.config_item*, %struct.config_item** %9, align 8
  %53 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %52)
  store %struct.f_uvc_opts* %53, %struct.f_uvc_opts** %8, align 8
  %54 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %55 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.config_group*, %struct.config_group** %4, align 8
  %58 = getelementptr inbounds %struct.config_group, %struct.config_group* %57, i32 0, i32 0
  %59 = call %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_8__* %58)
  store %struct.uvcg_format* %59, %struct.uvcg_format** %7, align 8
  %60 = load %struct.uvcg_format*, %struct.uvcg_format** %7, align 8
  %61 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UVCG_UNCOMPRESSED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %18
  %66 = load i32, i32* @UVC_VS_FRAME_UNCOMPRESSED, align 4
  %67 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %68 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* @UVCG_UNCOMPRESSED, align 8
  %71 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %72 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %97

73:                                               ; preds = %18
  %74 = load %struct.uvcg_format*, %struct.uvcg_format** %7, align 8
  %75 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @UVCG_MJPEG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* @UVC_VS_FRAME_MJPEG, align 4
  %81 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %82 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 7
  store i32 %80, i32* %83, align 4
  %84 = load i64, i64* @UVCG_MJPEG, align 8
  %85 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %86 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %96

87:                                               ; preds = %73
  %88 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %89 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %92 = call i32 @kfree(%struct.uvcg_frame* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.config_item* @ERR_PTR(i32 %94)
  store %struct.config_item* %95, %struct.config_item** %3, align 8
  br label %111

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %65
  %98 = load %struct.uvcg_format*, %struct.uvcg_format** %7, align 8
  %99 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %103 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %106 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %105, i32 0, i32 0
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @config_item_init_type_name(%struct.config_item* %106, i8* %107, i32* @uvcg_frame_type)
  %109 = load %struct.uvcg_frame*, %struct.uvcg_frame** %6, align 8
  %110 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %109, i32 0, i32 0
  store %struct.config_item* %110, %struct.config_item** %3, align 8
  br label %111

111:                                              ; preds = %97, %87, %14
  %112 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %112
}

declare dso_local %struct.uvcg_frame* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.uvcg_frame*) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
