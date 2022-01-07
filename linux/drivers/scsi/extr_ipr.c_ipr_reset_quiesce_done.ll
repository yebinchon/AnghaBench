; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_quiesce_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_reset_quiesce_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@ipr_ioa_bringdown_done = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_quiesce_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_quiesce_done(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %4 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %4, i32 0, i32 1
  %6 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  store %struct.ipr_ioa_cfg* %6, %struct.ipr_ioa_cfg** %3, align 8
  %7 = load i32, i32* @ENTER, align 4
  %8 = load i32, i32* @ipr_ioa_bringdown_done, align 4
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %12 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %13 = xor i32 %12, -1
  %14 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %11, i32 %13)
  %15 = load i32, i32* @LEAVE, align 4
  %16 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  ret i32 %16
}

declare dso_local i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
