; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedOn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_led.c_SwLedOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64, i64 }
%struct.LED_871x = type { i32, i32 }

@LEDCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.LED_871x*)* @SwLedOn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SwLedOn(%struct._adapter* %0, %struct.LED_871x* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.LED_871x*, align 8
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.LED_871x* %1, %struct.LED_871x** %4, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %40

16:                                               ; preds = %10
  %17 = load %struct._adapter*, %struct._adapter** %3, align 8
  %18 = load i32, i32* @LEDCFG, align 4
  %19 = call i32 @r8712_read8(%struct._adapter* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.LED_871x*, %struct.LED_871x** %4, align 8
  %21 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %36 [
    i32 130, label %23
    i32 129, label %24
    i32 128, label %30
  ]

23:                                               ; preds = %16
  br label %37

24:                                               ; preds = %16
  %25 = load %struct._adapter*, %struct._adapter** %3, align 8
  %26 = load i32, i32* @LEDCFG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 240
  %29 = call i32 @r8712_write8(%struct._adapter* %25, i32 %26, i32 %28)
  br label %37

30:                                               ; preds = %16
  %31 = load %struct._adapter*, %struct._adapter** %3, align 8
  %32 = load i32, i32* @LEDCFG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 15
  %35 = call i32 @r8712_write8(%struct._adapter* %31, i32 %32, i32 %34)
  br label %37

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %30, %24, %23
  %38 = load %struct.LED_871x*, %struct.LED_871x** %4, align 8
  %39 = getelementptr inbounds %struct.LED_871x, %struct.LED_871x* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
