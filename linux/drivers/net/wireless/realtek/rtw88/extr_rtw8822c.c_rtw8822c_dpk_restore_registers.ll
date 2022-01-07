; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_restore_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_restore_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i32 }

@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_RXSRAM_CTL = common dso_local global i32 0, align 4
@BIT_DPD_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, %struct.rtw_backup_info*)* @rtw8822c_dpk_restore_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_restore_registers(%struct.rtw_dev* %0, i32 %1, %struct.rtw_backup_info* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_backup_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rtw_backup_info* %2, %struct.rtw_backup_info** %6, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %8 = load %struct.rtw_backup_info*, %struct.rtw_backup_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @rtw_restore_reg(%struct.rtw_dev* %7, %struct.rtw_backup_info* %8, i32 %9)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = load i32, i32* @REG_NCTL0, align 4
  %13 = load i32, i32* @BIT_SUBPAGE, align 4
  %14 = call i32 @rtw_write32_mask(%struct.rtw_dev* %11, i32 %12, i32 %13, i32 12)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %17 = load i32, i32* @BIT_DPD_CLK, align 4
  %18 = call i32 @rtw_write32_mask(%struct.rtw_dev* %15, i32 %16, i32 %17, i32 4)
  ret void
}

declare dso_local i32 @rtw_restore_reg(%struct.rtw_dev*, %struct.rtw_backup_info*, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
