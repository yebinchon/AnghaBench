; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_LedControl871x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_LedControl871x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.led_priv }
%struct.led_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LedControl871x(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  store %struct.led_priv* %7, %struct.led_priv** %5, align 8
  %8 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %9 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.led_priv*, %struct.led_priv** %5, align 8
  %15 = getelementptr inbounds %struct.led_priv, %struct.led_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %42 [
    i32 134, label %17
    i32 133, label %18
    i32 132, label %22
    i32 131, label %26
    i32 130, label %30
    i32 129, label %34
    i32 128, label %38
  ]

17:                                               ; preds = %13
  br label %43

18:                                               ; preds = %13
  %19 = load %struct._adapter*, %struct._adapter** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SwLedControlMode1(%struct._adapter* %19, i32 %20)
  br label %43

22:                                               ; preds = %13
  %23 = load %struct._adapter*, %struct._adapter** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SwLedControlMode2(%struct._adapter* %23, i32 %24)
  br label %43

26:                                               ; preds = %13
  %27 = load %struct._adapter*, %struct._adapter** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @SwLedControlMode3(%struct._adapter* %27, i32 %28)
  br label %43

30:                                               ; preds = %13
  %31 = load %struct._adapter*, %struct._adapter** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @SwLedControlMode4(%struct._adapter* %31, i32 %32)
  br label %43

34:                                               ; preds = %13
  %35 = load %struct._adapter*, %struct._adapter** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @SwLedControlMode5(%struct._adapter* %35, i32 %36)
  br label %43

38:                                               ; preds = %13
  %39 = load %struct._adapter*, %struct._adapter** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @SwLedControlMode6(%struct._adapter* %39, i32 %40)
  br label %43

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %12, %42, %38, %34, %30, %26, %22, %18, %17
  ret void
}

declare dso_local i32 @SwLedControlMode1(%struct._adapter*, i32) #1

declare dso_local i32 @SwLedControlMode2(%struct._adapter*, i32) #1

declare dso_local i32 @SwLedControlMode3(%struct._adapter*, i32) #1

declare dso_local i32 @SwLedControlMode4(%struct._adapter*, i32) #1

declare dso_local i32 @SwLedControlMode5(%struct._adapter*, i32) #1

declare dso_local i32 @SwLedControlMode6(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
