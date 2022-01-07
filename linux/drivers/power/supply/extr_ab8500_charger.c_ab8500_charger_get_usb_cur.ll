; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_get_usb_cur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_get_usb_cur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@USB_CH_IP_CUR_LVL_0P09 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P19 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P29 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P38 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P5 = common dso_local global i32 0, align 4
@USB_CH_IP_CUR_LVL_0P05 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_charger*)* @ab8500_charger_get_usb_cur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_get_usb_cur(%struct.ab8500_charger* %0) #0 {
  %2 = alloca %struct.ab8500_charger*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_charger* %0, %struct.ab8500_charger** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %33 [
    i32 100, label %8
    i32 200, label %13
    i32 300, label %18
    i32 400, label %23
    i32 500, label %28
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @USB_CH_IP_CUR_LVL_0P09, align 4
  %10 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %11 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_CH_IP_CUR_LVL_0P19, align 4
  %15 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %16 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load i32, i32* @USB_CH_IP_CUR_LVL_0P29, align 4
  %20 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %21 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i32, i32* @USB_CH_IP_CUR_LVL_0P38, align 4
  %25 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %26 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %40

28:                                               ; preds = %1
  %29 = load i32, i32* @USB_CH_IP_CUR_LVL_0P5, align 4
  %30 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %31 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %40

33:                                               ; preds = %1
  %34 = load i32, i32* @USB_CH_IP_CUR_LVL_0P05, align 4
  %35 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %36 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %28, %23, %18, %13, %8
  %41 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %42 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ab8500_charger*, %struct.ab8500_charger** %2, align 8
  %46 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
