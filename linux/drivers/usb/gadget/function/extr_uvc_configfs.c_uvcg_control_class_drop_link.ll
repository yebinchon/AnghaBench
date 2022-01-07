; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_drop_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_drop_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }
%struct.uvc_descriptor_header = type { i32 }
%struct.uvcg_control_header = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, %struct.config_item*)* @uvcg_control_class_drop_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvcg_control_class_drop_link(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_descriptor_header**, align 8
  %10 = alloca %struct.uvcg_control_header*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %11 = load %struct.config_item*, %struct.config_item** %3, align 8
  %12 = getelementptr inbounds %struct.config_item, %struct.config_item* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.mutex* %16, %struct.mutex** %8, align 8
  %17 = load %struct.mutex*, %struct.mutex** %8, align 8
  %18 = call i32 @mutex_lock(%struct.mutex* %17)
  %19 = load %struct.config_item*, %struct.config_item** %3, align 8
  %20 = getelementptr inbounds %struct.config_item, %struct.config_item* %19, i32 0, i32 0
  %21 = load %struct.config_item*, %struct.config_item** %20, align 8
  %22 = getelementptr inbounds %struct.config_item, %struct.config_item* %21, i32 0, i32 0
  %23 = load %struct.config_item*, %struct.config_item** %22, align 8
  store %struct.config_item* %23, %struct.config_item** %5, align 8
  %24 = load %struct.config_item*, %struct.config_item** %5, align 8
  %25 = call i32 @to_config_group(%struct.config_item* %24)
  %26 = call %struct.config_item* @config_group_find_item(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.config_item* %26, %struct.config_item** %6, align 8
  %27 = load %struct.config_item*, %struct.config_item** %6, align 8
  %28 = icmp ne %struct.config_item* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.config_item*, %struct.config_item** %4, align 8
  %31 = getelementptr inbounds %struct.config_item, %struct.config_item* %30, i32 0, i32 0
  %32 = load %struct.config_item*, %struct.config_item** %31, align 8
  %33 = load %struct.config_item*, %struct.config_item** %6, align 8
  %34 = icmp ne %struct.config_item* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %2
  br label %68

36:                                               ; preds = %29
  %37 = load %struct.config_item*, %struct.config_item** %5, align 8
  %38 = getelementptr inbounds %struct.config_item, %struct.config_item* %37, i32 0, i32 0
  %39 = load %struct.config_item*, %struct.config_item** %38, align 8
  %40 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %39)
  store %struct.f_uvc_opts* %40, %struct.f_uvc_opts** %7, align 8
  %41 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %42 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(%struct.mutex* %42)
  %44 = load %struct.config_item*, %struct.config_item** %3, align 8
  %45 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %46 = call %struct.uvc_descriptor_header** @uvcg_get_ctl_class_arr(%struct.config_item* %44, %struct.f_uvc_opts* %45)
  store %struct.uvc_descriptor_header** %46, %struct.uvc_descriptor_header*** %9, align 8
  %47 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %48 = icmp ne %struct.uvc_descriptor_header** %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %51 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %36
  br label %64

55:                                               ; preds = %49
  %56 = load %struct.config_item*, %struct.config_item** %4, align 8
  %57 = call %struct.uvcg_control_header* @to_uvcg_control_header(%struct.config_item* %56)
  store %struct.uvcg_control_header* %57, %struct.uvcg_control_header** %10, align 8
  %58 = load %struct.uvcg_control_header*, %struct.uvcg_control_header** %10, align 8
  %59 = getelementptr inbounds %struct.uvcg_control_header, %struct.uvcg_control_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %63 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %62, i64 0
  store %struct.uvc_descriptor_header* null, %struct.uvc_descriptor_header** %63, align 8
  br label %64

64:                                               ; preds = %55, %54
  %65 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %66 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(%struct.mutex* %66)
  br label %68

68:                                               ; preds = %64, %35
  %69 = load %struct.config_item*, %struct.config_item** %6, align 8
  %70 = call i32 @config_item_put(%struct.config_item* %69)
  %71 = load %struct.mutex*, %struct.mutex** %8, align 8
  %72 = call i32 @mutex_unlock(%struct.mutex* %71)
  ret void
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.config_item* @config_group_find_item(i32, i8*) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local %struct.uvc_descriptor_header** @uvcg_get_ctl_class_arr(%struct.config_item*, %struct.f_uvc_opts*) #1

declare dso_local %struct.uvcg_control_header* @to_uvcg_control_header(%struct.config_item*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
