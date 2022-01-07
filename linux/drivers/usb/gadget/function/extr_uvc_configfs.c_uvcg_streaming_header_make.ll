; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_header_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_header_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { i32 }
%struct.uvcg_streaming_header = type { %struct.config_item, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@UVC_VS_INPUT_HEADER = common dso_local global i32 0, align 4
@UVCG_STREAMING_CONTROL_SIZE = common dso_local global i32 0, align 4
@uvcg_streaming_header_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @uvcg_streaming_header_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @uvcg_streaming_header_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uvcg_streaming_header*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uvcg_streaming_header* @kzalloc(i32 24, i32 %7)
  store %struct.uvcg_streaming_header* %8, %struct.uvcg_streaming_header** %6, align 8
  %9 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %10 = icmp ne %struct.uvcg_streaming_header* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_item* @ERR_PTR(i32 %13)
  store %struct.config_item* %14, %struct.config_item** %3, align 8
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %17 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %20 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %21 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @UVC_VS_INPUT_HEADER, align 4
  %24 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %25 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %28 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 3, i32* %29, align 4
  %30 = load i32, i32* @UVCG_STREAMING_CONTROL_SIZE, align 4
  %31 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %32 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %35 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %34, i32 0, i32 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @config_item_init_type_name(%struct.config_item* %35, i8* %36, i32* @uvcg_streaming_header_type)
  %38 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %6, align 8
  %39 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %38, i32 0, i32 0
  store %struct.config_item* %39, %struct.config_item** %3, align 8
  br label %40

40:                                               ; preds = %15, %11
  %41 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %41
}

declare dso_local %struct.uvcg_streaming_header* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
