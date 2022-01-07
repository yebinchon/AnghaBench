; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_connect_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_connect_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i64, i32, i32 }
%union.nvme_result = type { i32 }
%struct.nvmf_connect_data = type { i32, i32, i8*, i32 }

@nvme_fabrics_command = common dso_local global i32 0, align 4
@nvme_fabrics_type_connect = common dso_local global i32 0, align 4
@NVME_AQ_DEPTH = common dso_local global i32 0, align 4
@NVME_KATO_GRACE = common dso_local global i32 0, align 4
@NVME_CONNECT_DISABLE_SQFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_connect_admin_queue(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.nvme_command, align 8
  %5 = alloca %union.nvme_result, align 4
  %6 = alloca %struct.nvmf_connect_data*, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %8 = call i32 @memset(%struct.nvme_command* %4, i32 0, i32 32)
  %9 = load i32, i32* @nvme_fabrics_command, align 4
  %10 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @nvme_fabrics_type_connect, align 4
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NVME_KATO_GRACE, align 4
  %31 = add nsw i32 %29, %30
  %32 = mul nsw i32 %31, 1000
  %33 = call i32 @cpu_to_le32(i32 %32)
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %26
  %36 = phi i32 [ %33, %26 ], [ 0, %34 ]
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32, i32* @NVME_CONNECT_DISABLE_SQFLOW, align 4
  %47 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.nvmf_connect_data* @kzalloc(i32 24, i32 %52)
  store %struct.nvmf_connect_data* %53, %struct.nvmf_connect_data** %6, align 8
  %54 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %55 = icmp ne %struct.nvmf_connect_data* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %123

59:                                               ; preds = %51
  %60 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %61 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %60, i32 0, i32 3
  %62 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = call i32 @uuid_copy(i32* %61, i32* %67)
  %69 = call i8* @cpu_to_le16(i32 65535)
  %70 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %71 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %73 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %81 = call i32 @strncpy(i32 %74, i32 %79, i32 %80)
  %82 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %83 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %86 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %93 = call i32 @strncpy(i32 %84, i32 %91, i32 %92)
  %94 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %98 = load i32, i32* @NVME_QID_ANY, align 4
  %99 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %100 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @__nvme_submit_sync_cmd(i32 %96, %struct.nvme_command* %4, %union.nvme_result* %5, %struct.nvmf_connect_data* %97, i32 24, i32 0, i32 %98, i32 1, i32 %101, i32 0)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %59
  %106 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = bitcast %union.nvme_result* %5 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %112 = call i32 @nvmf_log_connect_error(%struct.nvme_ctrl* %106, i32 %107, i32 %110, %struct.nvme_command* %4, %struct.nvmf_connect_data* %111)
  br label %119

113:                                              ; preds = %59
  %114 = bitcast %union.nvme_result* %5 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  %117 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %105
  %120 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %6, align 8
  %121 = call i32 @kfree(%struct.nvmf_connect_data* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %56
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.nvmf_connect_data* @kzalloc(i32, i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @__nvme_submit_sync_cmd(i32, %struct.nvme_command*, %union.nvme_result*, %struct.nvmf_connect_data*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvmf_log_connect_error(%struct.nvme_ctrl*, i32, i32, %struct.nvme_command*, %struct.nvmf_connect_data*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.nvmf_connect_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
