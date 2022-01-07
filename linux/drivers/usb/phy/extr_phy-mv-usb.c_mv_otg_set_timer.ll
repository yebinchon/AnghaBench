; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.timer_list* }
%struct.timer_list = type { i64 }

@OTG_TIMER_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Timer%d is already running\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_otg*, i32, i64)* @mv_otg_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_otg_set_timer(%struct.mv_otg* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_otg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timer_list*, align 8
  store %struct.mv_otg* %0, %struct.mv_otg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OTG_TIMER_NUM, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.mv_otg*, %struct.mv_otg** %5, align 8
  %17 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.timer_list*, %struct.timer_list** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %19, i64 %21
  store %struct.timer_list* %22, %struct.timer_list** %8, align 8
  %23 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %24 = call i64 @timer_pending(%struct.timer_list* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.mv_otg*, %struct.mv_otg** %5, align 8
  %28 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %15
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %40 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %42 = call i32 @add_timer(%struct.timer_list* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %26, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
