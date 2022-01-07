; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_guid_format_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_uncompressed_guid_format_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.uvcg_uncompressed = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.config_item* }
%struct.TYPE_12__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_uncompressed_guid_format_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_uncompressed_guid_format_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uvcg_uncompressed*, align 8
  %6 = alloca %struct.f_uvc_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.mutex*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = call %struct.uvcg_uncompressed* @to_uvcg_uncompressed(%struct.config_item* %9)
  store %struct.uvcg_uncompressed* %10, %struct.uvcg_uncompressed** %5, align 8
  %11 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %5, align 8
  %12 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store %struct.mutex* %16, %struct.mutex** %8, align 8
  %17 = load %struct.mutex*, %struct.mutex** %8, align 8
  %18 = call i32 @mutex_lock(%struct.mutex* %17)
  %19 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %5, align 8
  %20 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.config_item*, %struct.config_item** %27, align 8
  store %struct.config_item* %28, %struct.config_item** %7, align 8
  %29 = load %struct.config_item*, %struct.config_item** %7, align 8
  %30 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %29)
  store %struct.f_uvc_opts* %30, %struct.f_uvc_opts** %6, align 8
  %31 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %32 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(%struct.mutex* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.uvcg_uncompressed*, %struct.uvcg_uncompressed** %5, align 8
  %36 = getelementptr inbounds %struct.uvcg_uncompressed, %struct.uvcg_uncompressed* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i8* %34, i32 %38, i32 4)
  %40 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %41 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(%struct.mutex* %41)
  %43 = load %struct.mutex*, %struct.mutex** %8, align 8
  %44 = call i32 @mutex_unlock(%struct.mutex* %43)
  ret i32 4
}

declare dso_local %struct.uvcg_uncompressed* @to_uvcg_uncompressed(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
