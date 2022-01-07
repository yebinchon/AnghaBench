; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c___qman_liodn_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c___qman_liodn_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__qman_liodn_fixup.done = internal global i32 0, align 4
@__qman_liodn_fixup.liodn_offset = internal global i32 0, align 4
@QM_CHANNEL_SWPORTAL0 = common dso_local global i32 0, align 4
@qman_ip_rev = common dso_local global i32 0, align 4
@QMAN_REV30 = common dso_local global i32 0, align 4
@LIO_CFG_LIODN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qman_liodn_fixup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @QM_CHANNEL_SWPORTAL0, align 4
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @qman_ip_rev, align 4
  %10 = and i32 %9, 65280
  %11 = load i32, i32* @QMAN_REV30, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_REV3_QCSP_LIO_CFG(i32 %14)
  %16 = call i32 @qm_ccsr_in(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @REG_QCSP_LIO_CFG(i32 %18)
  %20 = call i32 @qm_ccsr_in(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @__qman_liodn_fixup.done, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LIO_CFG_LIODN_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* @__qman_liodn_fixup.liodn_offset, align 4
  store i32 1, i32* @__qman_liodn_fixup.done, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LIO_CFG_LIODN_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @__qman_liodn_fixup.liodn_offset, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @qman_ip_rev, align 4
  %36 = and i32 %35, 65280
  %37 = load i32, i32* @QMAN_REV30, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @REG_REV3_QCSP_LIO_CFG(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @qm_ccsr_out(i32 %41, i32 %42)
  br label %49

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @REG_QCSP_LIO_CFG(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @qm_ccsr_out(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %24, %44, %39
  ret void
}

declare dso_local i32 @qm_ccsr_in(i32) #1

declare dso_local i32 @REG_REV3_QCSP_LIO_CFG(i32) #1

declare dso_local i32 @REG_QCSP_LIO_CFG(i32) #1

declare dso_local i32 @qm_ccsr_out(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
