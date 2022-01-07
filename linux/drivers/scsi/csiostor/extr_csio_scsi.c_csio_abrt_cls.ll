; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_abrt_cls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_abrt_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { %struct.csio_lnode* }
%struct.csio_lnode = type { %struct.csio_hw* }
%struct.csio_hw = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.csio_scsim = type { i32 }

@n_abrt_race_comp = common dso_local global i32 0, align 4
@SCSI_ABORT = common dso_local global i32 0, align 4
@SCSI_CLOSE = common dso_local global i32 0, align 4
@n_abrt_busy_error = common dso_local global i32 0, align 4
@n_cls_busy_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, %struct.scsi_cmnd*)* @csio_abrt_cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_abrt_cls(%struct.csio_ioreq* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csio_scsim*, align 8
  %9 = alloca i32, align 4
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %11 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %10, i32 0, i32 0
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %11, align 8
  store %struct.csio_lnode* %12, %struct.csio_lnode** %5, align 8
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %14 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %13, i32 0, i32 0
  %15 = load %struct.csio_hw*, %struct.csio_hw** %14, align 8
  store %struct.csio_hw* %15, %struct.csio_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %17 = call %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw* %16)
  store %struct.csio_scsim* %17, %struct.csio_scsim** %8, align 8
  %18 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %19 = call %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq* %18)
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = icmp ne %struct.scsi_cmnd* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.csio_scsim*, %struct.csio_scsim** %8, align 8
  %24 = load i32, i32* @n_abrt_race_comp, align 4
  %25 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %23, i32 %24)
  br label %54

26:                                               ; preds = %2
  %27 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %28 = call i32 @csio_is_lnode_ready(%struct.csio_lnode* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %30 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @SCSI_ABORT, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @SCSI_CLOSE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @csio_do_abrt_cls(%struct.csio_hw* %29, %struct.csio_ioreq* %30, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.csio_scsim*, %struct.csio_scsim** %8, align 8
  %47 = load i32, i32* @n_abrt_busy_error, align 4
  %48 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %46, i32 %47)
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.csio_scsim*, %struct.csio_scsim** %8, align 8
  %51 = load i32, i32* @n_cls_busy_error, align 4
  %52 = call i32 @CSIO_INC_STATS(%struct.csio_scsim* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %22, %53, %37
  ret void
}

declare dso_local %struct.csio_scsim* @csio_hw_to_scsim(%struct.csio_hw*) #1

declare dso_local %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_scsim*, i32) #1

declare dso_local i32 @csio_is_lnode_ready(%struct.csio_lnode*) #1

declare dso_local i32 @csio_do_abrt_cls(%struct.csio_hw*, %struct.csio_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
