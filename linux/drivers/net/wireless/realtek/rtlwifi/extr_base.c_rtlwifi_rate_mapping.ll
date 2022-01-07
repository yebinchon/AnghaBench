; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtlwifi_rate_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtlwifi_rate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtlwifi_rate_mapping(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %35 [
    i32 147, label %15
    i32 146, label %16
    i32 145, label %17
    i32 144, label %18
    i32 143, label %19
    i32 142, label %20
    i32 141, label %21
    i32 140, label %22
    i32 139, label %23
    i32 138, label %24
    i32 137, label %25
    i32 136, label %26
    i32 135, label %27
    i32 134, label %28
    i32 133, label %29
    i32 132, label %30
    i32 131, label %31
    i32 130, label %32
    i32 129, label %33
    i32 128, label %34
  ]

15:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %36

16:                                               ; preds = %13
  store i32 1, i32* %10, align 4
  br label %36

17:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  br label %36

18:                                               ; preds = %13
  store i32 3, i32* %10, align 4
  br label %36

19:                                               ; preds = %13
  store i32 4, i32* %10, align 4
  br label %36

20:                                               ; preds = %13
  store i32 5, i32* %10, align 4
  br label %36

21:                                               ; preds = %13
  store i32 6, i32* %10, align 4
  br label %36

22:                                               ; preds = %13
  store i32 7, i32* %10, align 4
  br label %36

23:                                               ; preds = %13
  store i32 8, i32* %10, align 4
  br label %36

24:                                               ; preds = %13
  store i32 9, i32* %10, align 4
  br label %36

25:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %36

26:                                               ; preds = %13
  store i32 1, i32* %10, align 4
  br label %36

27:                                               ; preds = %13
  store i32 2, i32* %10, align 4
  br label %36

28:                                               ; preds = %13
  store i32 3, i32* %10, align 4
  br label %36

29:                                               ; preds = %13
  store i32 4, i32* %10, align 4
  br label %36

30:                                               ; preds = %13
  store i32 5, i32* %10, align 4
  br label %36

31:                                               ; preds = %13
  store i32 6, i32* %10, align 4
  br label %36

32:                                               ; preds = %13
  store i32 7, i32* %10, align 4
  br label %36

33:                                               ; preds = %13
  store i32 8, i32* %10, align 4
  br label %36

34:                                               ; preds = %13
  store i32 9, i32* %10, align 4
  br label %36

35:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %102

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %38
  %42 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %42, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %65 [
    i32 172, label %53
    i32 170, label %54
    i32 166, label %55
    i32 175, label %56
    i32 165, label %57
    i32 164, label %58
    i32 174, label %59
    i32 173, label %60
    i32 171, label %61
    i32 169, label %62
    i32 168, label %63
    i32 167, label %64
  ]

53:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %66

54:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %66

55:                                               ; preds = %51
  store i32 2, i32* %10, align 4
  br label %66

56:                                               ; preds = %51
  store i32 3, i32* %10, align 4
  br label %66

57:                                               ; preds = %51
  store i32 4, i32* %10, align 4
  br label %66

58:                                               ; preds = %51
  store i32 5, i32* %10, align 4
  br label %66

59:                                               ; preds = %51
  store i32 6, i32* %10, align 4
  br label %66

60:                                               ; preds = %51
  store i32 7, i32* %10, align 4
  br label %66

61:                                               ; preds = %51
  store i32 8, i32* %10, align 4
  br label %66

62:                                               ; preds = %51
  store i32 9, i32* %10, align 4
  br label %66

63:                                               ; preds = %51
  store i32 10, i32* %10, align 4
  br label %66

64:                                               ; preds = %51
  store i32 11, i32* %10, align 4
  br label %66

65:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53
  br label %79

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %77 [
    i32 165, label %69
    i32 164, label %70
    i32 174, label %71
    i32 173, label %72
    i32 171, label %73
    i32 169, label %74
    i32 168, label %75
    i32 167, label %76
  ]

69:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %78

70:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %78

71:                                               ; preds = %67
  store i32 2, i32* %10, align 4
  br label %78

72:                                               ; preds = %67
  store i32 3, i32* %10, align 4
  br label %78

73:                                               ; preds = %67
  store i32 4, i32* %10, align 4
  br label %78

74:                                               ; preds = %67
  store i32 5, i32* %10, align 4
  br label %78

75:                                               ; preds = %67
  store i32 6, i32* %10, align 4
  br label %78

76:                                               ; preds = %67
  store i32 7, i32* %10, align 4
  br label %78

77:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %76, %75, %74, %73, %72, %71, %70, %69
  br label %79

79:                                               ; preds = %78, %66
  br label %100

80:                                               ; preds = %38
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %98 [
    i32 163, label %82
    i32 162, label %83
    i32 155, label %84
    i32 154, label %85
    i32 153, label %86
    i32 152, label %87
    i32 151, label %88
    i32 150, label %89
    i32 149, label %90
    i32 148, label %91
    i32 161, label %92
    i32 160, label %93
    i32 159, label %94
    i32 158, label %95
    i32 157, label %96
    i32 156, label %97
  ]

82:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %99

83:                                               ; preds = %80
  store i32 1, i32* %10, align 4
  br label %99

84:                                               ; preds = %80
  store i32 2, i32* %10, align 4
  br label %99

85:                                               ; preds = %80
  store i32 3, i32* %10, align 4
  br label %99

86:                                               ; preds = %80
  store i32 4, i32* %10, align 4
  br label %99

87:                                               ; preds = %80
  store i32 5, i32* %10, align 4
  br label %99

88:                                               ; preds = %80
  store i32 6, i32* %10, align 4
  br label %99

89:                                               ; preds = %80
  store i32 7, i32* %10, align 4
  br label %99

90:                                               ; preds = %80
  store i32 8, i32* %10, align 4
  br label %99

91:                                               ; preds = %80
  store i32 9, i32* %10, align 4
  br label %99

92:                                               ; preds = %80
  store i32 10, i32* %10, align 4
  br label %99

93:                                               ; preds = %80
  store i32 11, i32* %10, align 4
  br label %99

94:                                               ; preds = %80
  store i32 12, i32* %10, align 4
  br label %99

95:                                               ; preds = %80
  store i32 13, i32* %10, align 4
  br label %99

96:                                               ; preds = %80
  store i32 14, i32* %10, align 4
  br label %99

97:                                               ; preds = %80
  store i32 15, i32* %10, align 4
  br label %99

98:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %36
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
