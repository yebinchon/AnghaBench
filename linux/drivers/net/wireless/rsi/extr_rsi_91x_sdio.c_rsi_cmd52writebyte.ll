; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_cmd52writebyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_cmd52writebyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@SD_IO_RW_DIRECT = common dso_local global i32 0, align 4
@MMC_RSP_R5 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32, i32)* @rsi_cmd52writebyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_cmd52writebyte(%struct.mmc_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_command, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 12)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rsi_sdio_set_cmd52_arg(i32 1, i32 0, i32 0, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @SD_IO_RW_DIRECT, align 4
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @MMC_RSP_R5, align 4
  %18 = load i32, i32* @MMC_CMD_AC, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mmc_wait_for_cmd(i32 %23, %struct.mmc_command* %7, i32 0)
  ret i32 %24
}

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @rsi_sdio_set_cmd52_arg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
