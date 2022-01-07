; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_format_bma_controls_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_format_bma_controls_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvcg_format = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.config_item* }
%struct.config_item = type { i32 }
%struct.TYPE_6__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvcg_format*, i8*, i64)* @uvcg_format_bma_controls_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_format_bma_controls_store(%struct.uvcg_format* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.uvcg_format*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.config_item*, align 8
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca i32, align 4
  store %struct.uvcg_format* %0, %struct.uvcg_format** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.uvcg_format*, %struct.uvcg_format** %4, align 8
  %12 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.mutex* %15, %struct.mutex** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mutex*, %struct.mutex** %9, align 8
  %19 = call i32 @mutex_lock(%struct.mutex* %18)
  %20 = load %struct.uvcg_format*, %struct.uvcg_format** %4, align 8
  %21 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.config_item*, %struct.config_item** %27, align 8
  store %struct.config_item* %28, %struct.config_item** %8, align 8
  %29 = load %struct.config_item*, %struct.config_item** %8, align 8
  %30 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %29)
  store %struct.f_uvc_opts* %30, %struct.f_uvc_opts** %7, align 8
  %31 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %32 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(%struct.mutex* %32)
  %34 = load %struct.uvcg_format*, %struct.uvcg_format** %4, align 8
  %35 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %40 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %3
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %80

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 48
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 120
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 88
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %49, %46
  br label %80

67:                                               ; preds = %60, %54
  %68 = load %struct.uvcg_format*, %struct.uvcg_format** %4, align 8
  %69 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = call i32 @hex2bin(i32 %70, i8* %72, i32 1)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %76, %66, %43
  %81 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %82 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(%struct.mutex* %82)
  %84 = load %struct.mutex*, %struct.mutex** %9, align 8
  %85 = call i32 @mutex_unlock(%struct.mutex* %84)
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @hex2bin(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
