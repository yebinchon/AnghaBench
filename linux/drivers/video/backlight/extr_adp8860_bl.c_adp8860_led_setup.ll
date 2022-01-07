; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_led_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp8860_led = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADP8860_ISC1 = common dso_local global i64 0, align 8
@ADP8860_ISCC = common dso_local global i32 0, align 4
@ADP8860_ISCT1 = common dso_local global i32 0, align 4
@ADP8860_ISCT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adp8860_led*)* @adp8860_led_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_led_setup(%struct.adp8860_led* %0) #0 {
  %2 = alloca %struct.adp8860_led*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.adp8860_led* %0, %struct.adp8860_led** %2, align 8
  %5 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %6 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %5, i32 0, i32 2
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load i64, i64* @ADP8860_ISC1, align 8
  %10 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %11 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %9, %13
  %15 = add nsw i64 %14, 1
  %16 = call i32 @adp8860_write(%struct.i2c_client* %8, i64 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load i32, i32* @ADP8860_ISCC, align 4
  %19 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %20 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = call i32 @adp8860_set_bits(%struct.i2c_client* %17, i32 %18, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %28 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %47

31:                                               ; preds = %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @ADP8860_ISCT1, align 4
  %34 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %35 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %39 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 5
  %42 = mul nsw i32 %41, 2
  %43 = shl i32 %37, %42
  %44 = call i32 @adp8860_set_bits(%struct.i2c_client* %32, i32 %33, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = load i32, i32* @ADP8860_ISCT2, align 4
  %50 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %51 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 3
  %54 = load %struct.adp8860_led*, %struct.adp8860_led** %2, align 8
  %55 = getelementptr inbounds %struct.adp8860_led, %struct.adp8860_led* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = mul nsw i32 %57, 2
  %59 = shl i32 %53, %58
  %60 = call i32 @adp8860_set_bits(%struct.i2c_client* %48, i32 %49, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %31
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @adp8860_write(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @adp8860_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
