; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_clear_tt_buffer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_clear_tt_buffer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.isp1760_qh* }
%struct.isp1760_qh = type { i64 }
%struct.isp1760_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @isp1760_clear_tt_buffer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_clear_tt_buffer_complete(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.isp1760_hcd*, align 8
  %6 = alloca %struct.isp1760_qh*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %8)
  store %struct.isp1760_hcd* %9, %struct.isp1760_hcd** %5, align 8
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = load %struct.isp1760_qh*, %struct.isp1760_qh** %11, align 8
  store %struct.isp1760_qh* %12, %struct.isp1760_qh** %6, align 8
  %13 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %14 = icmp ne %struct.isp1760_qh* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %18 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.isp1760_qh*, %struct.isp1760_qh** %6, align 8
  %22 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = call i32 @schedule_ptds(%struct.usb_hcd* %23)
  %25 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %5, align 8
  %26 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @schedule_ptds(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
