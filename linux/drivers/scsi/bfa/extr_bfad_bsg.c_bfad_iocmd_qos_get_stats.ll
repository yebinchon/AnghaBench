; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_bsg_fcport_stats_s = type { i64, i32 }
%struct.bfad_hal_comp = type { i64, i32 }
%struct.bfa_cb_pending_q_s = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@bfad_hcb_comp = common dso_local global i64 0, align 8
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_qos_get_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_fcport_stats_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfa_cb_pending_q_s, align 4
  %9 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_fcport_stats_s*
  store %struct.bfa_bsg_fcport_stats_s* %11, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_5__* %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %9, align 8
  %15 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %16 = call i32 @init_completion(i32* %15)
  %17 = load i64, i64* @bfad_hcb_comp, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %19, i32 0, i32 1
  %21 = call i32 @bfa_pending_q_init(%struct.bfa_cb_pending_q_s* %8, i32 %18, %struct.bfad_hal_comp* %6, i32* %20)
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @bfa_ioc_get_fcmode(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %35 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @BFA_STATUS_TOPOLOGY_LOOP, align 8
  %48 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %56

50:                                               ; preds = %40, %2
  %51 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 1
  %53 = call i64 @bfa_fcport_get_stats(%struct.TYPE_5__* %52, %struct.bfa_cb_pending_q_s* %8)
  %54 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BFA_STATUS_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %68 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %69 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bfa_trc(%struct.bfad_s* %67, i64 %70)
  br label %79

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %74 = call i32 @wait_for_completion(i32* %73)
  %75 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bfa_bsg_fcport_stats_s*, %struct.bfa_bsg_fcport_stats_s** %5, align 8
  %78 = getelementptr inbounds %struct.bfa_bsg_fcport_stats_s, %struct.bfa_bsg_fcport_stats_s* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %66
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_5__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_pending_q_init(%struct.bfa_cb_pending_q_s*, i32, %struct.bfad_hal_comp*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_get_fcmode(i32*) #1

declare dso_local i64 @bfa_fcport_get_stats(%struct.TYPE_5__*, %struct.bfa_cb_pending_q_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
