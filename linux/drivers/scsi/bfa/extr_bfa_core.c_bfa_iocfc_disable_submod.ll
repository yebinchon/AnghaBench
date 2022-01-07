; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_disable_submod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_disable_submod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BFA_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_iocfc_disable_submod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_disable_submod(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %3 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BFA_FALSE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %12 = call i32 @bfa_fcdiag_iocdisable(%struct.bfa_s* %11)
  %13 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %14 = call i32 @bfa_fcport_iocdisable(%struct.bfa_s* %13)
  %15 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %16 = call i32 @bfa_fcxp_iocdisable(%struct.bfa_s* %15)
  %17 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %18 = call i32 @bfa_lps_iocdisable(%struct.bfa_s* %17)
  %19 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %20 = call i32 @bfa_rport_iocdisable(%struct.bfa_s* %19)
  %21 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %22 = call i32 @bfa_fcp_iocdisable(%struct.bfa_s* %21)
  %23 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %24 = call i32 @bfa_dconf_iocdisable(%struct.bfa_s* %23)
  %25 = load i64, i64* @BFA_FALSE, align 8
  %26 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @bfa_fcdiag_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcxp_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_lps_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_rport_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcp_iocdisable(%struct.bfa_s*) #1

declare dso_local i32 @bfa_dconf_iocdisable(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
