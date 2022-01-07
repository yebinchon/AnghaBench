; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_sge_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_sge_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@X_TIMERREG_RESTART_COUNTER = common dso_local global i32 0, align 4
@SGE_PF_GTS_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32)* @csio_wr_sge_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_sge_intr_enable(%struct.csio_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %6 = call i32 @CIDXINC_V(i32 0)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @INGRESSQID_V(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @X_TIMERREG_RESTART_COUNTER, align 4
  %11 = call i32 @TIMERREG_V(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @SGE_PF_GTS_A, align 4
  %14 = call i32 @MYPF_REG(i32 %13)
  %15 = call i32 @csio_wr_reg32(%struct.csio_hw* %5, i32 %12, i32 %14)
  ret void
}

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @CIDXINC_V(i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

declare dso_local i32 @TIMERREG_V(i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
