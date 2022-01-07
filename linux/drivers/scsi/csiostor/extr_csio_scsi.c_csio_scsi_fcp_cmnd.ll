; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scsi_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_ioreq = type { i64, i64 }
%struct.fcp_cmnd = type { i64, i32, i64, i32, i32, i32, i64 }
%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@FCP_PTA_SIMPLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_WRDATA = common dso_local global i64 0, align 8
@FCP_CFL_RDDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_ioreq*, i8*)* @csio_scsi_fcp_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_scsi_fcp_cmnd(%struct.csio_ioreq* %0, i8* %1) #0 {
  %3 = alloca %struct.csio_ioreq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fcp_cmnd*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.csio_ioreq* %0, %struct.csio_ioreq** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fcp_cmnd*
  store %struct.fcp_cmnd* %8, %struct.fcp_cmnd** %5, align 8
  %9 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %10 = call %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq* %9)
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %25, i32 0, i32 1
  %27 = call i32 @int_to_scsilun(i32 %24, i32* %26)
  %28 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %31 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %34, i32 %37, i32 16)
  %39 = load i32, i32* @FCP_PTA_SIMPLE, align 4
  %40 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %42)
  %44 = call i32 @cpu_to_be32(i32 %43)
  %45 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %48 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %19
  %52 = load %struct.csio_ioreq*, %struct.csio_ioreq** %3, align 8
  %53 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DMA_TO_DEVICE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* @FCP_CFL_WRDATA, align 8
  %59 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %65

61:                                               ; preds = %51
  %62 = load i64, i64* @FCP_CFL_RDDATA, align 8
  %63 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %64 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %69

66:                                               ; preds = %19
  %67 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %68 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %87

70:                                               ; preds = %2
  %71 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %72 = call i32 @memset(%struct.fcp_cmnd* %71, i32 0, i32 48)
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %79 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %78, i32 0, i32 1
  %80 = call i32 @int_to_scsilun(i32 %77, i32* %79)
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %86 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %70, %69
  ret void
}

declare dso_local %struct.scsi_cmnd* @csio_scsi_cmnd(%struct.csio_ioreq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(%struct.fcp_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
