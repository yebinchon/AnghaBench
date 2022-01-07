; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_cgr_cscn_targ_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qm_cgr_cscn_targ_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__qm_mc_cgr = type { i32, i32 }

@qman_ip_rev = common dso_local global i64 0, align 8
@QMAN_REV30 = common dso_local global i64 0, align 8
@QM_CGR_TARG_UDP_CTRL_WRITE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__qm_mc_cgr*, i32, i32)* @qm_cgr_cscn_targ_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_cgr_cscn_targ_set(%struct.__qm_mc_cgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.__qm_mc_cgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.__qm_mc_cgr* %0, %struct.__qm_mc_cgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @qman_ip_rev, align 8
  %8 = load i64, i64* @QMAN_REV30, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @QM_CGR_TARG_UDP_CTRL_WRITE_BIT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @cpu_to_be16(i32 %13)
  %15 = load %struct.__qm_mc_cgr*, %struct.__qm_mc_cgr** %4, align 8
  %16 = getelementptr inbounds %struct.__qm_mc_cgr, %struct.__qm_mc_cgr* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @QM_CGR_TARG_PORTAL(i32 %19)
  %21 = or i32 %18, %20
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = load %struct.__qm_mc_cgr*, %struct.__qm_mc_cgr** %4, align 8
  %24 = getelementptr inbounds %struct.__qm_mc_cgr, %struct.__qm_mc_cgr* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @QM_CGR_TARG_PORTAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
