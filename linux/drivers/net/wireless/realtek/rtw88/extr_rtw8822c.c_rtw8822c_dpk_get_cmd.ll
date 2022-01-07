; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_get_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DPK_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32)* @rtw8822c_dpk_get_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_get_cmd(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DPK_CHANNEL_WIDTH_80, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 0
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 130, label %23
    i32 129, label %28
    i32 131, label %31
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 20, %21
  store i32 %22, i32* %8, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 22, %24
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 26, %29
  store i32 %30, i32* %8, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 28, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

37:                                               ; preds = %31, %28, %23, %20
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %39, 72
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
