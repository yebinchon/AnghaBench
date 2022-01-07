; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_frame_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.config_item* }
%struct.config_item = type { i32 }
%struct.uvcg_format = type { i32 }
%struct.f_uvc_opts = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @uvcg_frame_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvcg_frame_drop(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.uvcg_format*, align 8
  %6 = alloca %struct.f_uvc_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %8 = load %struct.config_group*, %struct.config_group** %3, align 8
  %9 = getelementptr inbounds %struct.config_group, %struct.config_group* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.config_item*, %struct.config_item** %14, align 8
  store %struct.config_item* %15, %struct.config_item** %7, align 8
  %16 = load %struct.config_item*, %struct.config_item** %7, align 8
  %17 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %16)
  store %struct.f_uvc_opts* %17, %struct.f_uvc_opts** %6, align 8
  %18 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %19 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.config_group*, %struct.config_group** %3, align 8
  %22 = getelementptr inbounds %struct.config_group, %struct.config_group* %21, i32 0, i32 0
  %23 = call %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_6__* %22)
  store %struct.uvcg_format* %23, %struct.uvcg_format** %5, align 8
  %24 = load %struct.uvcg_format*, %struct.uvcg_format** %5, align 8
  %25 = getelementptr inbounds %struct.uvcg_format, %struct.uvcg_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %29 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.config_item*, %struct.config_item** %4, align 8
  %32 = call i32 @config_item_put(%struct.config_item* %31)
  ret void
}

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uvcg_format* @to_uvcg_format(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
