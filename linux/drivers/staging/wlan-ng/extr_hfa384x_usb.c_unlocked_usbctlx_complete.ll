; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_unlocked_usbctlx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_unlocked_usbctlx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hfa384x_usbctlx = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"CTLX[%d] not in a terminating state(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfa384x*, %struct.hfa384x_usbctlx*)* @unlocked_usbctlx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlocked_usbctlx_complete(%struct.hfa384x* %0, %struct.hfa384x_usbctlx* %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca %struct.hfa384x_usbctlx*, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store %struct.hfa384x_usbctlx* %1, %struct.hfa384x_usbctlx** %4, align 8
  %5 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %6 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %5, i32 0, i32 2
  %7 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %8 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @list_move_tail(i32* %6, i32* %9)
  %11 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %12 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %11, i32 0, i32 1
  %13 = call i32 @tasklet_schedule(i32* %12)
  %14 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %15 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %25 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %30 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ctlxstr(i32 %31)
  %33 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ctlxstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
