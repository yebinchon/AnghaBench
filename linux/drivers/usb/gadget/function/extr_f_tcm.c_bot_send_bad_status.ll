; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_send_bad_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_send_bad_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_cmd = type { i64, i64, %struct.f_uas* }
%struct.f_uas = type { %struct.TYPE_4__, %struct.usb_ep*, %struct.usb_request*, %struct.usb_ep*, %struct.usb_request*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ep = type { i64 }
%struct.usb_request = type { i64, i32, %struct.usbg_cmd*, i32 }
%struct.TYPE_3__ = type { %struct.bulk_cs_wrap }
%struct.bulk_cs_wrap = type { i32 }

@bot_err_compl = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbg_cmd*)* @bot_send_bad_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bot_send_bad_status(%struct.usbg_cmd* %0) #0 {
  %2 = alloca %struct.usbg_cmd*, align 8
  %3 = alloca %struct.f_uas*, align 8
  %4 = alloca %struct.bulk_cs_wrap*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.usb_ep*, align 8
  store %struct.usbg_cmd* %0, %struct.usbg_cmd** %2, align 8
  %7 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %7, i32 0, i32 2
  %9 = load %struct.f_uas*, %struct.f_uas** %8, align 8
  store %struct.f_uas* %9, %struct.f_uas** %3, align 8
  %10 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %11 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.bulk_cs_wrap* %12, %struct.bulk_cs_wrap** %4, align 8
  %13 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @cpu_to_le32(i64 %15)
  %17 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %4, align 8
  %18 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %1
  %24 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %30 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %29, i32 0, i32 1
  %31 = load %struct.usb_ep*, %struct.usb_ep** %30, align 8
  store %struct.usb_ep* %31, %struct.usb_ep** %6, align 8
  %32 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %33 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %32, i32 0, i32 4
  %34 = load %struct.usb_request*, %struct.usb_request** %33, align 8
  store %struct.usb_request* %34, %struct.usb_request** %5, align 8
  br label %42

35:                                               ; preds = %23
  %36 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %37 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %36, i32 0, i32 3
  %38 = load %struct.usb_ep*, %struct.usb_ep** %37, align 8
  store %struct.usb_ep* %38, %struct.usb_ep** %6, align 8
  %39 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %40 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %39, i32 0, i32 2
  %41 = load %struct.usb_request*, %struct.usb_request** %40, align 8
  store %struct.usb_request* %41, %struct.usb_request** %5, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %47 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %46, i32 0, i32 1
  %48 = load %struct.usb_ep*, %struct.usb_ep** %47, align 8
  %49 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %54 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %57 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %59 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %62 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %73

65:                                               ; preds = %42
  %66 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %67 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %70 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %72 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %52
  %74 = load i32, i32* @bot_err_compl, align 4
  %75 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %76 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %78 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %79 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %78, i32 0, i32 2
  store %struct.usbg_cmd* %77, %struct.usbg_cmd** %79, align 8
  %80 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %81 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %85 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %87 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i32 @usb_ep_queue(%struct.usb_ep* %86, %struct.usb_request* %87, i32 %88)
  br label %94

90:                                               ; preds = %1
  %91 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %92 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %93 = call i32 @bot_enqueue_sense_code(%struct.f_uas* %91, %struct.usbg_cmd* %92)
  br label %94

94:                                               ; preds = %90, %73
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @usb_ep_queue(%struct.usb_ep*, %struct.usb_request*, i32) #1

declare dso_local i32 @bot_enqueue_sense_code(%struct.f_uas*, %struct.usbg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
