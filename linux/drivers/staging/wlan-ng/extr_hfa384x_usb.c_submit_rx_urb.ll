; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_submit_rx_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_submit_rx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.sk_buff*, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@hfa384x_usbin_callback = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@WORK_RX_HALT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s rx pipe stalled: requesting reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, i32)* @submit_rx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_rx_urb(%struct.hfa384x* %0, i32 %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.sk_buff* @dev_alloc_skb(i32 4)
  store %struct.sk_buff* %7, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %15 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %14, i32 0, i32 4
  %16 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %17 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @hfa384x_usbin_callback, align 4
  %26 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %27 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @usb_fill_bulk_urb(i32* %15, i32 %18, i32 %21, i32 %24, i32 4, i32 %25, %struct.TYPE_3__* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %32 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %31, i32 0, i32 0
  store %struct.sk_buff* %30, %struct.sk_buff** %32, align 8
  %33 = load i32, i32* @ENOLINK, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %36 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %13
  %42 = load i32, i32* @WORK_RX_HALT, align 4
  %43 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %44 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %41
  %48 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %49 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %48, i32 0, i32 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @usb_submit_urb(i32* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EPIPE, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %47
  %57 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %58 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %63 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_warn(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @WORK_RX_HALT, align 4
  %71 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %72 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %71, i32 0, i32 2
  %73 = call i32 @test_and_set_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %56
  %76 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %77 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %76, i32 0, i32 1
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %56
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %41, %13
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @dev_kfree_skb(%struct.sk_buff* %85)
  %87 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %88 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %87, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  br label %90

90:                                               ; preds = %89, %10
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
