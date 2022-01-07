; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_qdio_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_qdio_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32, i32**, i32, %struct.qeth_card* }

@.str = private unnamed_addr constant [9 x i8] c"allcqdbf\00", align 1
@QETH_QDIO_UNINITIALIZED = common dso_local global i64 0, align 8
@QETH_QDIO_ALLOCATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"inq\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"outq %i\00", align 1
@qeth_tx_completion_timer = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_alloc_qdio_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_alloc_qdio_queues(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* @QETH_QDIO_UNINITIALIZED, align 8
  %13 = load i32, i32* @QETH_QDIO_ALLOCATED, align 4
  %14 = call i64 @atomic_cmpxchg(i32* %11, i64 %12, i32 %13)
  %15 = load i64, i64* @QETH_QDIO_UNINITIALIZED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %184

18:                                               ; preds = %1
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %19, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32* (...) @qeth_alloc_qdio_queue()
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32* %21, i32** %24, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %176

31:                                               ; preds = %18
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = call i64 @qeth_alloc_buffer_pool(%struct.qeth_card* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %167

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %96, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %37
  %45 = call %struct.qeth_qdio_out_q* (...) @qeth_alloc_output_queue()
  store %struct.qeth_qdio_out_q* %45, %struct.qeth_qdio_out_q** %6, align 8
  %46 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %47 = icmp ne %struct.qeth_qdio_out_q* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %142

49:                                               ; preds = %44
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %50, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %54 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %53, i32 2, %struct.qeth_qdio_out_q** %6, i32 8)
  %55 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %56 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %59, i64 %61
  store %struct.qeth_qdio_out_q* %55, %struct.qeth_qdio_out_q** %62, align 8
  %63 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %64 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %65 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %64, i32 0, i32 3
  store %struct.qeth_card* %63, %struct.qeth_card** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %68 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %70 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %69, i32 0, i32 2
  %71 = load i32, i32* @qeth_tx_completion_timer, align 4
  %72 = call i32 @timer_setup(i32* %70, i32 %71, i32 0)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %92, %49
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %79 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @WARN_ON(i32* %84)
  %86 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %105

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %73

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %37

99:                                               ; preds = %37
  %100 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %101 = call i64 @qeth_alloc_cq(%struct.qeth_card* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %142

104:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %184

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %109, %105
  %107 = load i32, i32* %5, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %113 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %116, i64 %118
  %120 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %119, align 8
  %121 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @kmem_cache_free(i32 %112, i32* %126)
  %128 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %131, i64 %133
  %135 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %134, align 8
  %136 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  store i32* null, i32** %140, align 8
  br label %106

141:                                              ; preds = %106
  br label %142

142:                                              ; preds = %141, %103, %48
  br label %143

143:                                              ; preds = %146, %142
  %144 = load i32, i32* %4, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %148 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %150, i64 %153
  %155 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %154, align 8
  %156 = call i32 @qeth_free_output_queue(%struct.qeth_qdio_out_q* %155)
  %157 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %158 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %160, i64 %162
  store %struct.qeth_qdio_out_q* null, %struct.qeth_qdio_out_q** %163, align 8
  br label %143

164:                                              ; preds = %143
  %165 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %166 = call i32 @qeth_free_buffer_pool(%struct.qeth_card* %165)
  br label %167

167:                                              ; preds = %164, %35
  %168 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %169 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @qeth_free_qdio_queue(i32* %171)
  %173 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %174 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %167, %30
  %177 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %178 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i64, i64* @QETH_QDIO_UNINITIALIZED, align 8
  %181 = call i32 @atomic_set(i32* %179, i64 %180)
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %176, %104, %17
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i32* @qeth_alloc_qdio_queue(...) #1

declare dso_local i64 @qeth_alloc_buffer_pool(%struct.qeth_card*) #1

declare dso_local %struct.qeth_qdio_out_q* @qeth_alloc_output_queue(...) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, %struct.qeth_qdio_out_q**, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i64 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i64 @qeth_alloc_cq(%struct.qeth_card*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

declare dso_local i32 @qeth_free_output_queue(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @qeth_free_buffer_pool(%struct.qeth_card*) #1

declare dso_local i32 @qeth_free_qdio_queue(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
