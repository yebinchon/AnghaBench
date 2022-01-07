; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_btinfo_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_btinfo_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.btinfo = type { i64, i32 }

@BTINFO_BT_AUTO_RPT = common dso_local global i64 0, align 8
@BTINFO_WIFI_FETCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64*, i32)* @rtw_btinfo_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_btinfo_hdl(%struct.adapter* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btinfo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = bitcast i64* %10 to %struct.btinfo*
  store %struct.btinfo* %11, %struct.btinfo** %7, align 8
  %12 = load %struct.btinfo*, %struct.btinfo** %7, align 8
  %13 = getelementptr inbounds %struct.btinfo, %struct.btinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.btinfo*, %struct.btinfo** %7, align 8
  %16 = getelementptr inbounds %struct.btinfo, %struct.btinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = call i32 @rtw_warn_on(i32 1)
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.btinfo*, %struct.btinfo** %7, align 8
  %28 = getelementptr inbounds %struct.btinfo, %struct.btinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 35
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 0, i64* %36, align 8
  br label %44

37:                                               ; preds = %31
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 39
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 2, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = call i32 @hal_btcoex_BtInfoNotify(%struct.adapter* %45, i64 %47, i64* %49)
  ret void
}

declare dso_local i32 @rtw_warn_on(i32) #1

declare dso_local i32 @hal_btcoex_BtInfoNotify(%struct.adapter*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
