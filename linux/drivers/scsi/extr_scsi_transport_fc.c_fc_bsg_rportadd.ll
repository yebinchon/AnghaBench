; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rportadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rportadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.fc_rport = type { %struct.request_queue*, %struct.device }
%struct.request_queue = type { i32 }
%struct.device = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@fc_bsg_dispatch_prep = common dso_local global i32 0, align 4
@fc_bsg_job_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to setup bsg queue\0A\00", align 1
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.fc_rport*)* @fc_bsg_rportadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_rportadd(%struct.Scsi_Host* %0, %struct.fc_rport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.fc_rport*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fc_internal*, align 8
  %8 = alloca %struct.request_queue*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.fc_rport* %1, %struct.fc_rport** %5, align 8
  %9 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %10 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fc_internal* @to_fc_internal(i32 %13)
  store %struct.fc_internal* %14, %struct.fc_internal** %7, align 8
  %15 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %16 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %15, i32 0, i32 0
  store %struct.request_queue* null, %struct.request_queue** %16, align 8
  %17 = load %struct.fc_internal*, %struct.fc_internal** %7, align 8
  %18 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_name(%struct.device* %28)
  %30 = load i32, i32* @fc_bsg_dispatch_prep, align 4
  %31 = load i32, i32* @fc_bsg_job_timeout, align 4
  %32 = load %struct.fc_internal*, %struct.fc_internal** %7, align 8
  %33 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.request_queue* @bsg_setup_queue(%struct.device* %27, i32 %29, i32 %30, i32 %31, i32 %36)
  store %struct.request_queue* %37, %struct.request_queue** %8, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %39 = call i64 @IS_ERR(%struct.request_queue* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %45 = call i32 @PTR_ERR(%struct.request_queue* %44)
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %26
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %49 = call i32 @__scsi_init_queue(%struct.Scsi_Host* %47, %struct.request_queue* %48)
  %50 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %51 = load i32, i32* @BLK_DEFAULT_SG_TIMEOUT, align 4
  %52 = call i32 @blk_queue_rq_timeout(%struct.request_queue* %50, i32 %51)
  %53 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %54 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %55 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %54, i32 0, i32 0
  store %struct.request_queue* %53, %struct.request_queue** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %46, %41, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local %struct.request_queue* @bsg_setup_queue(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @__scsi_init_queue(%struct.Scsi_Host*, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_rq_timeout(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
