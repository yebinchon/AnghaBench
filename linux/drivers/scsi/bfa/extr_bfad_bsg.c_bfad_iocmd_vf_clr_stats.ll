; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_vf_clr_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_vf_clr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_vf_reset_stats_s = type { i32, i32 }
%struct.bfa_fcs_fabric_s = type { i32 }

@BFA_STATUS_UNKNOWN_VFID = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_vf_clr_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_vf_reset_stats_s*, align 8
  %6 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_vf_reset_stats_s*
  store %struct.bfa_bsg_vf_reset_stats_s* %9, %struct.bfa_bsg_vf_reset_stats_s** %5, align 8
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 1
  %16 = load %struct.bfa_bsg_vf_reset_stats_s*, %struct.bfa_bsg_vf_reset_stats_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_vf_reset_stats_s, %struct.bfa_bsg_vf_reset_stats_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bfa_fcs_fabric_s* @bfa_fcs_vf_lookup(i32* %15, i32 %18)
  store %struct.bfa_fcs_fabric_s* %19, %struct.bfa_fcs_fabric_s** %6, align 8
  %20 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %6, align 8
  %21 = icmp eq %struct.bfa_fcs_fabric_s* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* @BFA_STATUS_UNKNOWN_VFID, align 4
  %28 = load %struct.bfa_bsg_vf_reset_stats_s*, %struct.bfa_bsg_vf_reset_stats_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_bsg_vf_reset_stats_s, %struct.bfa_bsg_vf_reset_stats_s* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @memset(i8* %33, i32 0, i32 4)
  %35 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @BFA_STATUS_OK, align 4
  %40 = load %struct.bfa_bsg_vf_reset_stats_s*, %struct.bfa_bsg_vf_reset_stats_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_bsg_vf_reset_stats_s, %struct.bfa_bsg_vf_reset_stats_s* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %22
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_fabric_s* @bfa_fcs_vf_lookup(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
