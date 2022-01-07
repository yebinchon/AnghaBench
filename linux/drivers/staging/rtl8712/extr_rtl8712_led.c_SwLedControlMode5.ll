; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_3__, %struct.mlme_priv, %struct.led_priv }
%struct.TYPE_3__ = type { i64 }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i8*, i8*, i32 }

@RT_CID_819x_CAMEO = common dso_local global i64 0, align 8
@LED_SCAN_BLINK = common dso_local global i8* null, align 8
@LED_STATE_ON = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i8* null, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_TXRX_BLINK = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode5(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.LED_871x*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 2
  store %struct.led_priv* %9, %struct.led_priv** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %13 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %12, i32 0, i32 1
  store %struct.LED_871x* %13, %struct.LED_871x** %7, align 8
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RT_CID_819x_CAMEO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %22 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %21, i32 0, i32 0
  store %struct.LED_871x* %22, %struct.LED_871x** %7, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %167 [
    i32 131, label %25
    i32 133, label %25
    i32 134, label %25
    i32 129, label %47
    i32 128, label %105
    i32 130, label %105
    i32 132, label %146
  ]

25:                                               ; preds = %23, %23, %23
  %26 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %27 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %168

32:                                               ; preds = %25
  %33 = load i8*, i8** @LED_STATE_ON, align 8
  %34 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %35 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @LED_STATE_ON, align 8
  %37 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %38 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %40 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %42 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %41, i32 0, i32 3
  %43 = load i64, i64* @jiffies, align 8
  %44 = call i64 @msecs_to_jiffies(i32 0)
  %45 = add nsw i64 %43, %44
  %46 = call i32 @mod_timer(i32* %42, i64 %45)
  br label %168

47:                                               ; preds = %23
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %55 = load i32, i32* @_FW_LINKED, align 4
  %56 = call i32 @check_fwstate(%struct.mlme_priv* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %104

59:                                               ; preds = %53, %47
  %60 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %61 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %103, label %64

64:                                               ; preds = %59
  %65 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %66 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %71 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %70, i32 0, i32 3
  %72 = call i32 @del_timer(i32* %71)
  %73 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %74 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %77 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %79 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %80 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %82 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %81, i32 0, i32 2
  store i32 24, i32* %82, align 8
  %83 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %84 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load i8*, i8** @LED_STATE_OFF, align 8
  %89 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %90 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %75
  %92 = load i8*, i8** @LED_STATE_ON, align 8
  %93 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %94 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %97 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %96, i32 0, i32 3
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %100 = call i64 @msecs_to_jiffies(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @mod_timer(i32* %97, i64 %101)
  br label %103

103:                                              ; preds = %95, %59
  br label %104

104:                                              ; preds = %103, %58
  br label %168

105:                                              ; preds = %23, %23
  %106 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %107 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %105
  %111 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %112 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %111, i32 0, i32 5
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** @LED_SCAN_BLINK, align 8
  %115 = icmp eq i8* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %168

117:                                              ; preds = %110
  %118 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %119 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i8*, i8** @LED_TXRX_BLINK, align 8
  %121 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %122 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 2
  store i32 2, i32* %124, align 8
  %125 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %126 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load i8*, i8** @LED_STATE_OFF, align 8
  %131 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %132 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  br label %137

133:                                              ; preds = %117
  %134 = load i8*, i8** @LED_STATE_ON, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 3
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %142 = call i64 @msecs_to_jiffies(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @mod_timer(i32* %139, i64 %143)
  br label %145

145:                                              ; preds = %137, %105
  br label %168

146:                                              ; preds = %23
  %147 = load i8*, i8** @LED_STATE_OFF, align 8
  %148 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %149 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @LED_STATE_OFF, align 8
  %151 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %152 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %154 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %146
  %158 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %159 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %158, i32 0, i32 3
  %160 = call i32 @del_timer(i32* %159)
  %161 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %162 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %146
  %164 = load %struct._adapter*, %struct._adapter** %3, align 8
  %165 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %166 = call i32 @SwLedOff(%struct._adapter* %164, %struct.LED_871x* %165)
  br label %168

167:                                              ; preds = %23
  br label %168

168:                                              ; preds = %31, %116, %167, %163, %145, %104, %32
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
