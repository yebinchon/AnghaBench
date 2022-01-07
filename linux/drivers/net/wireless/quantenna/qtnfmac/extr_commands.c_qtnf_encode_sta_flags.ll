; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_encode_sta_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_encode_sta_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_WME = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_WME = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_MFP = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_MFP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_AUTHENTICATED = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_TDLS_PEER = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@QLINK_STA_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qtnf_encode_sta_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_encode_sta_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %6 = call i32 @BIT(i32 %5)
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @QLINK_STA_FLAG_AUTHORIZED, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @NL80211_STA_FLAG_SHORT_PREAMBLE, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @QLINK_STA_FLAG_SHORT_PREAMBLE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @NL80211_STA_FLAG_WME, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @QLINK_STA_FLAG_WME, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @NL80211_STA_FLAG_MFP, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @QLINK_STA_FLAG_MFP, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @NL80211_STA_FLAG_AUTHENTICATED, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @QLINK_STA_FLAG_AUTHENTICATED, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @NL80211_STA_FLAG_TDLS_PEER, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @QLINK_STA_FLAG_TDLS_PEER, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @NL80211_STA_FLAG_ASSOCIATED, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @QLINK_STA_FLAG_ASSOCIATED, align 4
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
