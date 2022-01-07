; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_fod_op_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_fod_op_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_fcp_iod = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.nvmet_fc_tgtport*, %struct.nvmefc_tgt_fcp_req* }
%struct.TYPE_3__ = type { i32 }
%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmefc_tgt_fcp_req = type { i32, i32, i32, i32 }

@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_fcp_iod*)* @nvmet_fc_fod_op_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_fod_op_done(%struct.nvmet_fc_fcp_iod* %0) #0 {
  %2 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %3 = alloca %struct.nvmefc_tgt_fcp_req*, align 8
  %4 = alloca %struct.nvmet_fc_tgtport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nvmet_fc_fcp_iod* %0, %struct.nvmet_fc_fcp_iod** %2, align 8
  %7 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %7, i32 0, i32 7
  %9 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %8, align 8
  store %struct.nvmefc_tgt_fcp_req* %9, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %10 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %10, i32 0, i32 6
  %12 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %11, align 8
  store %struct.nvmet_fc_tgtport* %12, %struct.nvmet_fc_tgtport** %4, align 8
  %13 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %13, i32 0, i32 5
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %18 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %21 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %22, i32 0, i32 5
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %27 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %169 [
    i32 128, label %29
    i32 131, label %95
    i32 130, label %95
    i32 129, label %157
  ]

29:                                               ; preds = %1
  %30 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @__nvmet_fc_fod_op_abort(%struct.nvmet_fc_fcp_iod* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %170

35:                                               ; preds = %29
  %36 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %37 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %42 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %45 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %40, %35
  %49 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %50 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %49, i32 0, i32 5
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %53 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %55 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %54, i32 0, i32 5
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %58 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %57, i32 0, i32 3
  %59 = load i32, i32* @NVME_SC_INTERNAL, align 4
  %60 = call i32 @nvmet_req_complete(%struct.TYPE_3__* %58, i32 %59)
  br label %170

61:                                               ; preds = %40
  %62 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %63 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %66 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %70 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %73 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %71, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %61
  %78 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %79 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %78, i32 0, i32 5
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %83 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %85 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %84, i32 0, i32 5
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %89 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %90 = call i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport* %88, %struct.nvmet_fc_fcp_iod* %89, i32 128)
  br label %170

91:                                               ; preds = %61
  %92 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %93 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %92, i32 0, i32 3
  %94 = call i32 @nvmet_req_execute(%struct.TYPE_3__* %93)
  br label %170

95:                                               ; preds = %1, %1
  %96 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @__nvmet_fc_fod_op_abort(%struct.nvmet_fc_fcp_iod* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %170

101:                                              ; preds = %95
  %102 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %103 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %101
  %107 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %108 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %111 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106, %101
  %115 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %116 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %117 = call i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport* %115, %struct.nvmet_fc_fcp_iod* %116)
  br label %170

118:                                              ; preds = %106
  %119 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %120 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 130
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %125 = call i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod* %124)
  %126 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %127 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %130 = call i32 @nvmet_fc_free_fcp_iod(i32 %128, %struct.nvmet_fc_fcp_iod* %129)
  br label %170

131:                                              ; preds = %118
  %132 = load %struct.nvmefc_tgt_fcp_req*, %struct.nvmefc_tgt_fcp_req** %3, align 8
  %133 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, %struct.nvmefc_tgt_fcp_req* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %136 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %140 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %143 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %141, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %131
  %148 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %149 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %150 = call i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport* %148, %struct.nvmet_fc_fcp_iod* %149, i32 131)
  br label %170

151:                                              ; preds = %131
  %152 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %153 = call i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod* %152)
  %154 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %155 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %156 = call i32 @nvmet_fc_xmt_fcp_rsp(%struct.nvmet_fc_tgtport* %154, %struct.nvmet_fc_fcp_iod* %155)
  br label %170

157:                                              ; preds = %1
  %158 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @__nvmet_fc_fod_op_abort(%struct.nvmet_fc_fcp_iod* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %170

163:                                              ; preds = %157
  %164 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %165 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %2, align 8
  %168 = call i32 @nvmet_fc_free_fcp_iod(i32 %166, %struct.nvmet_fc_fcp_iod* %167)
  br label %170

169:                                              ; preds = %1
  br label %170

170:                                              ; preds = %34, %48, %77, %100, %114, %123, %147, %162, %169, %163, %151, %91
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__nvmet_fc_fod_op_abort(%struct.nvmet_fc_fcp_iod*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nvmet_req_complete(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*, i32) #1

declare dso_local i32 @nvmet_req_execute(%struct.TYPE_3__*) #1

declare dso_local i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_free_fcp_iod(i32, %struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_xmt_fcp_rsp(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
