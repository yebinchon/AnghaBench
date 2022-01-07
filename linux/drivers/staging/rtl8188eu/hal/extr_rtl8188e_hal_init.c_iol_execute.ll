; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_iol_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_iol_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@REG_HMEBOX_E0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iol_execute(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @_FAIL, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 15
  store i32 %10, i32* %4, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i32, i32* @REG_HMEBOX_E0, align 4
  %13 = call i32 @usb_read8(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i32, i32* @REG_HMEBOX_E0, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @usb_write8(%struct.adapter* %14, i32 %15, i32 %18)
  %20 = load i64, i64* @jiffies, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %36, %2
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = load i32, i32* @REG_HMEBOX_E0, align 4
  %24 = call i32 @usb_read8(%struct.adapter* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = call i32 @jiffies_to_msecs(i64 %31)
  %33 = icmp slt i32 %32, 1000
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i1 [ false, %21 ], [ %33, %28 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @udelay(i32 5)
  br label %21

38:                                               ; preds = %34
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load i32, i32* @REG_HMEBOX_E0, align 4
  %41 = call i32 @usb_read8(%struct.adapter* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @_FAIL, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @_SUCCESS, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 4
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @_FAIL, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
