; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_ResumeTxBeacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_ResumeTxBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i32 }

@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ResumeTxBeacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResumeTxBeacon(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  store %struct.hal_data_8188e* %6, %struct.hal_data_8188e** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %9 = add nsw i64 %8, 2
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %11 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BIT(i32 6)
  %14 = or i32 %12, %13
  %15 = call i32 @usb_write8(%struct.adapter* %7, i64 %9, i32 %14)
  %16 = call i32 @BIT(i32 6)
  %17 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %18 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @usb_write8(%struct.adapter* %21, i64 %23, i32 255)
  %25 = call i32 @BIT(i32 0)
  %26 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %27 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %32 = add nsw i64 %31, 2
  %33 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %3, align 8
  %34 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_write8(%struct.adapter* %30, i64 %32, i32 %35)
  ret void
}

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
