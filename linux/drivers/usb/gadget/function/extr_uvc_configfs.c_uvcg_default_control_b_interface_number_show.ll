; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_control_b_interface_number_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_control_b_interface_number_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item* }
%struct.config_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { i32, %struct.mutex }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_default_control_b_interface_number_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_default_control_b_interface_number_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.f_uvc_opts*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.config_item*, %struct.config_item** %3, align 8
  %11 = call %struct.config_group* @to_config_group(%struct.config_item* %10)
  store %struct.config_group* %11, %struct.config_group** %5, align 8
  %12 = load %struct.config_group*, %struct.config_group** %5, align 8
  %13 = getelementptr inbounds %struct.config_group, %struct.config_group* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.mutex* %15, %struct.mutex** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mutex*, %struct.mutex** %6, align 8
  %17 = call i32 @mutex_lock(%struct.mutex* %16)
  %18 = load %struct.config_item*, %struct.config_item** %3, align 8
  %19 = getelementptr inbounds %struct.config_item, %struct.config_item* %18, i32 0, i32 0
  %20 = load %struct.config_item*, %struct.config_item** %19, align 8
  store %struct.config_item* %20, %struct.config_item** %7, align 8
  %21 = load %struct.config_item*, %struct.config_item** %7, align 8
  %22 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %21)
  store %struct.f_uvc_opts* %22, %struct.f_uvc_opts** %8, align 8
  %23 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %24 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(%struct.mutex* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %28 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %8, align 8
  %36 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(%struct.mutex* %36)
  %38 = load %struct.mutex*, %struct.mutex** %6, align 8
  %39 = call i32 @mutex_unlock(%struct.mutex* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
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
