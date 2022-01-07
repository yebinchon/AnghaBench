; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mvumi_cmd = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mvumi_rsp_frame = type { i32, i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@CL_RSP_FLAG_SENSEDATA = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DRIVER_INVALID = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, %struct.mvumi_cmd*, %struct.mvumi_rsp_frame*)* @mvumi_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_complete_cmd(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1, %struct.mvumi_rsp_frame* %2) #0 {
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_cmd*, align 8
  %6 = alloca %struct.mvumi_rsp_frame*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %5, align 8
  store %struct.mvumi_rsp_frame* %2, %struct.mvumi_rsp_frame** %6, align 8
  %8 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %8, i32 0, i32 0
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %7, align 8
  %11 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %11, i32 0, i32 0
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %17 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %22 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %68 [
    i32 128, label %24
    i32 130, label %31
    i32 129, label %38
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @DID_OK, align 4
  %26 = shl i32 %25, 16
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %78

31:                                               ; preds = %3
  %32 = load i32, i32* @DID_BUS_BUSY, align 4
  %33 = shl i32 %32, 16
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %78

38:                                               ; preds = %3
  %39 = load i32, i32* @DID_OK, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %46 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CL_RSP_FLAG_SENSEDATA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %38
  %52 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %52, i32 0, i32 0
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %53, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mvumi_rsp_frame*, %struct.mvumi_rsp_frame** %6, align 8
  %58 = getelementptr inbounds %struct.mvumi_rsp_frame, %struct.mvumi_rsp_frame* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32 %56, i32 %59, i32 4)
  %61 = load i32, i32* @DRIVER_SENSE, align 4
  %62 = shl i32 %61, 24
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %51, %38
  br label %78

68:                                               ; preds = %3
  %69 = load i32, i32* @DRIVER_INVALID, align 4
  %70 = shl i32 %69, 24
  %71 = load i32, i32* @DID_ABORT, align 4
  %72 = shl i32 %71, 16
  %73 = or i32 %70, %72
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %68, %67, %31, %24
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %80 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %84 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %88 = call i32 @scsi_sglist(%struct.scsi_cmnd* %87)
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %90 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %89)
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dma_unmap_sg(i32* %86, i32 %88, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %82, %78
  %96 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %96, i32 0, i32 0
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %97, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 1
  %100 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %99, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %102 = call i32 %100(%struct.scsi_cmnd* %101)
  %103 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %104 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %105 = call i32 @mvumi_return_cmd(%struct.mvumi_hba* %103, %struct.mvumi_cmd* %104)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @mvumi_return_cmd(%struct.mvumi_hba*, %struct.mvumi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
