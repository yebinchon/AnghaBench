; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_reset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i64 }
%struct.bfad_hal_comp = type { i64, i32 }
%struct.bfa_cb_pending_q_s = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@bfad_hcb_comp = common dso_local global i64 0, align 8
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_qos_reset_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_gen_s*, align 8
  %6 = alloca %struct.bfad_hal_comp, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfa_cb_pending_q_s, align 4
  %9 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %11, %struct.bfa_bsg_gen_s** %5, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_5__* %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %9, align 8
  %15 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %16 = call i32 @init_completion(i32* %15)
  %17 = load i64, i64* @bfad_hcb_comp, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @bfa_pending_q_init(%struct.bfa_cb_pending_q_s* %8, i32 %18, %struct.bfad_hal_comp* %6, i32* null)
  %20 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @bfa_ioc_get_fcmode(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %33 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %9, align 8
  %40 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @BFA_STATUS_TOPOLOGY_LOOP, align 8
  %46 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %54

48:                                               ; preds = %38, %2
  %49 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %49, i32 0, i32 1
  %51 = call i64 @bfa_fcport_clear_stats(%struct.TYPE_5__* %50, %struct.bfa_cb_pending_q_s* %8)
  %52 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %44
  %55 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BFA_STATUS_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %66 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bfa_trc(%struct.bfad_s* %65, i64 %68)
  br label %77

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 1
  %72 = call i32 @wait_for_completion(i32* %71)
  %73 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %6, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %5, align 8
  %76 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_5__*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_pending_q_init(%struct.bfa_cb_pending_q_s*, i32, %struct.bfad_hal_comp*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioc_get_fcmode(i32*) #1

declare dso_local i64 @bfa_fcport_clear_stats(%struct.TYPE_5__*, %struct.bfa_cb_pending_q_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
