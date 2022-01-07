; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_build_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_build_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i64, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fcp_cmnd = type { i32, i32, i64, i32, i64, i32, i32 }
%struct.scsi_lun = type { i32 }

@FCP_CMND_LEN = common dso_local global i32 0, align 4
@QEDF_TASK_MGMT_CMD = common dso_local global i64 0, align 8
@FCP_CFL_RDDATA = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_WRDATA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FCP_PTA_SIMPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ioreq*, %struct.fcp_cmnd*)* @qedf_build_fcp_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_build_fcp_cmnd(%struct.qedf_ioreq* %0, %struct.fcp_cmnd* %1) #0 {
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca %struct.fcp_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  store %struct.fcp_cmnd* %1, %struct.fcp_cmnd** %4, align 8
  %6 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %7 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %6, i32 0, i32 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %10 = load i32, i32* @FCP_CMND_LEN, align 4
  %11 = call i32 @memset(%struct.fcp_cmnd* %9, i32 0, i32 %10)
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %17, i32 0, i32 6
  %19 = bitcast i32* %18 to %struct.scsi_lun*
  %20 = call i32 @int_to_scsilun(i32 %16, %struct.scsi_lun* %19)
  %21 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %24 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %29 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %34 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %36 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @QEDF_TASK_MGMT_CMD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load i32, i32* @FCP_CFL_RDDATA, align 4
  %42 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %72

46:                                               ; preds = %2
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_TO_DEVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @FCP_CFL_WRDATA, align 4
  %54 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %71

58:                                               ; preds = %46
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @FCP_CFL_RDDATA, align 4
  %66 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %67 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %52
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i64, i64* @FCP_PTA_SIMPLE, align 8
  %74 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %75 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %77 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QEDF_TASK_MGMT_CMD, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %83 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32 %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %81, %72
  %93 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %94 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @htonl(i32 %95)
  %97 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %98 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fcp_cmnd*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
