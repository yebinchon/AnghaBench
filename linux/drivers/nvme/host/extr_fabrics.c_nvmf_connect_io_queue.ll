; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_connect_io_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_connect_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32 }
%struct.nvmf_connect_data = type { i32, i32, i8*, i32 }
%union.nvme_result = type { i32 }

@nvme_fabrics_command = common dso_local global i32 0, align 4
@nvme_fabrics_type_connect = common dso_local global i32 0, align 4
@NVME_CONNECT_DISABLE_SQFLOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@BLK_MQ_REQ_RESERVED = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_connect_io_queue(%struct.nvme_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_command, align 8
  %9 = alloca %struct.nvmf_connect_data*, align 8
  %10 = alloca %union.nvme_result, align 4
  %11 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i32 @memset(%struct.nvme_command* %8, i32 0, i32 32)
  %13 = load i32, i32* @nvme_fabrics_command, align 4
  %14 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @nvme_fabrics_type_connect, align 4
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load i32, i32* @NVME_CONNECT_DISABLE_SQFLOW, align 4
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %3
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.nvmf_connect_data* @kzalloc(i32 24, i32 %42)
  store %struct.nvmf_connect_data* %43, %struct.nvmf_connect_data** %9, align 8
  %44 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %45 = icmp ne %struct.nvmf_connect_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %111

49:                                               ; preds = %41
  %50 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %51 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %50, i32 0, i32 3
  %52 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %53 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call i32 @uuid_copy(i32* %51, i32* %57)
  %59 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %60 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %64 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %66 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %69 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %74 = call i32 @strncpy(i32 %67, i32 %72, i32 %73)
  %75 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %76 = getelementptr inbounds %struct.nvmf_connect_data, %struct.nvmf_connect_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %79 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %86 = call i32 @strncpy(i32 %77, i32 %84, i32 %85)
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %88 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @BLK_MQ_REQ_RESERVED, align 4
  %93 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @__nvme_submit_sync_cmd(i32 %89, %struct.nvme_command* %8, %union.nvme_result* %10, %struct.nvmf_connect_data* %90, i32 24, i32 0, i32 %91, i32 1, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %49
  %100 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = bitcast %union.nvme_result* %10 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %106 = call i32 @nvmf_log_connect_error(%struct.nvme_ctrl* %100, i32 %101, i32 %104, %struct.nvme_command* %8, %struct.nvmf_connect_data* %105)
  br label %107

107:                                              ; preds = %99, %49
  %108 = load %struct.nvmf_connect_data*, %struct.nvmf_connect_data** %9, align 8
  %109 = call i32 @kfree(%struct.nvmf_connect_data* %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %46
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.nvmf_connect_data* @kzalloc(i32, i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @__nvme_submit_sync_cmd(i32, %struct.nvme_command*, %union.nvme_result*, %struct.nvmf_connect_data*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvmf_log_connect_error(%struct.nvme_ctrl*, i32, i32, %struct.nvme_command*, %struct.nvmf_connect_data*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.nvmf_connect_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
