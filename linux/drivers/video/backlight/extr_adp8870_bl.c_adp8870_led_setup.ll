; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_led_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8870_bl.c_adp8870_led_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp8870_led = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADP8870_ISC1 = common dso_local global i64 0, align 8
@ADP8870_ISCC = common dso_local global i32 0, align 4
@ADP8870_ISCT1 = common dso_local global i32 0, align 4
@ADP8870_ISCT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp8870_led*)* @adp8870_led_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8870_led_setup(%struct.adp8870_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adp8870_led*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.adp8870_led* %0, %struct.adp8870_led** %3, align 8
  %6 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %7 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i64, i64* @ADP8870_ISC1, align 8
  %11 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %12 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @adp8870_write(%struct.i2c_client* %9, i64 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @ADP8870_ISCC, align 4
  %25 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %26 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 1, %28
  %30 = call i32 @adp8870_set_bits(%struct.i2c_client* %23, i32 %24, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %70

35:                                               ; preds = %22
  %36 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %37 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @ADP8870_ISCT1, align 4
  %43 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %44 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %48 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 5
  %51 = mul nsw i32 %50, 2
  %52 = shl i32 %46, %51
  %53 = call i32 @adp8870_set_bits(%struct.i2c_client* %41, i32 %42, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %35
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* @ADP8870_ISCT2, align 4
  %57 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %58 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 3
  %61 = load %struct.adp8870_led*, %struct.adp8870_led** %3, align 8
  %62 = getelementptr inbounds %struct.adp8870_led, %struct.adp8870_led* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = mul nsw i32 %64, 2
  %66 = shl i32 %60, %65
  %67 = call i32 @adp8870_set_bits(%struct.i2c_client* %55, i32 %56, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %54, %40
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %33, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @adp8870_write(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @adp8870_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
