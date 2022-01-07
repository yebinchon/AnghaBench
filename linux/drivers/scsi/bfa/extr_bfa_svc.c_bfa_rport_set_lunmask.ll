; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_set_lunmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_set_lunmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_rport_s = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_lps_mod_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BFA_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_rport_set_lunmask(%struct.bfa_s* %0, %struct.bfa_rport_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_rport_s*, align 8
  %5 = alloca %struct.bfa_lps_mod_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfa_rport_s* %1, %struct.bfa_rport_s** %4, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %10 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %9)
  store %struct.bfa_lps_mod_s* %10, %struct.bfa_lps_mod_s** %5, align 8
  %11 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bfa_fcs_rport_s*
  %19 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %22 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_4__* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %21, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @BFA_TRUE, align 4
  %30 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %33 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_4__* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %32, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %29, i32* %38, align 4
  %39 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bfa_fcpim_lunmask_rp_update(%struct.bfa_s* %39, i32 %40, i32 %41, i32 %44, i32 %45)
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
