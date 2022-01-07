; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c_rtl92d_firmware_selfreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c_rtl92d_firmware_selfreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_HMETFR = common dso_local global i64 0, align 8
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"rtl8192de: 8051 reset failed!\0A\00", align 1
@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"=====> 8051 reset success (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_firmware_selfreset(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 100, i32* %5, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = load i64, i64* @REG_HMETFR, align 8
  %10 = add nsw i64 %9, 3
  %11 = call i32 @rtl_write_byte(%struct.rtl_priv* %8, i64 %10, i32 32)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @rtl_read_byte(%struct.rtl_priv* %12, i64 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %27, %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BIT(i32 2)
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %33

27:                                               ; preds = %21
  %28 = call i32 @udelay(i32 50)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @rtl_read_byte(%struct.rtl_priv* %29, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %26, %16
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @COMP_FW, align 4
  %40 = load i32, i32* @DBG_DMESG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @RT_TRACE(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
