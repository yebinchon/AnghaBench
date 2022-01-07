; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_v_stop_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_v_stop_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { %struct.TYPE_2__*, %struct.transfer_timer }
%struct.TYPE_2__ = type { i32 }
%struct.transfer_timer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"timer stop\00", align 1
@VUDC_TR_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_stop_timer(%struct.vudc* %0) #0 {
  %2 = alloca %struct.vudc*, align 8
  %3 = alloca %struct.transfer_timer*, align 8
  store %struct.vudc* %0, %struct.vudc** %2, align 8
  %4 = load %struct.vudc*, %struct.vudc** %2, align 8
  %5 = getelementptr inbounds %struct.vudc, %struct.vudc* %4, i32 0, i32 1
  store %struct.transfer_timer* %5, %struct.transfer_timer** %3, align 8
  %6 = load %struct.vudc*, %struct.vudc** %2, align 8
  %7 = getelementptr inbounds %struct.vudc, %struct.vudc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @VUDC_TR_STOPPED, align 4
  %12 = load %struct.transfer_timer*, %struct.transfer_timer** %3, align 8
  %13 = getelementptr inbounds %struct.transfer_timer, %struct.transfer_timer* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
