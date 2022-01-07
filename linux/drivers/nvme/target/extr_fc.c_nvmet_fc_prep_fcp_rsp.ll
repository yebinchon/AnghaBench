; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_prep_fcp_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_prep_fcp_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_fcp_iod = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.nvme_fc_ersp_iu }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.nvme_fc_ersp_iu* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i32 }
%struct.nvme_fc_ersp_iu = type { i8*, i8*, i32, %struct.nvme_completion }
%struct.nvme_completion = type { i32, i32 }
%struct.nvme_command = type { i32 }

@NVMET_FCOP_READDATA_RSP = common dso_local global i64 0, align 8
@NVME_CMD_FUSE_FIRST = common dso_local global i32 0, align 4
@NVME_CMD_FUSE_SECOND = common dso_local global i32 0, align 4
@NVME_FC_SIZEOF_ZEROS_RSP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*)* @nvmet_fc_prep_fcp_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_prep_fcp_rsp(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_fcp_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %5 = alloca %struct.nvme_fc_ersp_iu*, align 8
  %6 = alloca %struct.nvme_common_command*, align 8
  %7 = alloca %struct.nvme_completion*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_fcp_iod* %1, %struct.nvmet_fc_fcp_iod** %4, align 8
  %13 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %13, i32 0, i32 6
  store %struct.nvme_fc_ersp_iu* %14, %struct.nvme_fc_ersp_iu** %5, align 8
  %15 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %16 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.nvme_common_command* %18, %struct.nvme_common_command** %6, align 8
  %19 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %19, i32 0, i32 3
  store %struct.nvme_completion* %20, %struct.nvme_completion** %7, align 8
  %21 = load %struct.nvme_completion*, %struct.nvme_completion** %7, align 8
  %22 = bitcast %struct.nvme_completion* %21 to i64*
  store i64* %22, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %24 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NVMET_FCOP_READDATA_RSP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %32 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %37 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %41 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = call i64 @atomic_inc_return(i32* %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %47 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = srem i64 %45, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %39
  %54 = load %struct.nvme_common_command*, %struct.nvme_common_command** %6, align 8
  %55 = bitcast %struct.nvme_common_command* %54 to %struct.nvme_command*
  %56 = call i64 @nvme_is_fabrics(%struct.nvme_command* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %101, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %61 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %101, label %65

65:                                               ; preds = %58
  %66 = load %struct.nvme_completion*, %struct.nvme_completion** %7, align 8
  %67 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = and i32 %69, 65534
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %65
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %72
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %77
  %83 = load %struct.nvme_common_command*, %struct.nvme_common_command** %6, align 8
  %84 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NVME_CMD_FUSE_FIRST, align 4
  %87 = load i32, i32* @NVME_CMD_FUSE_SECOND, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %82
  %92 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %93 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %92, i32 0, i32 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.nvme_completion*, %struct.nvme_completion** %7, align 8
  %96 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = call i64 @queue_90percent_full(%struct.TYPE_10__* %94, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91, %82, %77, %72, %65, %58, %53, %39
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %91
  %103 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %104 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %105 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  store %struct.nvme_fc_ersp_iu* %103, %struct.nvme_fc_ersp_iu** %107, align 8
  %108 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %109 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %112 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %111, i32 0, i32 2
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %102
  %118 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %119 = load i32, i32* @NVME_FC_SIZEOF_ZEROS_RSP, align 4
  %120 = call i32 @memset(%struct.nvme_fc_ersp_iu* %118, i32 0, i32 %119)
  %121 = load i32, i32* @NVME_FC_SIZEOF_ZEROS_RSP, align 4
  %122 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %123 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %122, i32 0, i32 2
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 8
  br label %147

126:                                              ; preds = %102
  %127 = call i32 @cpu_to_be16(i32 4)
  %128 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %129 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %131 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %130, i32 0, i32 3
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = call i64 @atomic_inc_return(i32* %133)
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = call i8* @cpu_to_be32(i64 %135)
  %137 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %138 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i8* @cpu_to_be32(i64 %139)
  %141 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %5, align 8
  %142 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %144 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i32 32, i32* %146, align 8
  br label %147

147:                                              ; preds = %126, %117
  %148 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %149 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %152 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DMA_TO_DEVICE, align 4
  %155 = call i32 @fc_dma_sync_single_for_device(i32 %150, i32 %153, i32 32, i32 %154)
  ret void
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @nvme_is_fabrics(%struct.nvme_command*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @queue_90percent_full(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.nvme_fc_ersp_iu*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @fc_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
