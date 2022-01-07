; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_v_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_transfer.c_v_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vudc = type { %struct.TYPE_3__, %struct.TYPE_4__*, %struct.transfer_timer }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.transfer_timer = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"timer start\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_start_timer(%struct.vudc* %0) #0 {
  %2 = alloca %struct.vudc*, align 8
  %3 = alloca %struct.transfer_timer*, align 8
  store %struct.vudc* %0, %struct.vudc** %2, align 8
  %4 = load %struct.vudc*, %struct.vudc** %2, align 8
  %5 = getelementptr inbounds %struct.vudc, %struct.vudc* %4, i32 0, i32 2
  store %struct.transfer_timer* %5, %struct.transfer_timer** %3, align 8
  %6 = load %struct.vudc*, %struct.vudc** %2, align 8
  %7 = getelementptr inbounds %struct.vudc, %struct.vudc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.transfer_timer*, %struct.transfer_timer** %3, align 8
  %12 = getelementptr inbounds %struct.transfer_timer, %struct.transfer_timer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %33 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %18
  ]

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.vudc*, %struct.vudc** %2, align 8
  %17 = load i32, i32* @jiffies, align 4
  call void @v_kick_timer(%struct.vudc* %16, i32 %17)
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.transfer_timer*, %struct.transfer_timer** %3, align 8
  %20 = getelementptr inbounds %struct.transfer_timer, %struct.transfer_timer* %19, i32 0, i32 0
  store i32 130, i32* %20, align 4
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.transfer_timer*, %struct.transfer_timer** %3, align 8
  %23 = getelementptr inbounds %struct.transfer_timer, %struct.transfer_timer* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vudc*, %struct.vudc** %2, align 8
  %25 = getelementptr inbounds %struct.vudc, %struct.vudc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @get_frame_limit(i32 %27)
  %29 = load %struct.transfer_timer*, %struct.transfer_timer** %3, align 8
  %30 = getelementptr inbounds %struct.transfer_timer, %struct.transfer_timer* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vudc*, %struct.vudc** %2, align 8
  %32 = load i32, i32* @jiffies, align 4
  call void @v_kick_timer(%struct.vudc* %31, i32 %32)
  br label %33

33:                                               ; preds = %14, %15, %18, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local void @v_kick_timer(%struct.vudc*, i32) #1

declare dso_local i32 @get_frame_limit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
