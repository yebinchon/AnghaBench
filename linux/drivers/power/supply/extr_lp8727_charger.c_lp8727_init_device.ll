; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8727_chg = type { i32 }

@LP8788_NUM_INTREGS = common dso_local global i32 0, align 4
@LP8727_INT1 = common dso_local global i32 0, align 4
@LP8727_ID200_EN = common dso_local global i32 0, align 4
@LP8727_ADC_EN = common dso_local global i32 0, align 4
@LP8727_CP_EN = common dso_local global i32 0, align 4
@LP8727_CTRL1 = common dso_local global i32 0, align 4
@LP8727_INT_EN = common dso_local global i32 0, align 4
@LP8727_CHGDET_EN = common dso_local global i32 0, align 4
@LP8727_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8727_chg*)* @lp8727_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8727_init_device(%struct.lp8727_chg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp8727_chg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lp8727_chg* %0, %struct.lp8727_chg** %3, align 8
  %9 = load i32, i32* @LP8788_NUM_INTREGS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %14 = load i32, i32* @LP8727_INT1, align 4
  %15 = load i32, i32* @LP8788_NUM_INTREGS, align 4
  %16 = call i32 @lp8727_read_bytes(%struct.lp8727_chg* %13, i32 %14, i32* %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load i32, i32* @LP8727_ID200_EN, align 4
  %23 = load i32, i32* @LP8727_ADC_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @LP8727_CP_EN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %28 = load i32, i32* @LP8727_CTRL1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @lp8727_write_byte(%struct.lp8727_chg* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* @LP8727_INT_EN, align 4
  %37 = load i32, i32* @LP8727_CHGDET_EN, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %40 = load i32, i32* @LP8727_CTRL2, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @lp8727_write_byte(%struct.lp8727_chg* %39, i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %35, %33, %19
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lp8727_read_bytes(%struct.lp8727_chg*, i32, i32*, i32) #2

declare dso_local i32 @lp8727_write_byte(%struct.lp8727_chg*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
