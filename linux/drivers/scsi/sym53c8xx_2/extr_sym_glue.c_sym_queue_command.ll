; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i64, i32 }
%struct.sym_lcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sym_ccb = type { i32 }

@M_SIMPLE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, %struct.scsi_cmnd*)* @sym_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_queue_command(%struct.sym_hcb* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca %struct.sym_lcb*, align 8
  %9 = alloca %struct.sym_ccb*, align 8
  %10 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %6, align 8
  %14 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %15 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %14, i32 0, i32 0
  %16 = load %struct.sym_tcb*, %struct.sym_tcb** %15, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %16, i64 %19
  store %struct.sym_tcb* %20, %struct.sym_tcb** %7, align 8
  %21 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %21, i32 %24)
  store %struct.sym_lcb* %25, %struct.sym_lcb** %8, align 8
  %26 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %27 = icmp ne %struct.sym_lcb* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %30 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @M_SIMPLE_TAG, align 4
  br label %37

36:                                               ; preds = %28, %2
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %struct.sym_ccb* @sym_get_ccb(%struct.sym_hcb* %39, %struct.scsi_cmnd* %40, i32 %41)
  store %struct.sym_ccb* %42, %struct.sym_ccb** %9, align 8
  %43 = load %struct.sym_ccb*, %struct.sym_ccb** %9, align 8
  %44 = icmp ne %struct.sym_ccb* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = load %struct.sym_ccb*, %struct.sym_ccb** %9, align 8
  %50 = call i32 @sym_queue_scsiio(%struct.sym_hcb* %47, %struct.scsi_cmnd* %48, %struct.sym_ccb* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_get_ccb(%struct.sym_hcb*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @sym_queue_scsiio(%struct.sym_hcb*, %struct.scsi_cmnd*, %struct.sym_ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
