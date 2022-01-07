; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, i32*, %struct.pscsi_plugin_task*, i32, i32, %struct.scatterlist* }
%struct.pscsi_plugin_task = type { i32* }
%struct.scatterlist = type { i32 }
%struct.pscsi_dev_virt = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.request = type { i32, %struct.se_cmd*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@REQ_OP_SCSI_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PSCSI: blk_get_request() failed\0A\00", align 1
@pscsi_req_done = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@PS_TIMEOUT_DISK = common dso_local global i32 0, align 4
@PS_TIMEOUT_OTHER = common dso_local global i32 0, align 4
@PS_RETRY = common dso_local global i32 0, align 4
@TCM_HEAD_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*)* @pscsi_execute_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pscsi_execute_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pscsi_dev_virt*, align 8
  %7 = alloca %struct.pscsi_plugin_task*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 6
  %12 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %12, %struct.scatterlist** %4, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.pscsi_dev_virt* @PSCSI_DEV(i32 %18)
  store %struct.pscsi_dev_virt* %19, %struct.pscsi_dev_virt** %6, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @scsi_command_size(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.pscsi_plugin_task* @kzalloc(i32 %26, i32 %27)
  store %struct.pscsi_plugin_task* %28, %struct.pscsi_plugin_task** %7, align 8
  %29 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %30 = icmp ne %struct.pscsi_plugin_task* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %32, i64* %2, align 8
  br label %154

33:                                               ; preds = %1
  %34 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 3
  store %struct.pscsi_plugin_task* %34, %struct.pscsi_plugin_task** %36, align 8
  %37 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %38 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @scsi_command_size(i32* %45)
  %47 = call i32 @memcpy(i32* %39, i32* %42, i32 %46)
  %48 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %49 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMA_TO_DEVICE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %33
  %59 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  br label %62

60:                                               ; preds = %33
  %61 = load i32, i32* @REQ_OP_SCSI_IN, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call %struct.request* @blk_get_request(i32 %52, i32 %63, i32 0)
  store %struct.request* %64, %struct.request** %8, align 8
  %65 = load %struct.request*, %struct.request** %8, align 8
  %66 = call i64 @IS_ERR(%struct.request* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %70, i64* %9, align 8
  br label %150

71:                                               ; preds = %62
  %72 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %73 = icmp ne %struct.scatterlist* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.request*, %struct.request** %8, align 8
  %79 = call i64 @pscsi_map_sg(%struct.se_cmd* %75, %struct.scatterlist* %76, i32 %77, %struct.request* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %147

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* @pscsi_req_done, align 4
  %86 = load %struct.request*, %struct.request** %8, align 8
  %87 = getelementptr inbounds %struct.request, %struct.request* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %89 = load %struct.request*, %struct.request** %8, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 1
  store %struct.se_cmd* %88, %struct.se_cmd** %90, align 8
  %91 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %92 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @scsi_command_size(i32* %93)
  %95 = load %struct.request*, %struct.request** %8, align 8
  %96 = call %struct.TYPE_4__* @scsi_req(%struct.request* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %99 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load %struct.request*, %struct.request** %8, align 8
  %103 = call %struct.TYPE_4__* @scsi_req(%struct.request* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32* %101, i32** %104, align 8
  %105 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %106 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TYPE_DISK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %84
  %113 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %114 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TYPE_ZBC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %112, %84
  %121 = load i32, i32* @PS_TIMEOUT_DISK, align 4
  %122 = load %struct.request*, %struct.request** %8, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %128

124:                                              ; preds = %112
  %125 = load i32, i32* @PS_TIMEOUT_OTHER, align 4
  %126 = load %struct.request*, %struct.request** %8, align 8
  %127 = getelementptr inbounds %struct.request, %struct.request* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @PS_RETRY, align 4
  %130 = load %struct.request*, %struct.request** %8, align 8
  %131 = call %struct.TYPE_4__* @scsi_req(%struct.request* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.pscsi_dev_virt*, %struct.pscsi_dev_virt** %6, align 8
  %134 = getelementptr inbounds %struct.pscsi_dev_virt, %struct.pscsi_dev_virt* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.request*, %struct.request** %8, align 8
  %139 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %140 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TCM_HEAD_TAG, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* @pscsi_req_done, align 4
  %146 = call i32 @blk_execute_rq_nowait(i32 %137, i32* null, %struct.request* %138, i32 %144, i32 %145)
  store i64 0, i64* %2, align 8
  br label %154

147:                                              ; preds = %82
  %148 = load %struct.request*, %struct.request** %8, align 8
  %149 = call i32 @blk_put_request(%struct.request* %148)
  br label %150

150:                                              ; preds = %147, %68
  %151 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %7, align 8
  %152 = call i32 @kfree(%struct.pscsi_plugin_task* %151)
  %153 = load i64, i64* %9, align 8
  store i64 %153, i64* %2, align 8
  br label %154

154:                                              ; preds = %150, %128, %31
  %155 = load i64, i64* %2, align 8
  ret i64 %155
}

declare dso_local %struct.pscsi_dev_virt* @PSCSI_DEV(i32) #1

declare dso_local %struct.pscsi_plugin_task* @kzalloc(i32, i32) #1

declare dso_local i32 @scsi_command_size(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @pscsi_map_sg(%struct.se_cmd*, %struct.scatterlist*, i32, %struct.request*) #1

declare dso_local %struct.TYPE_4__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @kfree(%struct.pscsi_plugin_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
