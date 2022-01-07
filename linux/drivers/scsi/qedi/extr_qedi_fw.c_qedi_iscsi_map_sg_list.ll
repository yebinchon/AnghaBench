; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_map_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_iscsi_map_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_cmd = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.scsi_cmnd* }
%struct.TYPE_5__ = type { i32, %struct.scsi_sge* }
%struct.scsi_sge = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_cmd*)* @qedi_iscsi_map_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_iscsi_map_sg_list(%struct.qedi_cmd* %0) #0 {
  %2 = alloca %struct.qedi_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_sge*, align 8
  store %struct.qedi_cmd* %0, %struct.qedi_cmd** %2, align 8
  %6 = load %struct.qedi_cmd*, %struct.qedi_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %6, i32 0, i32 2
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %4, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.qedi_cmd*, %struct.qedi_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qedi_cmd*, %struct.qedi_cmd** %2, align 8
  %19 = call i32 @qedi_map_scsi_sg(i32 %17, %struct.qedi_cmd* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %45

23:                                               ; preds = %12
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.qedi_cmd*, %struct.qedi_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.scsi_sge*, %struct.scsi_sge** %27, align 8
  store %struct.scsi_sge* %28, %struct.scsi_sge** %5, align 8
  %29 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %29, i64 0
  %31 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %33, i64 0
  %35 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %37, i64 0
  %39 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %24, %23
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.qedi_cmd*, %struct.qedi_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %22
  ret void
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @qedi_map_scsi_sg(i32, %struct.qedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
