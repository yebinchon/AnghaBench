; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, i32, %struct._adapter* }
%struct._adapter = type { i32 }

@LED_STATE_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_STATE_OFF = common dso_local global i8* null, align 8
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink5(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %5 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %6 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %5, i32 0, i32 7
  %7 = load %struct._adapter*, %struct._adapter** %6, align 8
  store %struct._adapter* %7, %struct._adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %9 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LED_STATE_ON, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %16 = call i32 @SwLedOn(%struct._adapter* %14, %struct.LED_871x* %15)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %20 = call i32 @SwLedOff(%struct._adapter* %18, %struct.LED_871x* %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %23 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %143 [
    i32 129, label %25
    i32 128, label %84
  ]

25:                                               ; preds = %21
  %26 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %27 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %31 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i64, i64* @LED_STATE_ON, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %42 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @LED_STATE_ON, align 8
  %44 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %45 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %47 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %38
  %51 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %52 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %51, i32 0, i32 4
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %55 = call i64 @msecs_to_jiffies(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @mod_timer(i32* %52, i64 %56)
  br label %58

58:                                               ; preds = %50, %38
  %59 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %60 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %59, i32 0, i32 2
  store i32 0, i32* %60, align 4
  br label %83

61:                                               ; preds = %35
  %62 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %63 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** @LED_STATE_OFF, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %75

71:                                               ; preds = %61
  %72 = load i64, i64* @LED_STATE_ON, align 8
  %73 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %74 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %77 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %76, i32 0, i32 4
  %78 = load i64, i64* @jiffies, align 8
  %79 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %80 = call i64 @msecs_to_jiffies(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @mod_timer(i32* %77, i64 %81)
  br label %83

83:                                               ; preds = %75, %58
  br label %144

84:                                               ; preds = %21
  %85 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %86 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %90 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load i64, i64* @LED_STATE_ON, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %101 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i64, i64* @LED_STATE_ON, align 8
  %103 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %104 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %106 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %97
  %110 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %111 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %110, i32 0, i32 4
  %112 = load i64, i64* @jiffies, align 8
  %113 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %114 = call i64 @msecs_to_jiffies(i32 %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @mod_timer(i32* %111, i64 %115)
  br label %117

117:                                              ; preds = %109, %97
  %118 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %119 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %118, i32 0, i32 3
  store i32 0, i32* %119, align 8
  br label %142

120:                                              ; preds = %94
  %121 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %122 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8*, i8** @LED_STATE_OFF, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %129 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %134

130:                                              ; preds = %120
  %131 = load i64, i64* @LED_STATE_ON, align 8
  %132 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %133 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %136 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %135, i32 0, i32 4
  %137 = load i64, i64* @jiffies, align 8
  %138 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %139 = call i64 @msecs_to_jiffies(i32 %138)
  %140 = add nsw i64 %137, %139
  %141 = call i32 @mod_timer(i32* %136, i64 %140)
  br label %142

142:                                              ; preds = %134, %117
  br label %144

143:                                              ; preds = %21
  br label %144

144:                                              ; preds = %143, %142, %83
  ret void
}

declare dso_local i32 @SwLedOn(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @SwLedOff(%struct._adapter*, %struct.LED_871x*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
