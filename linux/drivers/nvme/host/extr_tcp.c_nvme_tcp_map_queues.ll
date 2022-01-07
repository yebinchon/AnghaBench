; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.TYPE_4__*, %struct.nvme_tcp_ctrl* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nvme_tcp_ctrl = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i64, i64 }

@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_POLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"mapped %d/%d/%d default/read/poll queues.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @nvme_tcp_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_map_queues(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.blk_mq_tag_set*, align 8
  %3 = alloca %struct.nvme_tcp_ctrl*, align 8
  %4 = alloca %struct.nvmf_ctrl_options*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %2, align 8
  %5 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %5, i32 0, i32 1
  %7 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %6, align 8
  store %struct.nvme_tcp_ctrl* %7, %struct.nvme_tcp_ctrl** %3, align 8
  %8 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %10, align 8
  store %struct.nvmf_ctrl_options* %11, %struct.nvmf_ctrl_options** %4, align 8
  %12 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %13 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %1
  %17 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @HCTX_TYPE_READ, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %30, i64* %36, align 8
  %37 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %38 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @HCTX_TYPE_READ, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* @HCTX_TYPE_READ, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 %48, i64* %54, align 8
  %55 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %62 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* @HCTX_TYPE_READ, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  br label %104

67:                                               ; preds = %16, %1
  %68 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %69 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %75 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %73, i64* %79, align 8
  %80 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %81 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %87 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %93 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* @HCTX_TYPE_READ, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i64 %91, i64* %97, align 8
  %98 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %99 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* @HCTX_TYPE_READ, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %67, %24
  %105 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %106 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %108
  %110 = call i32 @blk_mq_map_queues(%struct.TYPE_4__* %109)
  %111 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %112 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i64, i64* @HCTX_TYPE_READ, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  %116 = call i32 @blk_mq_map_queues(%struct.TYPE_4__* %115)
  %117 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %4, align 8
  %118 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %104
  %122 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %123 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %121
  %130 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %131 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %137 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i64 %135, i64* %141, align 8
  %142 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %143 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %149 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* @HCTX_TYPE_READ, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %147, %153
  %155 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %156 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i64 %154, i64* %160, align 8
  %161 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %162 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %164
  %166 = call i32 @blk_mq_map_queues(%struct.TYPE_4__* %165)
  br label %167

167:                                              ; preds = %129, %121, %104
  %168 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %169 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %173 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %179 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @HCTX_TYPE_READ, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %185 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* @HCTX_TYPE_POLL, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @dev_info(i32 %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %177, i64 %183, i64 %189)
  ret i32 0
}

declare dso_local i32 @blk_mq_map_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
