; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@BFA_IOC_TYPE_FC = common dso_local global i64 0, align 8
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@IOCMD_QOS_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCMD_QOS_DISABLE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_QOS_BW_HIGH = common dso_local global i32 0, align 4
@BFA_QOS_BW_MED = common dso_local global i32 0, align 4
@BFA_QOS_BW_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_qos(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_gen_s*, align 8
  %8 = alloca %struct.bfa_fcport_s*, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %11, %struct.bfa_bsg_gen_s** %7, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_6__* %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %8, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i64 @bfa_ioc_get_type(i32* %21)
  %23 = load i64, i64* @BFA_IOC_TYPE_FC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %3
  %26 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %27 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %34 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @BFA_STATUS_TOPOLOGY_LOOP, align 4
  %40 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %41 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %77

42:                                               ; preds = %32, %25
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IOCMD_QOS_ENABLE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @BFA_TRUE, align 4
  %48 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %49 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  br label %76

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IOCMD_QOS_DISABLE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* @BFA_FALSE, align 4
  %57 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %58 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @BFA_QOS_BW_HIGH, align 4
  %61 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %62 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load i32, i32* @BFA_QOS_BW_MED, align 4
  %66 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %67 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @BFA_QOS_BW_LOW, align 4
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %72 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  br label %75

75:                                               ; preds = %55, %51
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77, %3
  %79 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %79, i32 0, i32 0
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_ioc_get_type(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
