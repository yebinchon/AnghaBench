; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_hw_var_set_bcn_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_hw_var_set_bcn_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@EN_TXBCN_RPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64*)* @hw_var_set_bcn_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_bcn_func(%struct.adapter* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @REG_BCN_CTRL, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %16 = load i32, i32* @EN_TXBCN_RPT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @usb_write8(%struct.adapter* %13, i32 %14, i32 %17)
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @usb_read8(%struct.adapter* %22, i32 %23)
  %25 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %26 = load i32, i32* @EN_TXBCN_RPT, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = call i32 @usb_write8(%struct.adapter* %20, i32 %21, i32 %29)
  br label %31

31:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
