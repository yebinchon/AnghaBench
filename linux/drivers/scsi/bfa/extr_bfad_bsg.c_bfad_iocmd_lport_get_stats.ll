; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lport_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_lport_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_bsg_lport_stats_s = type { i32, i32, i32, i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_lport_get_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.bfa_bsg_lport_stats_s*, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_lport_stats_s*
  store %struct.bfa_bsg_lport_stats_s* %9, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 1
  %16 = load %struct.bfa_bsg_lport_stats_s*, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, %struct.bfa_bsg_lport_stats_s* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_bsg_lport_stats_s*, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, %struct.bfa_bsg_lport_stats_s* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %15, i32 %18, i32 %21)
  store %struct.bfa_fcs_lport_s* %22, %struct.bfa_fcs_lport_s** %5, align 8
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %24 = icmp eq %struct.bfa_fcs_lport_s* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %31 = load %struct.bfa_bsg_lport_stats_s*, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, %struct.bfa_bsg_lport_stats_s* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %35 = load %struct.bfa_bsg_lport_stats_s*, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, %struct.bfa_bsg_lport_stats_s* %35, i32 0, i32 1
  %37 = call i32 @bfa_fcs_lport_get_stats(%struct.bfa_fcs_lport_s* %34, i32* %36)
  %38 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @BFA_STATUS_OK, align 4
  %43 = load %struct.bfa_bsg_lport_stats_s*, %struct.bfa_bsg_lport_stats_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfa_bsg_lport_stats_s, %struct.bfa_bsg_lport_stats_s* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %33, %25
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_fcs_lport_get_stats(%struct.bfa_fcs_lport_s*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
