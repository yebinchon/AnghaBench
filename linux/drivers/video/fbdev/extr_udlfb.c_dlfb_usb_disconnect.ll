; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dlfb_data = type { i32, i32, %struct.fb_info* }
%struct.fb_info = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"USB disconnect starting\0A\00", align 1
@fb_device_attrs = common dso_local global i32* null, align 8
@edid_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @dlfb_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dlfb_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.dlfb_data* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.dlfb_data* %7, %struct.dlfb_data** %3, align 8
  %8 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %9 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %8, i32 0, i32 2
  %10 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  store %struct.fb_info* %10, %struct.fb_info** %4, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %15 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %17 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %16, i32 0, i32 1
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  %19 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %20 = call i32 @dlfb_free_urb_list(%struct.dlfb_data* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @fb_device_attrs, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @fb_device_attrs, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @device_remove_file(i32 %29, i32* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_remove_bin_file(i32 %41, i32* @edid_attr)
  %43 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %44 = call i32 @unregister_framebuffer(%struct.fb_info* %43)
  ret void
}

declare dso_local %struct.dlfb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dlfb_free_urb_list(%struct.dlfb_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_remove_bin_file(i32, i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
