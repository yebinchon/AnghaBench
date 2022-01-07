; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_smp_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_smp_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_rphy = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bsg_job*, %struct.Scsi_Host*, %struct.sas_rphy*)* }

@.str = private unnamed_addr constant [37 x i8] c"space for a smp response is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @sas_smp_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_smp_dispatch(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_rphy*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %6 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %7 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.Scsi_Host* @dev_to_shost(i32 %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  store %struct.sas_rphy* null, %struct.sas_rphy** %5, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @scsi_is_host_device(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.sas_rphy* @dev_to_rphy(i32 %18)
  store %struct.sas_rphy* %19, %struct.sas_rphy** %5, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %28 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @bsg_job_done(%struct.bsg_job* %31, i32 %33, i32 0)
  store i32 0, i32* %2, align 4
  br label %48

35:                                               ; preds = %20
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_6__* @to_sas_internal(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.bsg_job*, %struct.Scsi_Host*, %struct.sas_rphy*)*, i32 (%struct.bsg_job*, %struct.Scsi_Host*, %struct.sas_rphy*)** %42, align 8
  %44 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %46 = load %struct.sas_rphy*, %struct.sas_rphy** %5, align 8
  %47 = call i32 %43(%struct.bsg_job* %44, %struct.Scsi_Host* %45, %struct.sas_rphy* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %35, %26
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @scsi_is_host_device(i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
