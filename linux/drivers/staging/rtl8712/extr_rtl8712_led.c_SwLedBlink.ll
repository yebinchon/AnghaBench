; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i64, i32, i32, i32, i64, %struct._adapter* }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@LED_STATE_ON = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_NORMAL_INTERVAL = common dso_local global i32 0, align 4
@LED_BLINK_SLOWLY_INTERVAL = common dso_local global i32 0, align 4
@LED_BLINK_LONG_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %6 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %7 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %6, i32 0, i32 6
  %8 = load %struct._adapter*, %struct._adapter** %7, align 8
  store %struct._adapter* %8, %struct._adapter** %3, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %12 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LED_STATE_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %19 = call i32 @SwLedOn(%struct._adapter* %17, %struct.LED_871x* %18)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %23 = call i32 @SwLedOff(%struct._adapter* %21, %struct.LED_871x* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %26 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %87 [
    i32 131, label %32
    i32 129, label %39
    i32 128, label %80
  ]

32:                                               ; preds = %24
  %33 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %88

39:                                               ; preds = %24
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %41 = load i32, i32* @_FW_LINKED, align 4
  %42 = call i64 @check_fwstate(%struct.mlme_priv* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WIFI_STATION_STATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %44, %39
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %54 = load i32, i32* @_FW_LINKED, align 4
  %55 = call i64 @check_fwstate(%struct.mlme_priv* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %59 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %57
  store i32 1, i32* %5, align 4
  br label %79

72:                                               ; preds = %64, %52
  %73 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %74 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %79

79:                                               ; preds = %78, %71
  br label %88

80:                                               ; preds = %24
  %81 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %82 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %88

87:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86, %79, %38
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %88
  %92 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %93 = load i32, i32* @_FW_LINKED, align 4
  %94 = call i64 @check_fwstate(%struct.mlme_priv* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %98 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load %struct._adapter*, %struct._adapter** %3, align 8
  %103 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %104 = call i32 @SwLedOn(%struct._adapter* %102, %struct.LED_871x* %103)
  br label %120

105:                                              ; preds = %96, %91
  %106 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %107 = load i32, i32* @_FW_LINKED, align 4
  %108 = call i64 @check_fwstate(%struct.mlme_priv* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %112 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct._adapter*, %struct._adapter** %3, align 8
  %117 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %118 = call i32 @SwLedOff(%struct._adapter* %116, %struct.LED_871x* %117)
  br label %119

119:                                              ; preds = %115, %110, %105
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %122 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  br label %176

125:                                              ; preds = %88
  %126 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %127 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @LED_STATE_ON, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* @LED_STATE_OFF, align 8
  %133 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %134 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %139

135:                                              ; preds = %125
  %136 = load i64, i64* @LED_STATE_ON, align 8
  %137 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %138 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %141 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %167 [
    i32 131, label %143
    i32 130, label %151
    i32 129, label %151
    i32 128, label %159
  ]

143:                                              ; preds = %139
  %144 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %145 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %144, i32 0, i32 4
  %146 = load i64, i64* @jiffies, align 8
  %147 = load i32, i32* @LED_BLINK_NORMAL_INTERVAL, align 4
  %148 = call i64 @msecs_to_jiffies(i32 %147)
  %149 = add nsw i64 %146, %148
  %150 = call i32 @mod_timer(i32* %145, i64 %149)
  br label %175

151:                                              ; preds = %139, %139
  %152 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %153 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %152, i32 0, i32 4
  %154 = load i64, i64* @jiffies, align 8
  %155 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %156 = call i64 @msecs_to_jiffies(i32 %155)
  %157 = add nsw i64 %154, %156
  %158 = call i32 @mod_timer(i32* %153, i64 %157)
  br label %175

159:                                              ; preds = %139
  %160 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %161 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %160, i32 0, i32 4
  %162 = load i64, i64* @jiffies, align 8
  %163 = load i32, i32* @LED_BLINK_LONG_INTERVAL, align 4
  %164 = call i64 @msecs_to_jiffies(i32 %163)
  %165 = add nsw i64 %162, %164
  %166 = call i32 @mod_timer(i32* %161, i64 %165)
  br label %175

167:                                              ; preds = %139
  %168 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %169 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %168, i32 0, i32 4
  %170 = load i64, i64* @jiffies, align 8
  %171 = load i32, i32* @LED_BLINK_SLOWLY_INTERVAL, align 4
  %172 = call i64 @msecs_to_jiffies(i32 %171)
  %173 = add nsw i64 %170, %172
  %174 = call i32 @mod_timer(i32* %169, i64 %173)
  br label %175

175:                                              ; preds = %167, %159, %151, %143
  br label %176

176:                                              ; preds = %175, %120
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
