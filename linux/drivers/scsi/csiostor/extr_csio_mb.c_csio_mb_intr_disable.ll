; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@CIM_PF_HOST_INT_ENABLE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_intr_disable(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %3 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %4 = call i32 @MBMSGRDYINTEN_V(i32 0)
  %5 = load i32, i32* @CIM_PF_HOST_INT_ENABLE_A, align 4
  %6 = call i32 @MYPF_REG(i32 %5)
  %7 = call i32 @csio_wr_reg32(%struct.csio_hw* %3, i32 %4, i32 %6)
  %8 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %9 = load i32, i32* @CIM_PF_HOST_INT_ENABLE_A, align 4
  %10 = call i32 @MYPF_REG(i32 %9)
  %11 = call i32 @csio_rd_reg32(%struct.csio_hw* %8, i32 %10)
  ret void
}

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @MBMSGRDYINTEN_V(i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
