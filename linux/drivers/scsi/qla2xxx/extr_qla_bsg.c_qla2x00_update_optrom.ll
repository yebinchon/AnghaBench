; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_optrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_update_optrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_9__, %struct.fc_bsg_reply* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32*, i32, i32)* }
%struct.TYPE_8__ = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@QLA_SWAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_update_optrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_update_optrom(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 1
  %11 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  store %struct.fc_bsg_reply* %11, %struct.fc_bsg_reply** %4, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = call %struct.TYPE_11__* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i32 @qla2x00_optrom_setup(%struct.bsg_job* %22, %struct.TYPE_11__* %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %91

32:                                               ; preds = %1
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %41 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sg_copy_to_buffer(i32 %39, i32 %43, i32* %46, i32 %49)
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 5
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_11__*, i32*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %55(%struct.TYPE_11__* %56, i32* %59, i32 %62, i32 %65)
  %67 = load i32, i32* @DID_OK, align 4
  %68 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @vfree(i32* %72)
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @QLA_SWAITING, align 4
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %83 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %84 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bsg_job_done(%struct.bsg_job* %82, i32 %85, i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %32, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_11__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qla2x00_optrom_setup(%struct.bsg_job*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
