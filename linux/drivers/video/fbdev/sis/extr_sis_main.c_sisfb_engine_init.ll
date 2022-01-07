; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_video_info = type { i32, i64, i32, i32, i64, i32, i32, i32, i64 }

@TURBO_QUEUE_CAP = common dso_local global i32 0, align 4
@MMIO_CMD_QUEUE_CAP = common dso_local global i32 0, align 4
@VM_CMD_QUEUE_CAP = common dso_local global i32 0, align 4
@AGP_CMD_QUEUE_CAP = common dso_local global i32 0, align 4
@COMMAND_QUEUE_THRESHOLD = common dso_local global i32 0, align 4
@IND_SIS_CMDQUEUE_SET = common dso_local global i32 0, align 4
@IND_SIS_CMDQUEUE_THRESHOLD = common dso_local global i32 0, align 4
@IND_SIS_TURBOQUEUE_ADR = common dso_local global i32 0, align 4
@IND_SIS_TURBOQUEUE_SET = common dso_local global i32 0, align 4
@MMIO_QUEUE_PHYBASE = common dso_local global i32 0, align 4
@MMIO_QUEUE_READPORT = common dso_local global i32 0, align 4
@MMIO_QUEUE_WRITEPORT = common dso_local global i32 0, align 4
@Q_BASE_ADDR = common dso_local global i32 0, align 4
@Q_READ_PTR = common dso_local global i32 0, align 4
@Q_WRITE_PTR = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@SIS_300_VGA = common dso_local global i64 0, align 8
@SIS_315_VGA = common dso_local global i64 0, align 8
@SIS_CMD_AUTO_CORR = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_RESET = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_1M = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_2M = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_4M = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_512k = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_Z7_128k = common dso_local global i32 0, align 4
@SIS_CMD_QUEUE_SIZE_Z7_64k = common dso_local global i32 0, align 4
@SIS_MMIO_CMD_ENABLE = common dso_local global i32 0, align 4
@SIS_VRAM_CMDQUEUE_ENABLE = common dso_local global i32 0, align 4
@XGI_20 = common dso_local global i64 0, align 8
@XGI_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*)* @sisfb_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_engine_init(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  %3 = load i32, i32* @TURBO_QUEUE_CAP, align 4
  %4 = load i32, i32* @MMIO_CMD_QUEUE_CAP, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @VM_CMD_QUEUE_CAP, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @AGP_CMD_QUEUE_CAP, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %12 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %16 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %15, i32 0, i32 6
  store i32 1, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
