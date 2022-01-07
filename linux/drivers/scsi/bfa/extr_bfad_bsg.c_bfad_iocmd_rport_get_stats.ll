; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_rport_stats_s = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_rport_get_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_rport_stats_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_rport_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_rport_stats_s*
  store %struct.bfa_bsg_rport_stats_s* %10, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 1
  %17 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %16, i32 %19, i32 %22)
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %6, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = icmp eq %struct.bfa_fcs_lport_s* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %28 = call i32 @bfa_trc(%struct.bfad_s* %27, i32 0)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %34 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %83

36:                                               ; preds = %2
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %38 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s* %37, i32 %40)
  store %struct.bfa_fcs_rport_s* %41, %struct.bfa_fcs_rport_s** %7, align 8
  %42 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %43 = icmp eq %struct.bfa_fcs_rport_s* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %46 = call i32 @bfa_trc(%struct.bfad_s* %45, i32 0)
  %47 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* @BFA_STATUS_UNKNOWN_RWWN, align 4
  %52 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %83

54:                                               ; preds = %36
  %55 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %55, i32 0, i32 1
  %57 = bitcast %struct.TYPE_3__* %56 to i8*
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @memcpy(i8* %57, i8* %60, i32 4)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %63 = call %struct.TYPE_4__* @bfa_fcs_rport_get_halrport(%struct.bfa_fcs_rport_s* %62)
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = bitcast i32* %68 to i8*
  %70 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %71 = call %struct.TYPE_4__* @bfa_fcs_rport_get_halrport(%struct.bfa_fcs_rport_s* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to i8*
  %74 = call i32 @memcpy(i8* %69, i8* %73, i32 4)
  br label %75

75:                                               ; preds = %65, %54
  %76 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %76, i32 0, i32 0
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* @BFA_STATUS_OK, align 4
  %81 = load %struct.bfa_bsg_rport_stats_s*, %struct.bfa_bsg_rport_stats_s** %5, align 8
  %82 = getelementptr inbounds %struct.bfa_bsg_rport_stats_s, %struct.bfa_bsg_rport_stats_s* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %44, %26
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @bfa_fcs_rport_get_halrport(%struct.bfa_fcs_rport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
