; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_data_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_data_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.usb_os_desc_ext_prop = type { i32, i64, i32 }

@USB_EXT_PROP_UNICODE = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_ENV = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @ext_prop_data_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_prop_data_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_os_desc_ext_prop*, align 8
  %6 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %3, align 8
  %8 = call %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item* %7)
  store %struct.usb_os_desc_ext_prop* %8, %struct.usb_os_desc_ext_prop** %5, align 8
  %9 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %10 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %13 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_EXT_PROP_UNICODE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %19 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_EXT_PROP_UNICODE_ENV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %25 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_EXT_PROP_UNICODE_LINK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %17, %2
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %5, align 8
  %35 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memcpy(i8* %33, i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
