; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qtnf_reg_rule_flags_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_qlink_util.c_qtnf_reg_rule_flags_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QLINK_RRF_NO_OFDM = common dso_local global i32 0, align 4
@NL80211_RRF_NO_OFDM = common dso_local global i32 0, align 4
@QLINK_RRF_NO_CCK = common dso_local global i32 0, align 4
@NL80211_RRF_NO_CCK = common dso_local global i32 0, align 4
@QLINK_RRF_NO_INDOOR = common dso_local global i32 0, align 4
@NL80211_RRF_NO_INDOOR = common dso_local global i32 0, align 4
@QLINK_RRF_NO_OUTDOOR = common dso_local global i32 0, align 4
@NL80211_RRF_NO_OUTDOOR = common dso_local global i32 0, align 4
@QLINK_RRF_DFS = common dso_local global i32 0, align 4
@NL80211_RRF_DFS = common dso_local global i32 0, align 4
@QLINK_RRF_PTP_ONLY = common dso_local global i32 0, align 4
@NL80211_RRF_PTP_ONLY = common dso_local global i32 0, align 4
@QLINK_RRF_PTMP_ONLY = common dso_local global i32 0, align 4
@NL80211_RRF_PTMP_ONLY = common dso_local global i32 0, align 4
@QLINK_RRF_NO_IR = common dso_local global i32 0, align 4
@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@QLINK_RRF_AUTO_BW = common dso_local global i32 0, align 4
@NL80211_RRF_AUTO_BW = common dso_local global i32 0, align 4
@QLINK_RRF_IR_CONCURRENT = common dso_local global i32 0, align 4
@NL80211_RRF_IR_CONCURRENT = common dso_local global i32 0, align 4
@QLINK_RRF_NO_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_RRF_NO_HT40MINUS = common dso_local global i32 0, align 4
@QLINK_RRF_NO_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_RRF_NO_HT40PLUS = common dso_local global i32 0, align 4
@QLINK_RRF_NO_80MHZ = common dso_local global i32 0, align 4
@NL80211_RRF_NO_80MHZ = common dso_local global i32 0, align 4
@QLINK_RRF_NO_160MHZ = common dso_local global i32 0, align 4
@NL80211_RRF_NO_160MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qtnf_reg_rule_flags_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_reg_rule_flags_parse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @QLINK_RRF_NO_OFDM, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @NL80211_RRF_NO_OFDM, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @QLINK_RRF_NO_CCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @NL80211_RRF_NO_CCK, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @QLINK_RRF_NO_INDOOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @NL80211_RRF_NO_INDOOR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @QLINK_RRF_NO_OUTDOOR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @NL80211_RRF_NO_OUTDOOR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @QLINK_RRF_DFS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @NL80211_RRF_DFS, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @QLINK_RRF_PTP_ONLY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @NL80211_RRF_PTP_ONLY, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @QLINK_RRF_PTMP_ONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @NL80211_RRF_PTMP_ONLY, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @QLINK_RRF_NO_IR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @QLINK_RRF_AUTO_BW, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @QLINK_RRF_IR_CONCURRENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @NL80211_RRF_IR_CONCURRENT, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @QLINK_RRF_NO_HT40MINUS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @NL80211_RRF_NO_HT40MINUS, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @QLINK_RRF_NO_HT40PLUS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @NL80211_RRF_NO_HT40PLUS, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @QLINK_RRF_NO_80MHZ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @NL80211_RRF_NO_80MHZ, align 4
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @QLINK_RRF_NO_160MHZ, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @NL80211_RRF_NO_160MHZ, align 4
  %127 = load i32, i32* %3, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
