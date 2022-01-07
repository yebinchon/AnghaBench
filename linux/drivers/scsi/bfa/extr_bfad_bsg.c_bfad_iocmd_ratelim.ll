; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ratelim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ratelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_gen_s = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@IOCMD_RATELIM_ENABLE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCMD_RATELIM_DISABLE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@BFA_PORT_SPEED_1GBPS = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ratelim(%struct.bfad_s* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_bsg_gen_s*, align 8
  %8 = alloca %struct.bfa_fcport_s*, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %11, %struct.bfa_bsg_gen_s** %7, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 1
  %14 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32* %13)
  store %struct.bfa_fcport_s* %14, %struct.bfa_fcport_s** %8, align 8
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %20 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %27 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @BFA_STATUS_TOPOLOGY_LOOP, align 4
  %33 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %70

35:                                               ; preds = %25, %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IOCMD_RATELIM_ENABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @BFA_TRUE, align 4
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IOCMD_RATELIM_DISABLE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @BFA_FALSE, align 4
  %50 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %51 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %56 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BFA_PORT_SPEED_UNKNOWN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i64, i64* @BFA_PORT_SPEED_1GBPS, align 8
  %63 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %8, align 8
  %64 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %54
  %67 = load i32, i32* @BFA_STATUS_OK, align 4
  %68 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %7, align 8
  %69 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %31
  %71 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %72 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
