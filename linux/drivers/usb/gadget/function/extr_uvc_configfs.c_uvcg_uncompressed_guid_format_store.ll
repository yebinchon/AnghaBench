; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_guid_format_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_guid_format_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.uvcg_uncompressed = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.config_item* }
%struct.TYPE_8__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @uvcg_uncompressed_guid_format_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_uncompressed_guid_format_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.uvcg_uncompressed*, align 8
  %8 = alloca %struct.f_uvc_opts*, align 8
  %9 = alloca %struct.config_item*, align 8
  %10 = alloca %struct.mutex*, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.config_item*, %struct.config_item** %4, align 8
  %13 = call %struct.uvcg_uncompressed* @to_uvcg_uncompressed(%struct.config_item* %12)
  store %struct.uvcg_uncompressed* %13, %struct.uvcg_uncompressed** %7, align 8
  %14 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %7, align 8
  %15 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.mutex* %19, %struct.mutex** %10, align 8
  %20 = load %struct.mutex*, %struct.mutex** %10, align 8
  %21 = call i32 @mutex_lock(%struct.mutex* %20)
  %22 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %7, align 8
  %23 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.config_item*, %struct.config_item** %30, align 8
  store %struct.config_item* %31, %struct.config_item** %9, align 8
  %32 = load %struct.config_item*, %struct.config_item** %9, align 8
  %33 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %32)
  store %struct.f_uvc_opts* %33, %struct.f_uvc_opts** %8, align 8
  %34 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %35 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(%struct.mutex* %35)
  %37 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %7, align 8
  %38 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %3
  %43 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %44 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %3
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %59

50:                                               ; preds = %42
  %51 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %7, align 8
  %52 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @min(i32 4, i64 %56)
  %58 = call i32 @memcpy(i32 %54, i8* %55, i32 %57)
  store i32 4, i32* %11, align 4
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %61 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(%struct.mutex* %61)
  %63 = load %struct.mutex*, %struct.mutex** %10, align 8
  %64 = call i32 @mutex_unlock(%struct.mutex* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local %struct.uvcg_uncompressed* @to_uvcg_uncompressed(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
