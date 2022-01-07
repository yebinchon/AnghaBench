; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_end_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_download_firmware_end_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_TXDMA_STATUS = common dso_local global i32 0, align 4
@BTI_PAGE_OVF = common dso_local global i32 0, align 4
@REG_MCUFW_CTRL = common dso_local global i32 0, align 4
@BIT_CHECK_SUM_OK = common dso_local global i32 0, align 4
@BIT_FW_DW_RDY = common dso_local global i32 0, align 4
@BIT_MCUFWDL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @download_firmware_end_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @download_firmware_end_flow(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = load i32, i32* @REG_TXDMA_STATUS, align 4
  %6 = load i32, i32* @BTI_PAGE_OVF, align 4
  %7 = call i32 @rtw_write32(%struct.rtw_dev* %4, i32 %5, i32 %6)
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %10 = call i32 @rtw_read16(%struct.rtw_dev* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BIT_CHECK_SUM_OK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @BIT_CHECK_SUM_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BIT_FW_DW_RDY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BIT_MCUFWDL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %25 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rtw_write16(%struct.rtw_dev* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
