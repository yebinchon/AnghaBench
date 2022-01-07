; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_class_drop_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_class_drop_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i64 }
%struct.uvc_descriptor_header = type opaque
%struct.uvcg_streaming_header = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, %struct.config_item*)* @uvcg_streaming_class_drop_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvcg_streaming_class_drop_link(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_descriptor_header***, align 8
  %10 = alloca %struct.uvcg_streaming_header*, align 8
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
  br label %82

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
  %46 = call i32********* @__uvcg_get_stream_class_arr(%struct.config_item* %44, %struct.f_uvc_opts* %45)
  %47 = bitcast i32********* %46 to %struct.uvc_descriptor_header***
  store %struct.uvc_descriptor_header*** %47, %struct.uvc_descriptor_header**** %9, align 8
  %48 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %49 = icmp ne %struct.uvc_descriptor_header*** %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %52 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %51, align 8
  %53 = icmp ne %struct.uvc_descriptor_header** %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %36
  br label %78

55:                                               ; preds = %50
  %56 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %57 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %78

61:                                               ; preds = %55
  %62 = load %struct.config_item*, %struct.config_item** %4, align 8
  %63 = call %struct.uvcg_streaming_header* @to_uvcg_streaming_header(%struct.config_item* %62)
  store %struct.uvcg_streaming_header* %63, %struct.uvcg_streaming_header** %10, align 8
  %64 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %10, align 8
  %65 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %69 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %68, align 8
  %70 = load %struct.uvc_descriptor_header*, %struct.uvc_descriptor_header** %69, align 8
  %71 = bitcast %struct.uvc_descriptor_header* %70 to i32******
  %72 = call i32 @kfree(i32****** %71)
  %73 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %74 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %73, align 8
  %75 = bitcast %struct.uvc_descriptor_header** %74 to i32******
  %76 = call i32 @kfree(i32****** %75)
  %77 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  store %struct.uvc_descriptor_header** null, %struct.uvc_descriptor_header*** %77, align 8
  br label %78

78:                                               ; preds = %61, %60, %54
  %79 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %80 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(%struct.mutex* %80)
  br label %82

82:                                               ; preds = %78, %35
  %83 = load %struct.config_item*, %struct.config_item** %6, align 8
  %84 = call i32 @config_item_put(%struct.config_item* %83)
  %85 = load %struct.mutex*, %struct.mutex** %8, align 8
  %86 = call i32 @mutex_unlock(%struct.mutex* %85)
  ret void
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.config_item* @config_group_find_item(i32, i8*) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local i32********* @__uvcg_get_stream_class_arr(%struct.config_item*, %struct.f_uvc_opts*) #1

declare dso_local %struct.uvcg_streaming_header* @to_uvcg_streaming_header(%struct.config_item*) #1

declare dso_local i32 @kfree(i32******) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
