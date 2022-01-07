; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_shift_in_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_shift_in_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*)* @shift_in_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_in_bits(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = load i32, i32* @EE_9346CR, align 4
  %14 = call i32 @r8712_read8(%struct._adapter* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @_EEDO, align 4
  %16 = load i32, i32* @_EEDI, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %52, %11
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load %struct._adapter*, %struct._adapter** %2, align 8
  %28 = call i32 @up_clk(%struct._adapter* %27, i32* %3)
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %56

34:                                               ; preds = %24
  %35 = load %struct._adapter*, %struct._adapter** %2, align 8
  %36 = load i32, i32* @EE_9346CR, align 4
  %37 = call i32 @r8712_read8(%struct._adapter* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @_EEDI, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @_EEDO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %34
  %50 = load %struct._adapter*, %struct._adapter** %2, align 8
  %51 = call i32 @down_clk(%struct._adapter* %50, i32* %3)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %21

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55, %33, %10
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @up_clk(%struct._adapter*, i32*) #1

declare dso_local i32 @down_clk(%struct._adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
