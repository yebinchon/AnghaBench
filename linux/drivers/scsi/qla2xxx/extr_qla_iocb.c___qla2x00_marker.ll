; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c___qla2x00_marker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c___qla2x00_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla_qpair = type { %struct.req_que* }
%struct.req_que = type { i32 }
%struct.TYPE_2__ = type { i8*, i32, i64, i32 }
%struct.mrk_entry_24xx = type { i32, i32, i32, i8* }
%struct.scsi_lun = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate Marker IOCB.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MARKER_TYPE = common dso_local global i32 0, align 4
@MK_SYNC_ALL = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.qla_qpair*, i32, i64, i64)* @__qla2x00_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qla2x00_marker(%struct.scsi_qla_host* %0, %struct.qla_qpair* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.qla_qpair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.mrk_entry_24xx*, align 8
  %14 = alloca %struct.req_que*, align 8
  %15 = alloca %struct.qla_hw_data*, align 8
  %16 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.mrk_entry_24xx* null, %struct.mrk_entry_24xx** %13, align 8
  %17 = load %struct.qla_qpair*, %struct.qla_qpair** %8, align 8
  %18 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %17, i32 0, i32 0
  %19 = load %struct.req_que*, %struct.req_que** %18, align 8
  store %struct.req_que* %19, %struct.req_que** %14, align 8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 1
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %21, align 8
  store %struct.qla_hw_data* %22, %struct.qla_hw_data** %15, align 8
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @pci_get_drvdata(i32 %25)
  store i32* %26, i32** %16, align 8
  %27 = load %struct.qla_qpair*, %struct.qla_qpair** %8, align 8
  %28 = call i64 @__qla2x00_alloc_iocbs(%struct.qla_qpair* %27, i32* null)
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %12, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = icmp eq %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load i32, i32* @ql_log_warn, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @ql_log(i32 %33, i32* %34, i32 12326, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %36, i32* %6, align 4
  br label %100

37:                                               ; preds = %5
  %38 = load i32, i32* @MARKER_TYPE, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MK_SYNC_ALL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %37
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %49 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %53 = bitcast %struct.TYPE_2__* %52 to %struct.mrk_entry_24xx*
  store %struct.mrk_entry_24xx* %53, %struct.mrk_entry_24xx** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %57 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %60 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %59, i32 0, i32 2
  %61 = bitcast i32* %60 to %struct.scsi_lun*
  %62 = call i32 @int_to_scsilun(i64 %58, %struct.scsi_lun* %61)
  %63 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %64 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @host_to_fcp_swap(i32 %65, i32 4)
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %71 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.req_que*, %struct.req_que** %14, align 8
  %73 = getelementptr inbounds %struct.req_que, %struct.req_que* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %76 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @MAKE_HANDLE(i32 %74, i32 %77)
  %79 = load %struct.mrk_entry_24xx*, %struct.mrk_entry_24xx** %13, align 8
  %80 = getelementptr inbounds %struct.mrk_entry_24xx, %struct.mrk_entry_24xx* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %93

81:                                               ; preds = %47
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @SET_TARGET_ID(%struct.qla_hw_data* %82, i32 %85, i32 %86)
  %88 = load i64, i64* %10, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %81, %51
  br label %94

94:                                               ; preds = %93, %37
  %95 = call i32 (...) @wmb()
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %97 = load %struct.req_que*, %struct.req_que** %14, align 8
  %98 = call i32 @qla2x00_start_iocbs(%struct.scsi_qla_host* %96, %struct.req_que* %97)
  %99 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %94, %32
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @__qla2x00_alloc_iocbs(%struct.qla_qpair*, i32*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @int_to_scsilun(i64, %struct.scsi_lun*) #1

declare dso_local i32 @host_to_fcp_swap(i32, i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i32 @SET_TARGET_ID(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.scsi_qla_host*, %struct.req_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
