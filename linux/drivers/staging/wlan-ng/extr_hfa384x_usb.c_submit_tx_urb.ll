; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_submit_tx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_submit_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.urb = type { i32 }

@ENOLINK = common dso_local global i32 0, align 4
@WORK_TX_HALT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s tx pipe stalled: requesting reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, %struct.urb*, i32)* @submit_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_tx_urb(%struct.hfa384x* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.hfa384x*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %10 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* @ENOLINK, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %3
  %20 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %21 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @WORK_TX_HALT, align 4
  %28 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %26
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @usb_submit_urb(%struct.urb* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EPIPE, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  %41 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %42 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_warn(%struct.net_device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @WORK_TX_HALT, align 4
  %51 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %52 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %51, i32 0, i32 1
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %55 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %54, i32 0, i32 0
  %56 = call i32 @schedule_work(i32* %55)
  br label %64

57:                                               ; preds = %32
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @netif_stop_queue(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64, %26, %19
  br label %66

66:                                               ; preds = %65, %3
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
