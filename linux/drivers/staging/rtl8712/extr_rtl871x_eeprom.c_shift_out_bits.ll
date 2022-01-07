; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_shift_out_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_shift_out_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@_EEDI = common dso_local global i32 0, align 4
@CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32, i32)* @shift_out_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_out_bits(%struct._adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct._adapter*, %struct._adapter** %4, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %77

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct._adapter*, %struct._adapter** %4, align 8
  %19 = load i32, i32* @EE_9346CR, align 4
  %20 = call i32 @r8712_read8(%struct._adapter* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @_EEDO, align 4
  %22 = load i32, i32* @_EEDI, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %59, %14
  %28 = load i32, i32* @_EEDI, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @_EEDI, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct._adapter*, %struct._adapter** %4, align 8
  %42 = getelementptr inbounds %struct._adapter, %struct._adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %77

46:                                               ; preds = %40
  %47 = load %struct._adapter*, %struct._adapter** %4, align 8
  %48 = load i32, i32* @EE_9346CR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @r8712_write8(%struct._adapter* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @CLOCK_RATE, align 4
  %52 = call i32 @udelay(i32 %51)
  %53 = load %struct._adapter*, %struct._adapter** %4, align 8
  %54 = call i32 @up_clk(%struct._adapter* %53, i32* %7)
  %55 = load %struct._adapter*, %struct._adapter** %4, align 8
  %56 = call i32 @down_clk(%struct._adapter* %55, i32* %7)
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %27, label %62

62:                                               ; preds = %59
  %63 = load %struct._adapter*, %struct._adapter** %4, align 8
  %64 = getelementptr inbounds %struct._adapter, %struct._adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %77

68:                                               ; preds = %62
  %69 = load i32, i32* @_EEDI, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct._adapter*, %struct._adapter** %4, align 8
  %74 = load i32, i32* @EE_9346CR, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @r8712_write8(%struct._adapter* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %67, %45, %13
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @up_clk(%struct._adapter*, i32*) #1

declare dso_local i32 @down_clk(%struct._adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
