; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usb_throttlefn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usb_throttlefn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@throttle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"flags=0x%lx\0A\00", align 1
@THROTTLE_RX = common dso_local global i32 0, align 4
@WORK_RX_RESUME = common dso_local global i32 0, align 4
@THROTTLE_TX = common dso_local global i32 0, align 4
@WORK_TX_RESUME = common dso_local global i32 0, align 4
@hw = common dso_local global %struct.hfa384x* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hfa384x_usb_throttlefn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_usb_throttlefn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %6 = ptrtoint %struct.hfa384x* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @throttle, align 4
  %9 = call %struct.hfa384x* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.hfa384x* %9, %struct.hfa384x** %3, align 8
  %10 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %11 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %16 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @THROTTLE_RX, align 4
  %27 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %28 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %27, i32 0, i32 2
  %29 = call i64 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @WORK_RX_RESUME, align 4
  %33 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %34 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %33, i32 0, i32 2
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i1 [ false, %25 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @THROTTLE_TX, align 4
  %42 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %43 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %42, i32 0, i32 2
  %44 = call i64 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @WORK_TX_RESUME, align 4
  %48 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %49 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %48, i32 0, i32 2
  %50 = call i32 @test_and_set_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %46, %38
  %54 = phi i1 [ false, %38 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = or i32 %40, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %60 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %59, i32 0, i32 1
  %61 = call i32 @schedule_work(i32* %60)
  br label %62

62:                                               ; preds = %58, %53, %1
  %63 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %64 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local %struct.hfa384x* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
