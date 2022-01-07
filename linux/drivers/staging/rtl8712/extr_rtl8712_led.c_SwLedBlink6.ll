; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedBlink6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LED_871x = type { i64, i32, i32, i32, i32, i32, %struct._adapter* }
%struct._adapter = type { i32 }

@LED_STATE_ON = common dso_local global i64 0, align 8
@LED_STATE_OFF = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LED_BLINK_FASTER_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@LED_BLINK_SCAN_INTERVAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LED_871x*)* @SwLedBlink6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedBlink6(%struct.LED_871x* %0) #0 {
  %2 = alloca %struct.LED_871x*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.LED_871x* %0, %struct.LED_871x** %2, align 8
  %5 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %6 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %5, i32 0, i32 6
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
  switch i32 %24, label %102 [
    i32 128, label %25
    i32 129, label %80
  ]

25:                                               ; preds = %21
  %26 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %27 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %31 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

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
  %47 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = load %struct._adapter*, %struct._adapter** %3, align 8
  %52 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %53 = call i32 @SwLedOn(%struct._adapter* %51, %struct.LED_871x* %52)
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %56 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  br label %79

57:                                               ; preds = %35
  %58 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %59 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** @LED_STATE_OFF, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %66 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load i64, i64* @LED_STATE_ON, align 8
  %69 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %70 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %73 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %72, i32 0, i32 3
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i32, i32* @LED_BLINK_FASTER_INTERVAL_ALPHA, align 4
  %76 = call i64 @msecs_to_jiffies(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @mod_timer(i32* %73, i64 %77)
  br label %79

79:                                               ; preds = %71, %54
  br label %103

80:                                               ; preds = %21
  %81 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %82 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** @LED_STATE_OFF, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %89 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load i64, i64* @LED_STATE_ON, align 8
  %92 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %93 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.LED_871x*, %struct.LED_871x** %2, align 8
  %96 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %95, i32 0, i32 3
  %97 = load i64, i64* @jiffies, align 8
  %98 = load i32, i32* @LED_BLINK_SCAN_INTERVAL_ALPHA, align 4
  %99 = call i64 @msecs_to_jiffies(i32 %98)
  %100 = add nsw i64 %97, %99
  %101 = call i32 @mod_timer(i32* %96, i64 %100)
  br label %103

102:                                              ; preds = %21
  br label %103

103:                                              ; preds = %102, %94, %79
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
