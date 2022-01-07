; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_cancel_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_cancel_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.timer_list* }
%struct.timer_list = type { i32 }

@OTG_TIMER_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_otg*, i32)* @mv_otg_cancel_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_otg_cancel_timer(%struct.mv_otg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_otg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timer_list*, align 8
  store %struct.mv_otg* %0, %struct.mv_otg** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OTG_TIMER_NUM, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.mv_otg*, %struct.mv_otg** %4, align 8
  %15 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.timer_list*, %struct.timer_list** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %17, i64 %19
  store %struct.timer_list* %20, %struct.timer_list** %6, align 8
  %21 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %22 = call i64 @timer_pending(%struct.timer_list* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.timer_list*, %struct.timer_list** %6, align 8
  %26 = call i32 @del_timer(%struct.timer_list* %25)
  br label %27

27:                                               ; preds = %24, %13
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
