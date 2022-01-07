; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_dw_frame_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_dw_frame_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.uvcg_frame = type { i32*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.config_item* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }
%struct.uvcg_format = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@__uvcg_count_frm_intrv = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__uvcg_fill_frm_intrv = common dso_local global i32 0, align 4
@uvcg_config_compare_u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @uvcg_frame_dw_frame_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_frame_dw_frame_interval_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uvcg_frame*, align 8
  %8 = alloca %struct.f_uvc_opts*, align 8
  %9 = alloca %struct.config_item*, align 8
  %10 = alloca %struct.uvcg_format*, align 8
  %11 = alloca %struct.mutex*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.config_item*, %struct.config_item** %4, align 8
  %17 = call %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item* %16)
  store %struct.uvcg_frame* %17, %struct.uvcg_frame** %7, align 8
  %18 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %19 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store %struct.mutex* %24, %struct.mutex** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.mutex*, %struct.mutex** %11, align 8
  %26 = call i32 @mutex_lock(%struct.mutex* %25)
  %27 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %28 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.config_item*, %struct.config_item** %35, align 8
  store %struct.config_item* %36, %struct.config_item** %9, align 8
  %37 = load %struct.config_item*, %struct.config_item** %9, align 8
  %38 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %37)
  store %struct.f_uvc_opts* %38, %struct.f_uvc_opts** %8, align 8
  %39 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %40 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = call %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_14__* %42)
  store %struct.uvcg_format* %43, %struct.uvcg_format** %10, align 8
  %44 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %45 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(%struct.mutex* %45)
  %47 = load %struct.uvcg_format*, %struct.uvcg_format** %10, align 8
  %48 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %3
  %52 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %53 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %3
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %107

59:                                               ; preds = %51
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @__uvcg_count_frm_intrv, align 4
  %63 = call i32 @__uvcg_iter_frm_intrv(i8* %60, i64 %61, i32 %62, i32* %13)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %107

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32* @kcalloc(i32 %68, i32 4, i32 %69)
  store i32* %70, i32** %14, align 8
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %107

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* @__uvcg_fill_frm_intrv, align 4
  %80 = bitcast i32** %15 to i32*
  %81 = call i32 @__uvcg_iter_frm_intrv(i8* %77, i64 %78, i32 %79, i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @kfree(i32* %85)
  br label %107

87:                                               ; preds = %76
  %88 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %89 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %94 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %97 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.uvcg_frame*, %struct.uvcg_frame** %7, align 8
  %100 = getelementptr inbounds %struct.uvcg_frame, %struct.uvcg_frame* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @uvcg_config_compare_u32, align 4
  %104 = call i32 @sort(i32* %101, i32 %102, i32 4, i32 %103, i32* null)
  %105 = load i64, i64* %6, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %87, %84, %73, %66, %56
  %108 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %109 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(%struct.mutex* %109)
  %111 = load %struct.mutex*, %struct.mutex** %11, align 8
  %112 = call i32 @mutex_unlock(%struct.mutex* %111)
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local %struct.uvcg_frame* @to_uvcg_frame(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_14__*) #1

declare dso_local i32 @__uvcg_iter_frm_intrv(i8*, i64, i32, i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
