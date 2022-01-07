; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, %struct._adapter* }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@LED_STATE_ON = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink2(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %6 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %7 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %6, i32 0, i32 7
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
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %174 [
    i32 129, label %28
    i32 128, label %101
  ]

28:                                               ; preds = %24
  %29 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %30 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %34 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %43 = load i32, i32* @_FW_LINKED, align 4
  %44 = call i32 @check_fwstate(%struct.mlme_priv* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i64, i64* @LED_STATE_ON, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %50 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* @LED_STATE_ON, align 8
  %52 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %53 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct._adapter*, %struct._adapter** %3, align 8
  %55 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %56 = call i32 @SwLedOn(%struct._adapter* %54, %struct.LED_871x* %55)
  br label %75

57:                                               ; preds = %41
  %58 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %59 = load i32, i32* @_FW_LINKED, align 4
  %60 = call i32 @check_fwstate(%struct.mlme_priv* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** @LED_STATE_OFF, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %66 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @LED_STATE_OFF, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct._adapter*, %struct._adapter** %3, align 8
  %72 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %73 = call i32 @SwLedOff(%struct._adapter* %71, %struct.LED_871x* %72)
  br label %74

74:                                               ; preds = %62, %57
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %77 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  br label %100

78:                                               ; preds = %38
  %79 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %80 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** @LED_STATE_OFF, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %87 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %92

88:                                               ; preds = %78
  %89 = load i64, i64* @LED_STATE_ON, align 8
  %90 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %91 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %94 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %93, i32 0, i32 4
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %97 = call i64 @msecs_to_jiffies(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @mod_timer(i32* %94, i64 %98)
  br label %100

100:                                              ; preds = %92, %75
  br label %175

101:                                              ; preds = %24
  %102 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %103 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %107 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %111
  %115 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %116 = load i32, i32* @_FW_LINKED, align 4
  %117 = call i32 @check_fwstate(%struct.mlme_priv* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i64, i64* @LED_STATE_ON, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %123 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load i64, i64* @LED_STATE_ON, align 8
  %125 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %126 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct._adapter*, %struct._adapter** %3, align 8
  %128 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %129 = call i32 @SwLedOn(%struct._adapter* %127, %struct.LED_871x* %128)
  br label %148

130:                                              ; preds = %114
  %131 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %132 = load i32, i32* @_FW_LINKED, align 4
  %133 = call i32 @check_fwstate(%struct.mlme_priv* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** @LED_STATE_OFF, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %139 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load i8*, i8** @LED_STATE_OFF, align 8
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %143 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct._adapter*, %struct._adapter** %3, align 8
  %145 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %146 = call i32 @SwLedOff(%struct._adapter* %144, %struct.LED_871x* %145)
  br label %147

147:                                              ; preds = %135, %130
  br label %148

148:                                              ; preds = %147, %119
  %149 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %150 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %149, i32 0, i32 3
  store i32 0, i32* %150, align 8
  br label %173

151:                                              ; preds = %111
  %152 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %153 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** @LED_STATE_OFF, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %160 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %165

161:                                              ; preds = %151
  %162 = load i64, i64* @LED_STATE_ON, align 8
  %163 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %164 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %167 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %166, i32 0, i32 4
  %168 = load i64, i64* @jiffies, align 8
  %169 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %170 = call i64 @msecs_to_jiffies(i32 %169)
  %171 = add nsw i64 %168, %170
  %172 = call i32 @mod_timer(i32* %167, i64 %171)
  br label %173

173:                                              ; preds = %165, %148
  br label %175

174:                                              ; preds = %24
  br label %175

175:                                              ; preds = %174, %173, %100
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
