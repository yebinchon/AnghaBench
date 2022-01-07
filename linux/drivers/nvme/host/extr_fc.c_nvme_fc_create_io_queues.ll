; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32, i64, i32, %struct.nvmf_ctrl_options*, i32 }
%struct.nvmf_ctrl_options = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.nvme_fc_ctrl*, i32, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nvme_fcp_op_w_sgl = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"set_queue_count failed: %d\0A\00", align 1
@nvme_fc_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@priv = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_create_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_create_io_queues(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  %7 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %10 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %9, align 8
  store %struct.nvmf_ctrl_options* %10, %struct.nvmf_ctrl_options** %4, align 8
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %12 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (...) @num_online_cpus()
  %15 = call i32 @min(i32 %13, i32 %14)
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @min(i32 %15, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %24, i32 0, i32 1
  %26 = call i32 @nvme_set_queue_count(%struct.TYPE_10__* %25, i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %181

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  %40 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %181

46:                                               ; preds = %37
  %47 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %48 = call i32 @nvme_fc_init_io_queues(%struct.nvme_fc_ctrl* %47)
  %49 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %49, i32 0, i32 2
  %51 = call i32 @memset(%struct.TYPE_11__* %50, i32 0, i32 48)
  %52 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 8
  store i32* @nvme_fc_mq_ops, i32** %54, align 8
  %55 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %57, align 8
  %59 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %62 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 7
  store i32 %60, i32* %63, align 4
  %64 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %75 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @priv, align 4
  %79 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @struct_size(%struct.nvme_fcp_op_w_sgl* null, i32 %78, i32 %85)
  %87 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %91 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  store %struct.nvme_fc_ctrl* %90, %struct.nvme_fc_ctrl** %93, align 8
  %94 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %95 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub i32 %97, 1
  %99 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %103 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %107 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %106, i32 0, i32 2
  %108 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %46
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %181

113:                                              ; preds = %46
  %114 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %115 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %114, i32 0, i32 2
  %116 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %117 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %118, align 8
  %119 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %120 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %119, i32 0, i32 2
  %121 = call i32 @blk_mq_init_queue(%struct.TYPE_11__* %120)
  %122 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %123 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %126 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %113
  %132 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %133 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PTR_ERR(i32 %135)
  store i32 %136, i32* %6, align 4
  br label %171

137:                                              ; preds = %113
  %138 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %139 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %140 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  %144 = call i32 @nvme_fc_create_hw_io_queues(%struct.nvme_fc_ctrl* %138, i64 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %165

148:                                              ; preds = %137
  %149 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %150 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %151 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  %155 = call i32 @nvme_fc_connect_io_queues(%struct.nvme_fc_ctrl* %149, i64 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %162

159:                                              ; preds = %148
  %160 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %161 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  store i32 0, i32* %2, align 4
  br label %181

162:                                              ; preds = %158
  %163 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %164 = call i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl* %163)
  br label %165

165:                                              ; preds = %162, %147
  %166 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %167 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @blk_cleanup_queue(i32 %169)
  br label %171

171:                                              ; preds = %165, %131
  %172 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %173 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %172, i32 0, i32 2
  %174 = call i32 @blk_mq_free_tag_set(%struct.TYPE_11__* %173)
  %175 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %176 = call i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl* %175)
  %177 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %178 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %179, align 8
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %171, %159, %111, %45, %29
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @nvme_set_queue_count(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @nvme_fc_init_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.nvme_fcp_op_w_sgl*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__*) #1

declare dso_local i32 @blk_mq_init_queue(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @nvme_fc_create_hw_io_queues(%struct.nvme_fc_ctrl*, i64) #1

declare dso_local i32 @nvme_fc_connect_io_queues(%struct.nvme_fc_ctrl*, i64) #1

declare dso_local i32 @nvme_fc_delete_hw_io_queues(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_11__*) #1

declare dso_local i32 @nvme_fc_free_io_queues(%struct.nvme_fc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
