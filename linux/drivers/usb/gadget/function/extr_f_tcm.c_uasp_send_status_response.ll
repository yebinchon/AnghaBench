; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_send_status_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_uasp_send_status_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbg_cmd = type { %struct.f_uas*, i32, %struct.sense_iu, %struct.uas_stream* }
%struct.f_uas = type { i32 }
%struct.sense_iu = type { i32 }
%struct.uas_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usbg_cmd*, i32 }

@uasp_status_data_cmpl = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbg_cmd*)* @uasp_send_status_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uasp_send_status_response(%struct.usbg_cmd* %0) #0 {
  %2 = alloca %struct.usbg_cmd*, align 8
  %3 = alloca %struct.f_uas*, align 8
  %4 = alloca %struct.uas_stream*, align 8
  %5 = alloca %struct.sense_iu*, align 8
  store %struct.usbg_cmd* %0, %struct.usbg_cmd** %2, align 8
  %6 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %6, i32 0, i32 0
  %8 = load %struct.f_uas*, %struct.f_uas** %7, align 8
  store %struct.f_uas* %8, %struct.f_uas** %3, align 8
  %9 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %9, i32 0, i32 3
  %11 = load %struct.uas_stream*, %struct.uas_stream** %10, align 8
  store %struct.uas_stream* %11, %struct.uas_stream** %4, align 8
  %12 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %12, i32 0, i32 2
  store %struct.sense_iu* %13, %struct.sense_iu** %5, align 8
  %14 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cpu_to_be16(i32 %16)
  %18 = load %struct.sense_iu*, %struct.sense_iu** %5, align 8
  %19 = getelementptr inbounds %struct.sense_iu, %struct.sense_iu* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @uasp_status_data_cmpl, align 4
  %21 = load %struct.uas_stream*, %struct.uas_stream** %4, align 8
  %22 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %26 = load %struct.uas_stream*, %struct.uas_stream** %4, align 8
  %27 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.usbg_cmd* %25, %struct.usbg_cmd** %29, align 8
  %30 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %31 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %31, i32 0, i32 0
  store %struct.f_uas* %30, %struct.f_uas** %32, align 8
  %33 = load %struct.usbg_cmd*, %struct.usbg_cmd** %2, align 8
  %34 = call i32 @uasp_prepare_status(%struct.usbg_cmd* %33)
  %35 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %36 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uas_stream*, %struct.uas_stream** %4, align 8
  %39 = getelementptr inbounds %struct.uas_stream, %struct.uas_stream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i32 @usb_ep_queue(i32 %37, %struct.TYPE_2__* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @uasp_prepare_status(%struct.usbg_cmd*) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
