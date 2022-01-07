; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_trunk_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_trunk_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_trunk_attr_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_fcport_s = type { i64, %struct.TYPE_3__, %struct.bfa_fcport_trunk_s }
%struct.TYPE_3__ = type { i64 }
%struct.bfa_fcport_trunk_s = type { i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@BFA_STATUS_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_trunk_get_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_trunk_attr_s*, align 8
  %6 = alloca %struct.bfa_fcport_s*, align 8
  %7 = alloca %struct.bfa_fcport_trunk_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_trunk_attr_s*
  store %struct.bfa_bsg_trunk_attr_s* %10, %struct.bfa_bsg_trunk_attr_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 1
  %13 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32* %12)
  store %struct.bfa_fcport_s* %13, %struct.bfa_fcport_s** %6, align 8
  %14 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %15 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %14, i32 0, i32 2
  store %struct.bfa_fcport_trunk_s* %15, %struct.bfa_fcport_trunk_s** %7, align 8
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %21 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BFA_PORT_TOPOLOGY_LOOP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %2
  %33 = load i32, i32* @BFA_STATUS_TOPOLOGY_LOOP, align 4
  %34 = load %struct.bfa_bsg_trunk_attr_s*, %struct.bfa_bsg_trunk_attr_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, %struct.bfa_bsg_trunk_attr_s* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %53

36:                                               ; preds = %26
  %37 = load %struct.bfa_bsg_trunk_attr_s*, %struct.bfa_bsg_trunk_attr_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, %struct.bfa_bsg_trunk_attr_s* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_4__* %38 to i8*
  %40 = load %struct.bfa_fcport_trunk_s*, %struct.bfa_fcport_trunk_s** %7, align 8
  %41 = getelementptr inbounds %struct.bfa_fcport_trunk_s, %struct.bfa_fcport_trunk_s* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @memcpy(i8* %39, i8* %42, i32 4)
  %44 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 1
  %46 = call i32 @bfa_lps_get_base_pid(i32* %45)
  %47 = load %struct.bfa_bsg_trunk_attr_s*, %struct.bfa_bsg_trunk_attr_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, %struct.bfa_bsg_trunk_attr_s* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @BFA_STATUS_OK, align 4
  %51 = load %struct.bfa_bsg_trunk_attr_s*, %struct.bfa_bsg_trunk_attr_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_bsg_trunk_attr_s, %struct.bfa_bsg_trunk_attr_s* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %36, %32
  %54 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret i32 0
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @bfa_lps_get_base_pid(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
