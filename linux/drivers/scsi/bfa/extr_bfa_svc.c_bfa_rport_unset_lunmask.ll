; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_unset_lunmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_unset_lunmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_rport_s = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_lps_mod_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_RPORT_TAG_INVALID = common dso_local global i32 0, align 4
@BFA_LP_TAG_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_rport_unset_lunmask(%struct.bfa_s* %0, %struct.bfa_rport_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_rport_s*, align 8
  %5 = alloca %struct.bfa_lps_mod_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfa_rport_s* %1, %struct.bfa_rport_s** %4, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %8)
  store %struct.bfa_lps_mod_s* %9, %struct.bfa_lps_mod_s** %5, align 8
  %10 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bfa_fcs_rport_s*
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %17 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_4__* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %16, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @BFA_FALSE, align 4
  %25 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %28 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_4__* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %27, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %24, i32* %33, align 4
  %34 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BFA_RPORT_TAG_INVALID, align 4
  %38 = load i32, i32* @BFA_LP_TAG_INVALID, align 4
  %39 = call i32 @bfa_fcpim_lunmask_rp_update(%struct.bfa_s* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s*) #1

declare dso_local %struct.TYPE_4__* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s*, i32) #1

declare dso_local i32 @bfa_fcpim_lunmask_rp_update(%struct.bfa_s*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
