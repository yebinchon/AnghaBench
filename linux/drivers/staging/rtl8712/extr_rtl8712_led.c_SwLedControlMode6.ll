; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedControlMode6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.led_priv }
%struct.mlme_priv = type { i32 }
%struct.led_priv = type { %struct.LED_871x }
%struct.LED_871x = type { i32, i32, i32, i32, i8*, i8*, i32 }

@LED_STATE_ON = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_TXRX_BLINK = common dso_local global i8* null, align 8
@LED_STATE_OFF = common dso_local global i8* null, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_WPS = common dso_local global i8* null, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SwLedControlMode6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedControlMode6(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.LED_871x*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 1
  store %struct.led_priv* %9, %struct.led_priv** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %13 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %12, i32 0, i32 0
  store %struct.LED_871x* %13, %struct.LED_871x** %7, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %178 [
    i32 135, label %15
    i32 137, label %15
    i32 138, label %15
    i32 133, label %15
    i32 128, label %35
    i32 134, label %35
    i32 132, label %79
    i32 131, label %79
    i32 129, label %122
    i32 130, label %122
    i32 136, label %146
  ]

15:                                               ; preds = %2, %2, %2, %2
  %16 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %17 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %179

20:                                               ; preds = %15
  %21 = load i8*, i8** @LED_STATE_ON, align 8
  %22 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %23 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @LED_STATE_ON, align 8
  %25 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %26 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %28 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 3
  %31 = load i64, i64* @jiffies, align 8
  %32 = call i64 @msecs_to_jiffies(i32 0)
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* %30, i64 %33)
  br label %179

35:                                               ; preds = %2, %2
  %36 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %37 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %78, label %40

40:                                               ; preds = %35
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %42 = load i32, i32* @_FW_LINKED, align 4
  %43 = call i32 @check_fwstate(%struct.mlme_priv* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %40
  %46 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %47 = call i32 @IS_LED_WPS_BLINKING(%struct.LED_871x* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %179

50:                                               ; preds = %45
  %51 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %52 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i8*, i8** @LED_TXRX_BLINK, align 8
  %54 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %55 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %57 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %56, i32 0, i32 1
  store i32 2, i32* %57, align 4
  %58 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %59 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i8*, i8** @LED_STATE_OFF, align 8
  %64 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %65 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %70

66:                                               ; preds = %50
  %67 = load i8*, i8** @LED_STATE_ON, align 8
  %68 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %69 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %72 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %71, i32 0, i32 3
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %75 = call i64 @msecs_to_jiffies(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @mod_timer(i32* %72, i64 %76)
  br label %78

78:                                               ; preds = %70, %40, %35
  br label %179

79:                                               ; preds = %2, %2
  %80 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %81 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %79
  %85 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %86 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %91 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %90, i32 0, i32 3
  %92 = call i32 @del_timer(i32* %91)
  %93 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %94 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %97 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  %98 = load i8*, i8** @LED_BLINK_WPS, align 8
  %99 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %100 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %102 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load i8*, i8** @LED_STATE_OFF, align 8
  %107 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %108 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  br label %113

109:                                              ; preds = %95
  %110 = load i8*, i8** @LED_STATE_ON, align 8
  %111 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %112 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %115 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %114, i32 0, i32 3
  %116 = load i64, i64* @jiffies, align 8
  %117 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %118 = call i64 @msecs_to_jiffies(i32 %117)
  %119 = add nsw i64 %116, %118
  %120 = call i32 @mod_timer(i32* %115, i64 %119)
  br label %121

121:                                              ; preds = %113, %79
  br label %179

122:                                              ; preds = %2, %2
  %123 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %124 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %129 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %128, i32 0, i32 3
  %130 = call i32 @del_timer(i32* %129)
  %131 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %132 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i8*, i8** @LED_STATE_ON, align 8
  %135 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @LED_STATE_ON, align 8
  %138 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %141 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %140, i32 0, i32 3
  %142 = load i64, i64* @jiffies, align 8
  %143 = call i64 @msecs_to_jiffies(i32 0)
  %144 = add nsw i64 %142, %143
  %145 = call i32 @mod_timer(i32* %141, i64 %144)
  br label %179

146:                                              ; preds = %2
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
  %164 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %165 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %170 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %169, i32 0, i32 3
  %171 = call i32 @del_timer(i32* %170)
  %172 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %173 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %172, i32 0, i32 2
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %168, %163
  %175 = load %struct._adapter*, %struct._adapter** %3, align 8
  %176 = load %struct.LED_871x*, %struct.LED_871x** %7, align 8
  %177 = call i32 @SwLedOff(%struct._adapter* %175, %struct.LED_871x* %176)
  br label %179

178:                                              ; preds = %2
  br label %179

179:                                              ; preds = %19, %49, %178, %174, %133, %121, %78, %20
  ret void
}

declare dso_local i32 @IS_LED_WPS_BLINKING(%struct.LED_871x*) #1

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
