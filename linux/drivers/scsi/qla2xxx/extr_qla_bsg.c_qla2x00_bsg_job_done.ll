; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_job_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_job_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.bsg_job* }
%struct.bsg_job = type { %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_bsg_job_done(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bsg_job*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  store %struct.bsg_job* %10, %struct.bsg_job** %5, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 0
  %13 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %12, align 8
  store %struct.fc_bsg_reply* %13, %struct.fc_bsg_reply** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %16 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bsg_job*, %struct.bsg_job** %5, align 8
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %19 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bsg_job_done(%struct.bsg_job* %17, i32 %20, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 %27(%struct.TYPE_6__* %28)
  ret void
}

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
