; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.srp_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.srp_rport = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"timeout for sdev %s\0A\00", align 1
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_timed_out(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.srp_internal*, align 8
  %6 = alloca %struct.srp_rport*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %3, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 1
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.srp_internal* @to_srp_internal(i32 %15)
  store %struct.srp_internal* %16, %struct.srp_internal** %5, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.srp_rport* @shost_to_rport(%struct.Scsi_Host* %17)
  store %struct.srp_rport* %18, %struct.srp_rport** %6, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = call i32 @dev_name(i32* %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %24 = icmp ne %struct.srp_rport* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  %26 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %27 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %32 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.srp_internal*, %struct.srp_internal** %5, align 8
  %37 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = call i64 @scsi_device_blocked(%struct.scsi_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  br label %50

48:                                               ; preds = %42, %35, %30, %25, %1
  %49 = load i32, i32* @BLK_EH_DONE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  ret i32 %51
}

declare dso_local %struct.srp_internal* @to_srp_internal(i32) #1

declare dso_local %struct.srp_rport* @shost_to_rport(%struct.Scsi_Host*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @scsi_device_blocked(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
