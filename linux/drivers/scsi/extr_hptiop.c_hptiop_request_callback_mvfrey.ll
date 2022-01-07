; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_request_callback_mvfrey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_request_callback_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hpt_iop_request_scsi_command* }
%struct.hpt_iop_request_scsi_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IOPMU_QUEUE_REQUEST_RESULT_BIT = common dso_local global i32 0, align 4
@IOP_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hptiop_hba*, i32)* @hptiop_request_callback_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_request_callback_mvfrey(%struct.hptiop_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hptiop_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpt_iop_request_scsi_command*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %41 [
    i32 130, label %10
    i32 128, label %10
    i32 129, label %13
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %12 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %22, align 8
  store %struct.hpt_iop_request_scsi_command* %23, %struct.hpt_iop_request_scsi_command** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @IOPMU_QUEUE_REQUEST_RESULT_BIT, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @likely(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load i32, i32* @IOP_RESULT_SUCCESS, align 4
  %31 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %6, align 8
  %32 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %13
  %35 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 255
  %39 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %6, align 8
  %40 = call i32 @hptiop_finish_scsi_req(%struct.hptiop_hba* %35, i32 %38, %struct.hpt_iop_request_scsi_command* %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %34, %10
  ret void
}

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @hptiop_finish_scsi_req(%struct.hptiop_hba*, i32, %struct.hpt_iop_request_scsi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
