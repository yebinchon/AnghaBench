; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.gb_usb_device = type { i32 }
%struct.gb_operation = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.gb_usb_hub_control_response* }
%struct.gb_usb_hub_control_response = type { i32 }
%struct.TYPE_3__ = type { %struct.gb_usb_hub_control_request* }
%struct.gb_usb_hub_control_request = type { i8*, i8*, i8*, i8* }

@GB_USB_TYPE_HUB_CONTROL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gb_usb_device*, align 8
  %15 = alloca %struct.gb_operation*, align 8
  %16 = alloca %struct.gb_usb_hub_control_request*, align 8
  %17 = alloca %struct.gb_usb_hub_control_response*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %21 = call %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd* %20)
  store %struct.gb_usb_device* %21, %struct.gb_usb_device** %14, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  store i64 %24, i64* %18, align 8
  %25 = load %struct.gb_usb_device*, %struct.gb_usb_device** %14, align 8
  %26 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GB_USB_TYPE_HUB_CONTROL, align 4
  %29 = load i64, i64* %18, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.gb_operation* @gb_operation_create(i32 %27, i32 %28, i32 32, i64 %29, i32 %30)
  store %struct.gb_operation* %31, %struct.gb_operation** %15, align 8
  %32 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %33 = icmp ne %struct.gb_operation* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %84

37:                                               ; preds = %6
  %38 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %39 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.gb_usb_hub_control_request*, %struct.gb_usb_hub_control_request** %41, align 8
  store %struct.gb_usb_hub_control_request* %42, %struct.gb_usb_hub_control_request** %16, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.gb_usb_hub_control_request*, %struct.gb_usb_hub_control_request** %16, align 8
  %46 = getelementptr inbounds %struct.gb_usb_hub_control_request, %struct.gb_usb_hub_control_request* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.gb_usb_hub_control_request*, %struct.gb_usb_hub_control_request** %16, align 8
  %50 = getelementptr inbounds %struct.gb_usb_hub_control_request, %struct.gb_usb_hub_control_request* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.gb_usb_hub_control_request*, %struct.gb_usb_hub_control_request** %16, align 8
  %54 = getelementptr inbounds %struct.gb_usb_hub_control_request, %struct.gb_usb_hub_control_request* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.gb_usb_hub_control_request*, %struct.gb_usb_hub_control_request** %16, align 8
  %58 = getelementptr inbounds %struct.gb_usb_hub_control_request, %struct.gb_usb_hub_control_request* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %60 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %37
  br label %80

64:                                               ; preds = %37
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %69 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.gb_usb_hub_control_response*, %struct.gb_usb_hub_control_response** %71, align 8
  store %struct.gb_usb_hub_control_response* %72, %struct.gb_usb_hub_control_response** %17, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.gb_usb_hub_control_response*, %struct.gb_usb_hub_control_response** %17, align 8
  %75 = getelementptr inbounds %struct.gb_usb_hub_control_response, %struct.gb_usb_hub_control_response* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @memcpy(i8* %73, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %64
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %82 = call i32 @gb_operation_put(%struct.gb_operation* %81)
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd*) #1

declare dso_local %struct.gb_operation* @gb_operation_create(i32, i32, i32, i64, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
