; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_pwr_seq_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_pwr_seq_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_pwr_seq_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw_pwr_seq_cmd**)* @rtw_pwr_seq_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pwr_seq_parser(%struct.rtw_dev* %0, %struct.rtw_pwr_seq_cmd** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pwr_seq_cmd**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtw_pwr_seq_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_pwr_seq_cmd** %1, %struct.rtw_pwr_seq_cmd*** %5, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @cut_version_to_mask(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = call i32 @rtw_hci_type(%struct.rtw_dev* %18)
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %2
  %21 = call i32 @BIT(i32 2)
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %2
  %23 = call i32 @BIT(i32 1)
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %22, %20
  br label %28

28:                                               ; preds = %50, %27
  %29 = load %struct.rtw_pwr_seq_cmd**, %struct.rtw_pwr_seq_cmd*** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %29, i64 %30
  %32 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %31, align 8
  store %struct.rtw_pwr_seq_cmd* %32, %struct.rtw_pwr_seq_cmd** %10, align 8
  %33 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %34 = icmp ne %struct.rtw_pwr_seq_cmd* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %41 = call i32 @rtw_sub_pwr_seq_parser(%struct.rtw_dev* %37, i32 %38, i32 %39, %struct.rtw_pwr_seq_cmd* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47
  br i1 true, label %28, label %51

51:                                               ; preds = %50, %35
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @cut_version_to_mask(i32) #1

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_sub_pwr_seq_parser(%struct.rtw_dev*, i32, i32, %struct.rtw_pwr_seq_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
