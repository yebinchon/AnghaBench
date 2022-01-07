; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_set_sdest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_qman_set_sdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QM_CHANNEL_SWPORTAL0 = common dso_local global i32 0, align 4
@qman_ip_rev = common dso_local global i32 0, align 4
@QMAN_REV30 = common dso_local global i32 0, align 4
@IO_CFG_SDEST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qman_set_sdest(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @QM_CHANNEL_SWPORTAL0, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @qman_ip_rev, align 4
  %12 = and i32 %11, 65280
  %13 = load i32, i32* @QMAN_REV30, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_REV3_QCSP_IO_CFG(i32 %16)
  %18 = call i32 @qm_ccsr_in(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = udiv i32 %19, 2
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IO_CFG_SDEST_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_REV3_QCSP_IO_CFG(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @qm_ccsr_out(i32 %29, i32 %30)
  br label %47

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @REG_QCSP_IO_CFG(i32 %33)
  %35 = call i32 @qm_ccsr_in(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @IO_CFG_SDEST_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 16
  %42 = or i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @REG_QCSP_IO_CFG(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @qm_ccsr_out(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32, %15
  ret void
}

declare dso_local i32 @qm_ccsr_in(i32) #1

declare dso_local i32 @REG_REV3_QCSP_IO_CFG(i32) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

declare dso_local i32 @REG_QCSP_IO_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
