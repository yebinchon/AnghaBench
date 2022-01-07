; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92s_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c__rtl92s_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@SYS_CLKR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"wait for BIT(6) return value %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92s_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_set_sysclk(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  store i32 100, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = load i64, i64* @SYS_CLKR, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %11, i64 %13, i32 %14)
  %16 = call i32 @udelay(i32 400)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i64, i64* @SYS_CLKR, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @rtl_read_byte(%struct.rtl_priv* %17, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @BIT(i32 7)
  %23 = and i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BIT(i32 7)
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BIT(i32 6)
  %31 = call i32 @BIT(i32 7)
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %2
  store i32 100, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %54
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = load i64, i64* @SYS_CLKR, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @rtl_read_byte(%struct.rtl_priv* %39, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @BIT(i32 6)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %56

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %48
  %55 = call i32 @udelay(i32 10)
  br label %36

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %61

60:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %2
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
