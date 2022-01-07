; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c___nvmet_fc_fcp_nvme_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c___nvmet_fc_fcp_nvme_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_fcp_iod = type { i32, i64, i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.nvme_completion }
%struct.nvme_completion = type { i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i32 }

@NVMET_FCP_READ = common dso_local global i64 0, align 8
@NVMET_FCOP_READDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*, i32)* @__nvmet_fc_fcp_nvme_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvmet_fc_fcp_nvme_cmd_done(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_fcp_iod* %1, i32 %2) #0 {
  %4 = alloca %struct.nvmet_fc_tgtport*, align 8
  %5 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_common_command*, align 8
  %8 = alloca %struct.nvme_completion*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %4, align 8
  store %struct.nvmet_fc_fcp_iod* %1, %struct.nvmet_fc_fcp_iod** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %12 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.nvme_common_command* %14, %struct.nvme_common_command** %7, align 8
  %15 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %16 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.nvme_completion* %17, %struct.nvme_completion** %8, align 8
  %18 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %19 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %18, i32 0, i32 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %26 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %25, i32 0, i32 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %3
  %32 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %33 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %36 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %31, %3
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %44 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %45 = call i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport* %43, %struct.nvmet_fc_fcp_iod* %44)
  br label %99

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %51 = call i32 @memset(%struct.nvme_completion* %50, i32 0, i32 32)
  %52 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %53 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %58 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %60 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %66 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.nvme_common_command*, %struct.nvme_common_command** %7, align 8
  %68 = getelementptr inbounds %struct.nvme_common_command, %struct.nvme_common_command* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %71 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.nvme_completion*, %struct.nvme_completion** %8, align 8
  %75 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %93

76:                                               ; preds = %46
  %77 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %78 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NVMET_FCP_READ, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %84 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %89 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %90 = load i32, i32* @NVMET_FCOP_READDATA, align 4
  %91 = call i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport* %88, %struct.nvmet_fc_fcp_iod* %89, i32 %90)
  br label %99

92:                                               ; preds = %82, %76
  br label %93

93:                                               ; preds = %92, %49
  %94 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %95 = call i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod* %94)
  %96 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %4, align 8
  %97 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %98 = call i32 @nvmet_fc_xmt_fcp_rsp(%struct.nvmet_fc_tgtport* %96, %struct.nvmet_fc_fcp_iod* %97)
  br label %99

99:                                               ; preds = %93, %87, %42
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvmet_fc_abort_op(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @memset(%struct.nvme_completion*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nvmet_fc_transfer_fcp_data(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*, i32) #1

declare dso_local i32 @nvmet_fc_free_tgt_pgs(%struct.nvmet_fc_fcp_iod*) #1

declare dso_local i32 @nvmet_fc_xmt_fcp_rsp(%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_fcp_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
