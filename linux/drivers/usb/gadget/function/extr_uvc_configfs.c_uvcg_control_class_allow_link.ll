; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_allow_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_control_class_allow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }
%struct.uvc_descriptor_header = type { i32 }
%struct.uvcg_control_header = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*)* @uvcg_control_class_allow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_control_class_allow_link(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_descriptor_header**, align 8
  %10 = alloca %struct.uvcg_control_header*, align 8
  %11 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %12 = load %struct.config_item*, %struct.config_item** %3, align 8
  %13 = getelementptr inbounds %struct.config_item, %struct.config_item* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.mutex* %17, %struct.mutex** %8, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mutex*, %struct.mutex** %8, align 8
  %21 = call i32 @mutex_lock(%struct.mutex* %20)
  %22 = load %struct.config_item*, %struct.config_item** %3, align 8
  %23 = getelementptr inbounds %struct.config_item, %struct.config_item* %22, i32 0, i32 0
  %24 = load %struct.config_item*, %struct.config_item** %23, align 8
  %25 = getelementptr inbounds %struct.config_item, %struct.config_item* %24, i32 0, i32 0
  %26 = load %struct.config_item*, %struct.config_item** %25, align 8
  store %struct.config_item* %26, %struct.config_item** %5, align 8
  %27 = load %struct.config_item*, %struct.config_item** %5, align 8
  %28 = call i32 @to_config_group(%struct.config_item* %27)
  %29 = call %struct.config_item* @config_group_find_item(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.config_item* %29, %struct.config_item** %6, align 8
  %30 = load %struct.config_item*, %struct.config_item** %6, align 8
  %31 = icmp ne %struct.config_item* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.config_item*, %struct.config_item** %4, align 8
  %34 = getelementptr inbounds %struct.config_item, %struct.config_item* %33, i32 0, i32 0
  %35 = load %struct.config_item*, %struct.config_item** %34, align 8
  %36 = load %struct.config_item*, %struct.config_item** %6, align 8
  %37 = icmp ne %struct.config_item* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %2
  br label %82

39:                                               ; preds = %32
  %40 = load %struct.config_item*, %struct.config_item** %5, align 8
  %41 = getelementptr inbounds %struct.config_item, %struct.config_item* %40, i32 0, i32 0
  %42 = load %struct.config_item*, %struct.config_item** %41, align 8
  %43 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %42)
  store %struct.f_uvc_opts* %43, %struct.f_uvc_opts** %7, align 8
  %44 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %45 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(%struct.mutex* %45)
  %47 = load %struct.config_item*, %struct.config_item** %3, align 8
  %48 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %49 = call %struct.uvc_descriptor_header** @uvcg_get_ctl_class_arr(%struct.config_item* %47, %struct.f_uvc_opts* %48)
  store %struct.uvc_descriptor_header** %49, %struct.uvc_descriptor_header*** %9, align 8
  %50 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %51 = icmp ne %struct.uvc_descriptor_header** %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %78

53:                                               ; preds = %39
  %54 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %55 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %60 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %59, i64 0
  %61 = load %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %60, align 8
  %62 = icmp ne %struct.uvc_descriptor_header* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %78

66:                                               ; preds = %58
  %67 = load %struct.config_item*, %struct.config_item** %4, align 8
  %68 = call %struct.uvcg_control_header* @to_uvcg_control_header(%struct.config_item* %67)
  store %struct.uvcg_control_header* %68, %struct.uvcg_control_header** %10, align 8
  %69 = load %struct.uvcg_control_header*, %struct.uvcg_control_header** %10, align 8
  %70 = getelementptr inbounds %struct.uvcg_control_header, %struct.uvcg_control_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.uvcg_control_header*, %struct.uvcg_control_header** %10, align 8
  %74 = getelementptr inbounds %struct.uvcg_control_header, %struct.uvcg_control_header* %73, i32 0, i32 0
  %75 = bitcast i32* %74 to %struct.uvc_descriptor_header*
  %76 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %9, align 8
  %77 = getelementptr inbounds %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %76, i64 0
  store %struct.uvc_descriptor_header* %75, %struct.uvc_descriptor_header** %77, align 8
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %66, %63, %52
  %79 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %80 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(%struct.mutex* %80)
  br label %82

82:                                               ; preds = %78, %38
  %83 = load %struct.config_item*, %struct.config_item** %6, align 8
  %84 = call i32 @config_item_put(%struct.config_item* %83)
  %85 = load %struct.mutex*, %struct.mutex** %8, align 8
  %86 = call i32 @mutex_unlock(%struct.mutex* %85)
  %87 = load i32, i32* %11, align 4
  ret i32 %87
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
