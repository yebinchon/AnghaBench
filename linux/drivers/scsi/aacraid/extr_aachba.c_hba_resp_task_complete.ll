; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_hba_resp_task_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_hba_resp_task_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.scsi_cmnd = type { i32, i32 }
%struct.aac_hba_resp = type { i32, i32, i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, %struct.scsi_cmnd*, %struct.aac_hba_resp*)* @hba_resp_task_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hba_resp_task_complete(%struct.aac_dev* %0, %struct.scsi_cmnd* %1, %struct.aac_hba_resp* %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.aac_hba_resp*, align 8
  %7 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.aac_hba_resp* %2, %struct.aac_hba_resp** %6, align 8
  %8 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %9 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %15 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %13, i32 %17)
  %19 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %20 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %81 [
    i32 131, label %22
    i32 132, label %32
    i32 133, label %60
    i32 129, label %70
    i32 130, label %80
    i32 128, label %80
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @DID_OK, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* @COMMAND_COMPLETE, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %24, %26
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %91

32:                                               ; preds = %3
  %33 = load i32, i32* @u8, align 4
  %34 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %35 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %38 = call i32 @min_t(i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %6, align 8
  %46 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load i32, i32* @DID_OK, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* @COMMAND_COMPLETE, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %91

60:                                               ; preds = %3
  %61 = load i32, i32* @DID_BUS_BUSY, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* @COMMAND_COMPLETE, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %91

70:                                               ; preds = %3
  %71 = load i32, i32* @DID_ABORT, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* @ABORT, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %91

80:                                               ; preds = %3, %3
  br label %81

81:                                               ; preds = %3, %80
  %82 = load i32, i32* @DID_ERROR, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* @COMMAND_COMPLETE, align 4
  %85 = shl i32 %84, 8
  %86 = or i32 %83, %85
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %81, %70, %60, %50, %22
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
