; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_scsi_to_fcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_scsi_to_fcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcp_cmnd = type { i8*, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@FCP_PTA_SIMPLE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_RDDATA = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@FCP_CFL_WRDATA = common dso_local global i32 0, align 4
@SCSI_PROT_DIF_TYPE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcp_cmnd*, %struct.scsi_cmnd*)* @zfcp_fc_scsi_to_fcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fcp_cmnd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.fcp_cmnd* %0, %struct.fcp_cmnd** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %11, i32 0, i32 4
  %13 = bitcast i32* %12 to %struct.scsi_lun*
  %14 = call i32 @int_to_scsilun(i32 %10, %struct.scsi_lun* %13)
  %15 = load i32, i32* @FCP_PTA_SIMPLE, align 4
  %16 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @FCP_CFL_RDDATA, align 4
  %25 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_TO_DEVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @FCP_CFL_WRDATA, align 4
  %37 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %38 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %43 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %44, i32 %47, i32 %50)
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %57 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = call i64 @scsi_get_prot_type(%struct.scsi_cmnd* %58)
  %60 = load i64, i64* @SCSI_PROT_DIF_TYPE1, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %41
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %63, %68
  %70 = mul nsw i32 %69, 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %76 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %62, %41
  ret void
}

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
