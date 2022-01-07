; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_init_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_init_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@REG_SD_CFG1 = common dso_local global i32 0, align 4
@REG_SD_CFG2 = common dso_local global i32 0, align 4
@REG_SD_CFG3 = common dso_local global i32 0, align 4
@REG_SD_STAT1 = common dso_local global i32 0, align 4
@REG_SD_STAT2 = common dso_local global i64 0, align 8
@REG_SD_BUS_STAT = common dso_local global i64 0, align 8
@REG_SD_PAD_CTL = common dso_local global i64 0, align 8
@REG_SD_SAMPLE_POINT_CTL = common dso_local global i64 0, align 8
@REG_SD_PUSH_POINT_CTL = common dso_local global i64 0, align 8
@REG_SD_CMD0 = common dso_local global i32 0, align 4
@REG_SD_CMD1 = common dso_local global i32 0, align 4
@REG_SD_CMD2 = common dso_local global i32 0, align 4
@REG_SD_CMD3 = common dso_local global i32 0, align 4
@REG_SD_CMD4 = common dso_local global i32 0, align 4
@REG_SD_CMD5 = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_L = common dso_local global i32 0, align 4
@REG_SD_BLOCK_CNT_H = common dso_local global i32 0, align 4
@REG_SD_TRANSFER = common dso_local global i32 0, align 4
@REG_SD_VPCLK0_CTL = common dso_local global i64 0, align 8
@REG_SD_VPCLK1_CTL = common dso_local global i64 0, align 8
@REG_SD_DCMPS0_CTL = common dso_local global i64 0, align 8
@REG_SD_DCMPS1_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @sd_init_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_init_reg_addr(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  store i32 64817, i32* @REG_SD_CFG1, align 4
  store i32 64819, i32* @REG_SD_CFG2, align 4
  store i32 64830, i32* @REG_SD_CFG3, align 4
  store i32 64816, i32* @REG_SD_STAT1, align 4
  store i64 0, i64* @REG_SD_STAT2, align 8
  store i64 0, i64* @REG_SD_BUS_STAT, align 8
  store i64 0, i64* @REG_SD_PAD_CTL, align 8
  store i64 0, i64* @REG_SD_SAMPLE_POINT_CTL, align 8
  store i64 0, i64* @REG_SD_PUSH_POINT_CTL, align 8
  store i32 64820, i32* @REG_SD_CMD0, align 4
  store i32 64821, i32* @REG_SD_CMD1, align 4
  store i32 64822, i32* @REG_SD_CMD2, align 4
  store i32 64823, i32* @REG_SD_CMD3, align 4
  store i32 64824, i32* @REG_SD_CMD4, align 4
  store i32 64858, i32* @REG_SD_CMD5, align 4
  store i32 64825, i32* @REG_SD_BYTE_CNT_L, align 4
  store i32 64826, i32* @REG_SD_BYTE_CNT_H, align 4
  store i32 64827, i32* @REG_SD_BLOCK_CNT_L, align 4
  store i32 64828, i32* @REG_SD_BLOCK_CNT_H, align 4
  store i32 64818, i32* @REG_SD_TRANSFER, align 4
  store i64 0, i64* @REG_SD_VPCLK0_CTL, align 8
  store i64 0, i64* @REG_SD_VPCLK1_CTL, align 8
  store i64 0, i64* @REG_SD_DCMPS0_CTL, align 8
  store i64 0, i64* @REG_SD_DCMPS1_CTL, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
