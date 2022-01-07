; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_handle_fcp_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_handle_fcp_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nvmet_fc_fcp_iod = type { i64, %struct.TYPE_11__, i64, i64, i32*, %struct.TYPE_10__*, %struct.TYPE_12__, %struct.nvme_fc_cmd_iu, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, i32*, i64, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nvme_fc_cmd_iu = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@nvmet_fc_xmt_fcp_op_done = common dso_local global i32 0, align 4
@FCNVME_CMD_FLAGS_WRITE = common dso_local global i32 0, align 4
@NVMET_FCP_WRITE = common dso_local global i64 0, align 8
@FCNVME_CMD_FLAGS_READ = common dso_local global i32 0, align 4
@NVMET_FCP_READ = common dso_local global i64 0, align 8
@NVMET_FCP_NODATA = common dso_local global i64 0, align 8
@nvmet_fc_tgt_fcp_ops = common dso_local global i32 0, align 4
@NVMET_FCOP_WRITEDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*)* @nvmet_fc_handle_fcp_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_handle_fcp_rqst(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_fcp_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %5 = alloca %struct.nvme_fc_cmd_iu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_fcp_iod* %1, %struct.nvmet_fc_fcp_iod** %4, align 8
  %8 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %9 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %8, i32 0, i32 7
  store %struct.nvme_fc_cmd_iu* %9, %struct.nvme_fc_cmd_iu** %5, align 8
  %10 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @be32_to_cpu(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %15 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %164

19:                                               ; preds = %2
  %20 = load i32, i32* @nvmet_fc_xmt_fcp_op_done, align 4
  %21 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %22 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %21, i32 0, i32 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FCNVME_CMD_FLAGS_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load i64, i64* @NVMET_FCP_WRITE, align 8
  %33 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %34 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %35, i32 0, i32 1
  %37 = call i64 @nvme_is_write(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %164

40:                                               ; preds = %31
  br label %67

41:                                               ; preds = %19
  %42 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %43 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FCNVME_CMD_FLAGS_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i64, i64* @NVMET_FCP_READ, align 8
  %50 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %51 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %5, align 8
  %53 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %52, i32 0, i32 1
  %54 = call i64 @nvme_is_write(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %164

57:                                               ; preds = %48
  br label %66

58:                                               ; preds = %41
  %59 = load i64, i64* @NVMET_FCP_NODATA, align 8
  %60 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %61 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %164

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %40
  %68 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %69 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %69, i32 0, i32 1
  %71 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %72 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i32* %70, i32** %73, align 8
  %74 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %75 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %78 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  store i32* %76, i32** %79, align 8
  %80 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %81 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %86 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 8
  %88 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %89 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %88, i32 0, i32 6
  %90 = call i32 @memset(%struct.TYPE_12__* %89, i32 0, i32 4)
  %91 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %92 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %94 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %96 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %95, i32 0, i32 1
  %97 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %98 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %97, i32 0, i32 5
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %102 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %101, i32 0, i32 5
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = call i32 @nvmet_req_init(%struct.TYPE_11__* %96, i32* %100, i32* %104, i32* @nvmet_fc_tgt_fcp_ops)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %67
  br label %168

109:                                              ; preds = %67
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %112 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store i64 %110, i64* %113, align 8
  %114 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %115 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %114, i32 0, i32 5
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = call i32 @atomic_inc(i32* %117)
  %119 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %120 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %109
  %125 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %126 = call i32 @nvmet_fc_alloc_tgt_pgs(%struct.nvmet_fc_fcp_iod* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %131 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %130, i32 0, i32 1
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @nvmet_req_complete(%struct.TYPE_11__* %131, i32 %132)
  br label %168

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %109
  %136 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %137 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %140 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32* %138, i32** %141, align 8
  %142 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %143 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %146 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %149 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %151 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @NVMET_FCP_WRITE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %135
  %156 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %157 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %158 = load i32, i32* @NVMET_FCOP_WRITEDATA, align 4
  %159 = call i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport* %156, %struct.nvmet_fc_fcp_iod* %157, i32 %158)
  br label %168

160:                                              ; preds = %135
  %161 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %162 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %161, i32 0, i32 1
  %163 = call i32 @nvmet_req_execute(%struct.TYPE_11__* %162)
  br label %168

164:                                              ; preds = %64, %56, %39, %18
  %165 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %166 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %4, align 8
  %167 = call i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport* %165, %struct.nvmet_fc_fcp_iod* %166)
  br label %168

168:                                              ; preds = %164, %160, %155, %129, %108
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @nvme_is_write(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @nvmet_req_init(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nvmet_fc_alloc_tgt_pgs(%struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_req_complete(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*, i32) #1

declare dso_local i32 @nvmet_req_execute(%struct.TYPE_11__*) #1

declare dso_local i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
