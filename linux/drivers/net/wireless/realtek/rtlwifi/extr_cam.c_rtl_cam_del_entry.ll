; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_del_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_cam.c_rtl_cam_del_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64**, i64 }

@.str = private unnamed_addr constant [19 x i8] c"sta_addr is NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sta_addr is %pM\0A\00", align 1
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"&&&&&&&&&del entry %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_cam_del_entry(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp eq i64* null, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %79

15:                                               ; preds = %2
  %16 = load i64*, i64** %4, align 8
  %17 = call i64 @is_zero_ether_addr(i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64*, i64** %4, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64* %20)
  br label %79

22:                                               ; preds = %15
  store i64 4, i64* %7, align 8
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %8, align 8
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @BIT(i32 0)
  %43 = and i64 %41, %42
  %44 = call i64 @BIT(i32 0)
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %27
  %47 = load i64*, i64** %8, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = call i64 @ether_addr_equal_unaligned(i64* %47, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64**, i64*** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64*, i64** %55, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = call i32 @eth_zero_addr(i64* %58)
  %60 = call i64 @BIT(i32 0)
  %61 = load i64, i64* %7, align 8
  %62 = shl i64 %60, %61
  %63 = xor i64 %62, -1
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %70 = load i32, i32* @COMP_SEC, align 4
  %71 = load i32, i32* @DBG_DMESG, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %51, %46, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %23

78:                                               ; preds = %23
  br label %79

79:                                               ; preds = %78, %19, %13
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @is_zero_ether_addr(i64*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @ether_addr_equal_unaligned(i64*, i64*) #1

declare dso_local i32 @eth_zero_addr(i64*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
