; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_mac_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mac power on failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_mac_power_on(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = call i32 @rtw_mac_pre_system_cfg(%struct.rtw_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = call i32 @rtw_mac_power_switch(%struct.rtw_dev* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EALREADY, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = call i32 @rtw_mac_power_switch(%struct.rtw_dev* %18, i32 0)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = call i32 @rtw_mac_power_switch(%struct.rtw_dev* %20, i32 1)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %38

25:                                               ; preds = %17
  br label %31

26:                                               ; preds = %10
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %38

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = call i32 @rtw_mac_init_system_cfg(%struct.rtw_dev* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %36, %29, %24, %9
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = call i32 @rtw_err(%struct.rtw_dev* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @rtw_mac_pre_system_cfg(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_mac_power_switch(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_mac_init_system_cfg(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
