; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_r_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_prepare_r_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_cmd = type { i32, i32*, %struct.uas_stream*, %struct.f_uas*, %struct.se_cmd }
%struct.uas_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usbg_cmd*, i32, i32, i32, i32, i32* }
%struct.f_uas = type { i32 }
%struct.se_cmd = type { i32, i32, i32 }
%struct.usb_gadget = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uasp_status_data_cmpl = common dso_local global i32 0, align 4
@UASP_SEND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbg_cmd*)* @uasp_prepare_r_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uasp_prepare_r_request(%struct.usbg_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbg_cmd*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca %struct.f_uas*, align 8
  %6 = alloca %struct.usb_gadget*, align 8
  %7 = alloca %struct.uas_stream*, align 8
  store %struct.usbg_cmd* %0, %struct.usbg_cmd** %3, align 8
  %8 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %8, i32 0, i32 4
  store %struct.se_cmd* %9, %struct.se_cmd** %4, align 8
  %10 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %10, i32 0, i32 3
  %12 = load %struct.f_uas*, %struct.f_uas** %11, align 8
  store %struct.f_uas* %12, %struct.f_uas** %5, align 8
  %13 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %14 = call %struct.usb_gadget* @fuas_to_gadget(%struct.f_uas* %13)
  store %struct.usb_gadget* %14, %struct.usb_gadget** %6, align 8
  %15 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %15, i32 0, i32 2
  %17 = load %struct.uas_stream*, %struct.uas_stream** %16, align 8
  store %struct.uas_stream* %17, %struct.uas_stream** %7, align 8
  %18 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %19 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %1
  %23 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32* @kmalloc(i32 %25, i32 %26)
  %28 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %22
  %38 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sg_copy_to_buffer(i32 %40, i32 %43, i32* %46, i32 %49)
  %51 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %55 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  store i32* %53, i32** %57, align 8
  br label %77

58:                                               ; preds = %1
  %59 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %60 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  %63 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %67 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32 %65, i32* %69, align 4
  %70 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %74 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %58, %37
  %78 = load i32, i32* @uasp_status_data_cmpl, align 4
  %79 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %80 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %87 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 8
  %90 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %91 = load %struct.uas_stream*, %struct.uas_stream** %7, align 8
  %92 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store %struct.usbg_cmd* %90, %struct.usbg_cmd** %94, align 8
  %95 = load i32, i32* @UASP_SEND_STATUS, align 4
  %96 = load %struct.usbg_cmd*, %struct.usbg_cmd** %3, align 8
  %97 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %77, %34
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.usb_gadget* @fuas_to_gadget(%struct.f_uas*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
