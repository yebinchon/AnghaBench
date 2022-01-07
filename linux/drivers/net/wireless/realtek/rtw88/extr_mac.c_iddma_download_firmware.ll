; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_iddma_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_iddma_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@BIT_DDMACH0_CHKSUM_EN = common dso_local global i32 0, align 4
@BIT_DDMACH0_OWN = common dso_local global i32 0, align 4
@REG_DDMA_CH0CTRL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BIT_MASK_DDMACH0_DLEN = common dso_local global i32 0, align 4
@BIT_DDMACH0_CHKSUM_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32, i32, i32)* @iddma_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iddma_download_firmware(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @BIT_DDMACH0_CHKSUM_EN, align 4
  %14 = load i32, i32* @BIT_DDMACH0_OWN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %17 = load i32, i32* @REG_DDMA_CH0CTRL, align 4
  %18 = load i32, i32* @BIT_DDMACH0_OWN, align 4
  %19 = call i32 @check_hw_ready(%struct.rtw_dev* %16, i32 %17, i32 %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %47

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @BIT_MASK_DDMACH0_DLEN, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @BIT_DDMACH0_CHKSUM_CONT, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @iddma_enable(%struct.rtw_dev* %37, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %43, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i64 @iddma_enable(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
