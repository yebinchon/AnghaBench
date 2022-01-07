; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c___rport_fail_io_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c___rport_fail_io_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.srp_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.srp_rport*)* }

@SRP_RPORT_FAIL_FAST = common dso_local global i32 0, align 4
@SDEV_TRANSPORT_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_rport*)* @__rport_fail_io_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rport_fail_io_fast(%struct.srp_rport* %0) #0 {
  %2 = alloca %struct.srp_rport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.srp_internal*, align 8
  store %struct.srp_rport* %0, %struct.srp_rport** %2, align 8
  %5 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %6 = call %struct.Scsi_Host* @rport_to_shost(%struct.srp_rport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %8 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %11 = load i32, i32* @SRP_RPORT_FAIL_FAST, align 4
  %12 = call i64 @srp_rport_set_state(%struct.srp_rport* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %17 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scsi_target_block(i32 %19)
  %21 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %22 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SDEV_TRANSPORT_OFFLINE, align 4
  %26 = call i32 @scsi_target_unblock(i32 %24, i32 %25)
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.srp_internal* @to_srp_internal(i32 %29)
  store %struct.srp_internal* %30, %struct.srp_internal** %4, align 8
  %31 = load %struct.srp_internal*, %struct.srp_internal** %4, align 8
  %32 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.srp_rport*)*, i32 (%struct.srp_rport*)** %34, align 8
  %36 = icmp ne i32 (%struct.srp_rport*)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %15
  %38 = load %struct.srp_internal*, %struct.srp_internal** %4, align 8
  %39 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.srp_rport*)*, i32 (%struct.srp_rport*)** %41, align 8
  %43 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %44 = call i32 %42(%struct.srp_rport* %43)
  br label %45

45:                                               ; preds = %14, %37, %15
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.srp_rport*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @srp_rport_set_state(%struct.srp_rport*, i32) #1

declare dso_local i32 @scsi_target_block(i32) #1

declare dso_local i32 @scsi_target_unblock(i32, i32) #1

declare dso_local %struct.srp_internal* @to_srp_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
