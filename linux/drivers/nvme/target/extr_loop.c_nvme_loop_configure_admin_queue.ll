; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_configure_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_configure_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { %struct.TYPE_9__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32, %struct.nvme_loop_ctrl* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.nvme_loop_ctrl*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, %struct.TYPE_11__* }

@nvme_loop_admin_mq_ops = common dso_local global i32 0, align 4
@NVME_AQ_MQ_TAG_DEPTH = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@BLK_MQ_F_NO_SCHED = common dso_local global i32 0, align 4
@NVME_LOOP_Q_LIVE = common dso_local global i32 0, align 4
@NVME_LOOP_MAX_SEGMENTS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_loop_ctrl*)* @nvme_loop_configure_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_configure_admin_queue(%struct.nvme_loop_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_loop_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %3, align 8
  %5 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %5, i32 0, i32 1
  %7 = call i32 @memset(%struct.TYPE_11__* %6, i32 0, i32 48)
  %8 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 8
  store i32* @nvme_loop_admin_mq_ops, i32** %10, align 8
  %11 = load i32, i32* @NVME_AQ_MQ_TAG_DEPTH, align 4
  %12 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 7
  store i32 %11, i32* %14, align 4
  %15 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 2, i32* %17, align 8
  %18 = load i32, i32* @NUMA_NO_NODE, align 4
  %19 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %31 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  store %struct.nvme_loop_ctrl* %30, %struct.nvme_loop_ctrl** %33, align 8
  %34 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %38 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %39 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @BLK_MQ_F_NO_SCHED, align 4
  %42 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %46 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store %struct.nvme_loop_ctrl* %45, %struct.nvme_loop_ctrl** %50, align 8
  %51 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @nvmet_sq_init(i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %1
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %180

61:                                               ; preds = %1
  %62 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %65, i32 0, i32 1
  %67 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %172

71:                                               ; preds = %61
  %72 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %73 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %72, i32 0, i32 1
  %74 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %76, align 8
  %77 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %77, i32 0, i32 1
  %79 = call i8* @blk_mq_init_queue(%struct.TYPE_11__* %78)
  %80 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  %83 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %84 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %91 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %4, align 4
  br label %168

95:                                               ; preds = %71
  %96 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %97 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %96, i32 0, i32 1
  %98 = call i8* @blk_mq_init_queue(%struct.TYPE_11__* %97)
  %99 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %100 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  store i8* %98, i8** %101, align 8
  %102 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %103 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %110 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %4, align 4
  br label %162

114:                                              ; preds = %95
  %115 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %116 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %115, i32 0, i32 2
  %117 = call i32 @nvmf_connect_admin_queue(%struct.TYPE_10__* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %156

121:                                              ; preds = %114
  %122 = load i32, i32* @NVME_LOOP_Q_LIVE, align 4
  %123 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %124 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = call i32 @set_bit(i32 %122, i32* %127)
  %129 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %130 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %129, i32 0, i32 2
  %131 = call i32 @nvme_enable_ctrl(%struct.TYPE_10__* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %156

135:                                              ; preds = %121
  %136 = load i32, i32* @NVME_LOOP_MAX_SEGMENTS, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @PAGE_SHIFT, align 4
  %139 = sub nsw i32 %138, 9
  %140 = shl i32 %137, %139
  %141 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %142 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %145 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @blk_mq_unquiesce_queue(i8* %147)
  %149 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %150 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %149, i32 0, i32 2
  %151 = call i32 @nvme_init_identify(%struct.TYPE_10__* %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %156

155:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %180

156:                                              ; preds = %154, %134, %120
  %157 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %158 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @blk_cleanup_queue(i8* %160)
  br label %162

162:                                              ; preds = %156, %108
  %163 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %164 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @blk_cleanup_queue(i8* %166)
  br label %168

168:                                              ; preds = %162, %89
  %169 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %170 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %169, i32 0, i32 1
  %171 = call i32 @blk_mq_free_tag_set(%struct.TYPE_11__* %170)
  br label %172

172:                                              ; preds = %168, %70
  %173 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %174 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = call i32 @nvmet_sq_destroy(i32* %177)
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %172, %155, %59
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @nvmet_sq_init(i32*) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_11__*) #1

declare dso_local i8* @blk_mq_init_queue(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @nvmf_connect_admin_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nvme_enable_ctrl(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i8*) #1

declare dso_local i32 @nvme_init_identify(%struct.TYPE_10__*) #1

declare dso_local i32 @blk_cleanup_queue(i8*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_11__*) #1

declare dso_local i32 @nvmet_sq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
