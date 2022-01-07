; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_optrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_read_optrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_10__, %struct.fc_bsg_reply* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32*, i32, i32)* }
%struct.TYPE_8__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@QLA_SWAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_read_optrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_read_optrom(%struct.bsg_job* %0) #0 {
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
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %102

27:                                               ; preds = %1
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = call i32 @qla2x00_optrom_setup(%struct.bsg_job* %31, %struct.TYPE_11__* %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %102

41:                                               ; preds = %27
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_11__*, i32*, i32, i32)*, i32 (%struct.TYPE_11__*, i32*, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %46(%struct.TYPE_11__* %47, i32* %50, i32 %53, i32 %56)
  %58 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %59 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %63 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sg_copy_from_buffer(i32 %61, i32 %65, i32* %68, i32 %71)
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %77 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DID_OK, align 4
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @vfree(i32* %83)
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load i32, i32* @QLA_SWAITING, align 4
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %94 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bsg_job_done(%struct.bsg_job* %93, i32 %96, i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %41, %36, %24
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_11__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qla2x00_optrom_setup(%struct.bsg_job*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
