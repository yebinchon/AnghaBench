; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_build_bd_list_from_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_build_bd_list_from_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { %struct.TYPE_4__*, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32, %struct.scsi_sge* }
%struct.scsi_sge = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.scsi_cmnd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ioreq*)* @qedf_build_bd_list_from_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_build_bd_list_from_sg(%struct.qedf_ioreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_sge*, align 8
  %6 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  %7 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %8 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %7, i32 0, i32 1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %11 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.scsi_sge*, %struct.scsi_sge** %13, align 8
  store %struct.scsi_sge* %14, %struct.scsi_sge** %5, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %20 = call i32 @qedf_map_sg(%struct.qedf_ioreq* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %18
  br label %39

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %28 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %28, i64 0
  %30 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %32, i64 0
  %34 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.scsi_sge*, %struct.scsi_sge** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %36, i64 0
  %38 = getelementptr inbounds %struct.scsi_sge, %struct.scsi_sge* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %27, %26
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %42 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @qedf_map_sg(%struct.qedf_ioreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
