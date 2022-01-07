; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_get_avail_extnt_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_get_avail_extnt_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.lpfc_mbx_get_rsrc_extent_info = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.lpfc_mbx_get_rsrc_extent_info }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_GET_RSRC_EXTENT_INFO = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"2930 Failed to get resource extents Status 0x%x Add'l Status 0x%x\0A\00", align 1
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@lpfc_mbx_get_rsrc_extent_info_cnt = common dso_local global i32 0, align 4
@lpfc_mbx_get_rsrc_extent_info_size = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"3162 Retrieved extents type-%d from port: count:%d, size:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_get_avail_extnt_rsrc(%struct.lpfc_hba* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_mbx_get_rsrc_extent_info*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @mempool_alloc(i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %14, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %22 = icmp ne %struct.TYPE_22__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %134

26:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %29 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %30 = load i32, i32* @LPFC_MBOX_OPCODE_GET_RSRC_EXTENT_INFO, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %33 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %27, %struct.TYPE_22__* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %38 = call i32 @lpfc_sli4_mbox_rsrc_extent(%struct.lpfc_hba* %34, %struct.TYPE_22__* %35, i32 0, i64 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %127

45:                                               ; preds = %26
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %54 = load i32, i32* @MBX_POLL, align 4
  %55 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %52, %struct.TYPE_22__* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %59 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %57, %struct.TYPE_22__* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %60, %struct.TYPE_22__* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %127

71:                                               ; preds = %64
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store %struct.lpfc_mbx_get_rsrc_extent_info* %76, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %77 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %78 = load %struct.lpfc_mbx_get_rsrc_extent_info*, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %79 = getelementptr inbounds %struct.lpfc_mbx_get_rsrc_extent_info, %struct.lpfc_mbx_get_rsrc_extent_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = call i64 @bf_get(i32 %77, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %71
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = load i32, i32* @KERN_ERR, align 4
  %87 = load i32, i32* @LOG_MBOX, align 4
  %88 = load i32, i32* @LOG_INIT, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %91 = load %struct.lpfc_mbx_get_rsrc_extent_info*, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %92 = getelementptr inbounds %struct.lpfc_mbx_get_rsrc_extent_info, %struct.lpfc_mbx_get_rsrc_extent_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = call i64 @bf_get(i32 %90, i32* %94)
  %96 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %97 = load %struct.lpfc_mbx_get_rsrc_extent_info*, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %98 = getelementptr inbounds %struct.lpfc_mbx_get_rsrc_extent_info, %struct.lpfc_mbx_get_rsrc_extent_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = call i64 @bf_get(i32 %96, i32* %100)
  %102 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %127

105:                                              ; preds = %71
  %106 = load i32, i32* @lpfc_mbx_get_rsrc_extent_info_cnt, align 4
  %107 = load %struct.lpfc_mbx_get_rsrc_extent_info*, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %108 = getelementptr inbounds %struct.lpfc_mbx_get_rsrc_extent_info, %struct.lpfc_mbx_get_rsrc_extent_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = call i64 @bf_get(i32 %106, i32* %109)
  %111 = load i64*, i64** %8, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32, i32* @lpfc_mbx_get_rsrc_extent_info_size, align 4
  %113 = load %struct.lpfc_mbx_get_rsrc_extent_info*, %struct.lpfc_mbx_get_rsrc_extent_info** %13, align 8
  %114 = getelementptr inbounds %struct.lpfc_mbx_get_rsrc_extent_info, %struct.lpfc_mbx_get_rsrc_extent_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = call i64 @bf_get(i32 %112, i32* %115)
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %119 = load i32, i32* @KERN_INFO, align 4
  %120 = load i32, i32* @LOG_SLI, align 4
  %121 = load i64, i64* %7, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %121, i64 %123, i64 %125)
  br label %127

127:                                              ; preds = %105, %84, %68, %42
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mempool_free(%struct.TYPE_22__* %128, i32 %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %127, %23
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli4_mbox_rsrc_extent(%struct.lpfc_hba*, %struct.TYPE_22__*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, %struct.TYPE_22__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @mempool_free(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
