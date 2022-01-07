; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_vbus_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_vbus_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@vbus_timer = common dso_local global i32 0, align 4
@DC_MODE = common dso_local global i32 0, align 4
@DC_VBUSSTAT = common dso_local global i32 0, align 4
@USB_STATE_POWERED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ISP1760_VBUS_POLL_INTERVAL = common dso_local global i64 0, align 8
@udc = common dso_local global %struct.isp1760_udc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @isp1760_udc_vbus_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_vbus_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.isp1760_udc*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %6 = ptrtoint %struct.isp1760_udc* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @vbus_timer, align 4
  %9 = call %struct.isp1760_udc* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.isp1760_udc* %9, %struct.isp1760_udc** %3, align 8
  %10 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %11 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %15 = load i32, i32* @DC_MODE, align 4
  %16 = call i32 @isp1760_udc_read(%struct.isp1760_udc* %14, i32 %15)
  %17 = load i32, i32* @DC_VBUSSTAT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %22 = call i32 @isp1760_udc_disconnect(%struct.isp1760_udc* %21)
  br label %38

23:                                               ; preds = %1
  %24 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %25 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_STATE_POWERED, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %32 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %31, i32 0, i32 1
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @ISP1760_VBUS_POLL_INTERVAL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @mod_timer(i32* %32, i64 %35)
  br label %37

37:                                               ; preds = %30, %23
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.isp1760_udc*, %struct.isp1760_udc** %3, align 8
  %40 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %39, i32 0, i32 0
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.isp1760_udc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isp1760_udc_read(%struct.isp1760_udc*, i32) #1

declare dso_local i32 @isp1760_udc_disconnect(%struct.isp1760_udc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
