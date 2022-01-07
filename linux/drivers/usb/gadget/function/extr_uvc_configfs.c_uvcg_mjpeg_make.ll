; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_mjpeg_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_mjpeg_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.uvcg_mjpeg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.config_group, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_DT_FORMAT_MJPEG_SIZE = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UVC_VS_FORMAT_MJPEG = common dso_local global i32 0, align 4
@UVCG_MJPEG = common dso_local global i32 0, align 4
@uvcg_mjpeg_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @uvcg_mjpeg_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @uvcg_mjpeg_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uvcg_mjpeg*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uvcg_mjpeg* @kzalloc(i32 64, i32 %7)
  store %struct.uvcg_mjpeg* %8, %struct.uvcg_mjpeg** %6, align 8
  %9 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %10 = icmp ne %struct.uvcg_mjpeg* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_group* @ERR_PTR(i32 %13)
  store %struct.config_group* %14, %struct.config_group** %3, align 8
  br label %55

15:                                               ; preds = %2
  %16 = load i32, i32* @UVC_DT_FORMAT_MJPEG_SIZE, align 4
  %17 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %18 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %21 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %22 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 6
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @UVC_VS_FORMAT_MJPEG, align 4
  %25 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %26 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 8
  %28 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %29 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %32 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %35 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %38 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %41 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @UVCG_MJPEG, align 4
  %44 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %45 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %48 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @config_group_init_type_name(%struct.config_group* %49, i8* %50, i32* @uvcg_mjpeg_type)
  %52 = load %struct.uvcg_mjpeg*, %struct.uvcg_mjpeg** %6, align 8
  %53 = getelementptr inbounds %struct.uvcg_mjpeg, %struct.uvcg_mjpeg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.config_group* %54, %struct.config_group** %3, align 8
  br label %55

55:                                               ; preds = %15, %11
  %56 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %56
}

declare dso_local %struct.uvcg_mjpeg* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
