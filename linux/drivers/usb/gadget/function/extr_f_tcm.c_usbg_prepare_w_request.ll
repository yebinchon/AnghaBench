; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_prepare_w_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_prepare_w_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_cmd = type { i32*, %struct.f_uas*, %struct.se_cmd }
%struct.f_uas = type { i32 }
%struct.se_cmd = type { i32, i32, i32 }
%struct.usb_request = type { %struct.usbg_cmd*, i32, i32, i32, i32, i32* }
%struct.usb_gadget = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usbg_data_write_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbg_cmd*, %struct.usb_request*)* @usbg_prepare_w_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbg_prepare_w_request(%struct.usbg_cmd* %0, %struct.usb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbg_cmd*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.f_uas*, align 8
  %8 = alloca %struct.usb_gadget*, align 8
  store %struct.usbg_cmd* %0, %struct.usbg_cmd** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  %9 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %9, i32 0, i32 2
  store %struct.se_cmd* %10, %struct.se_cmd** %6, align 8
  %11 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %11, i32 0, i32 1
  %13 = load %struct.f_uas*, %struct.f_uas** %12, align 8
  store %struct.f_uas* %13, %struct.f_uas** %7, align 8
  %14 = load %struct.f_uas*, %struct.f_uas** %7, align 8
  %15 = call %struct.usb_gadget* @fuas_to_gadget(%struct.f_uas* %14)
  store %struct.usb_gadget* %15, %struct.usb_gadget** %8, align 8
  %16 = load %struct.usb_gadget*, %struct.usb_gadget** %8, align 8
  %17 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %2
  %21 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32* @kmalloc(i32 %23, i32 %24)
  %26 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %20
  %36 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %40 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %39, i32 0, i32 5
  store i32* %38, i32** %40, align 8
  br label %54

41:                                               ; preds = %2
  %42 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %43 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %53 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %41, %35
  %55 = load i32, i32* @usbg_data_write_cmpl, align 4
  %56 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %62 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.usbg_cmd*, %struct.usbg_cmd** %4, align 8
  %64 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 0
  store %struct.usbg_cmd* %63, %struct.usbg_cmd** %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %54, %32
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.usb_gadget* @fuas_to_gadget(%struct.f_uas*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
