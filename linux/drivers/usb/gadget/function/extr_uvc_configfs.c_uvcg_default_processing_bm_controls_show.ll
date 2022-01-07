; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_processing_bm_controls_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_default_processing_bm_controls_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.config_item* }
%struct.TYPE_5__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, %struct.uvc_processing_unit_descriptor }
%struct.uvc_processing_unit_descriptor = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @uvcg_default_processing_bm_controls_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_default_processing_bm_controls_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_group*, align 8
  %6 = alloca %struct.f_uvc_opts*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_processing_unit_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.config_item*, %struct.config_item** %3, align 8
  %14 = call %struct.config_group* @to_config_group(%struct.config_item* %13)
  store %struct.config_group* %14, %struct.config_group** %5, align 8
  %15 = load %struct.config_group*, %struct.config_group** %5, align 8
  %16 = getelementptr inbounds %struct.config_group, %struct.config_group* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.mutex* %18, %struct.mutex** %8, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.mutex*, %struct.mutex** %8, align 8
  %21 = call i32 @mutex_lock(%struct.mutex* %20)
  %22 = load %struct.config_group*, %struct.config_group** %5, align 8
  %23 = getelementptr inbounds %struct.config_group, %struct.config_group* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.config_item*, %struct.config_item** %28, align 8
  store %struct.config_item* %29, %struct.config_item** %7, align 8
  %30 = load %struct.config_item*, %struct.config_item** %7, align 8
  %31 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %30)
  store %struct.f_uvc_opts* %31, %struct.f_uvc_opts** %6, align 8
  %32 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %33 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %32, i32 0, i32 1
  store %struct.uvc_processing_unit_descriptor* %33, %struct.uvc_processing_unit_descriptor** %9, align 8
  %34 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %35 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(%struct.mutex* %35)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %61, %2
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %9, align 8
  %40 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.uvc_processing_unit_descriptor*, %struct.uvc_processing_unit_descriptor** %9, align 8
  %46 = getelementptr inbounds %struct.uvc_processing_unit_descriptor, %struct.uvc_processing_unit_descriptor* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %6, align 8
  %66 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(%struct.mutex* %66)
  %68 = load %struct.mutex*, %struct.mutex** %8, align 8
  %69 = call i32 @mutex_unlock(%struct.mutex* %68)
  %70 = load i32, i32* %10, align 4
  ret i32 %70
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
