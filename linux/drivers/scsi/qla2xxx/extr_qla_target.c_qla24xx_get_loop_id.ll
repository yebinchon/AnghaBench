; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_get_loop_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla24xx_get_loop_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.gid_list_info = type { i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"qla_target(%d): DMA Alloc failed of %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"qla_target(%d): get_id_list() failed: %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.TYPE_5__*, i32*)* @qla24xx_get_loop_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_get_loop_id(%struct.scsi_qla_host* %0, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gid_list_info*, align 8
  %10 = alloca %struct.gid_list_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %7, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %23 = call i32 @qla2x00_gid_list_size(%struct.qla_hw_data* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.gid_list_info* @dma_alloc_coherent(i32* %21, i32 %23, i32* %8, i32 %24)
  store %struct.gid_list_info* %25, %struct.gid_list_info** %9, align 8
  %26 = load %struct.gid_list_info*, %struct.gid_list_info** %9, align 8
  %27 = icmp ne %struct.gid_list_info* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %35 = call i32 @qla2x00_gid_list_size(%struct.qla_hw_data* %34)
  %36 = call i32 @ql_dbg(i32 %29, %struct.scsi_qla_host* %30, i32 61508, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %116

39:                                               ; preds = %3
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %41 = load %struct.gid_list_info*, %struct.gid_list_info** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @qla24xx_gidlist_wait(%struct.scsi_qla_host* %40, %struct.gid_list_info* %41, i32 %42, i32* %14)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @QLA_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ql_dbg(i32 %48, %struct.scsi_qla_host* %49, i32 61509, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %105

57:                                               ; preds = %39
  %58 = load %struct.gid_list_info*, %struct.gid_list_info** %9, align 8
  store %struct.gid_list_info* %58, %struct.gid_list_info** %10, align 8
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %101, %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = load %struct.gid_list_info*, %struct.gid_list_info** %10, align 8
  %67 = getelementptr inbounds %struct.gid_list_info, %struct.gid_list_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.gid_list_info*, %struct.gid_list_info** %10, align 8
  %74 = getelementptr inbounds %struct.gid_list_info, %struct.gid_list_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.gid_list_info*, %struct.gid_list_info** %10, align 8
  %81 = getelementptr inbounds %struct.gid_list_info, %struct.gid_list_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.gid_list_info*, %struct.gid_list_info** %10, align 8
  %88 = getelementptr inbounds %struct.gid_list_info, %struct.gid_list_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %11, align 4
  br label %104

92:                                               ; preds = %79, %72, %65
  %93 = load %struct.gid_list_info*, %struct.gid_list_info** %10, align 8
  %94 = bitcast %struct.gid_list_info* %93 to i8*
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %94, i64 %98
  %100 = bitcast i8* %99 to %struct.gid_list_info*
  store %struct.gid_list_info* %100, %struct.gid_list_info** %10, align 8
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %61

104:                                              ; preds = %86, %61
  br label %105

105:                                              ; preds = %104, %47
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %111 = call i32 @qla2x00_gid_list_size(%struct.qla_hw_data* %110)
  %112 = load %struct.gid_list_info*, %struct.gid_list_info** %9, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @dma_free_coherent(i32* %109, i32 %111, %struct.gid_list_info* %112, i32 %113)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %105, %28
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.gid_list_info* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_gid_list_size(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

declare dso_local i32 @qla24xx_gidlist_wait(%struct.scsi_qla_host*, %struct.gid_list_info*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.gid_list_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
