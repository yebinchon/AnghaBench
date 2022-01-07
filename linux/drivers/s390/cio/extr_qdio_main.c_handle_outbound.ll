; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_handle_outbound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_handle_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@outbound_call = common dso_local global i32 0, align 4
@SLSB_CU_OUTPUT_PRIMED = common dso_local global i8 0, align 1
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@outbound_queue_full = common dso_local global i32 0, align 4
@QDIO_FLAG_PCI_OUT = common dso_local global i32 0, align 4
@pci_request_int = common dso_local global i32 0, align 4
@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@fast_requeue = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32, i32)* @handle_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_outbound(%struct.qdio_q* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %16 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  store i8 0, i8* %11, align 1
  store i32 0, i32* %13, align 4
  %20 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %21 = load i32, i32* @outbound_call, align 4
  %22 = call i32 @qperf_inc(%struct.qdio_q* %20, i32 %21)
  %23 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8, i8* @SLSB_CU_OUTPUT_PRIMED, align 1
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @set_buf_states(%struct.qdio_q* %23, i32 %24, i8 zeroext %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 2
  %31 = call i32 @atomic_add_return(i32 %28, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %37 = load i32, i32* @outbound_queue_full, align 4
  %38 = call i32 @qperf_inc(%struct.qdio_q* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @QDIO_FLAG_PCI_OUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %46 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %50 = load i32, i32* @pci_request_int, align 4
  %51 = call i32 @qperf_inc(%struct.qdio_q* %49, i32 %50)
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %54 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %59 = call i64 @queue_type(%struct.qdio_q* %58)
  %60 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  store i64 0, i64* %14, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %67 = call i32 @multicast_outbound(%struct.qdio_q* %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON_ONCE(i32 %72)
  %74 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %75 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %82 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @qdio_aob_for_buffer(%struct.TYPE_6__* %83, i32 %84)
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %80, %70
  %87 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %87, i64 %88)
  store i32 %89, i32* %13, align 4
  br label %122

90:                                               ; preds = %57
  %91 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %92 = call i64 @need_siga_sync(%struct.qdio_q* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %96 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %95)
  store i32 %96, i32* %13, align 4
  br label %121

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @prev_buf(i32 %103)
  %105 = call i64 @get_buf_state(%struct.qdio_q* %102, i32 %104, i8* %11, i32 0)
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @SLSB_CU_OUTPUT_PRIMED, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %115 = load i32, i32* @fast_requeue, align 4
  %116 = call i32 @qperf_inc(%struct.qdio_q* %114, i32 %115)
  br label %120

117:                                              ; preds = %107, %101, %97
  %118 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %119 = call i32 @qdio_kick_outbound_q(%struct.qdio_q* %118, i64 0)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %86
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %5, align 4
  br label %167

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp uge i32 %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131, %127
  %135 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %136 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %135)
  br label %165

137:                                              ; preds = %131
  %138 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %139 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = call i32 @timer_pending(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %164, label %144

144:                                              ; preds = %137
  %145 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %146 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @likely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %144
  %156 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %157 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i64, i64* @jiffies, align 8
  %161 = load i64, i64* @HZ, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @mod_timer(i32* %159, i64 %162)
  br label %164

164:                                              ; preds = %155, %144, %137
  br label %165

165:                                              ; preds = %164, %134
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %125
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i8 zeroext, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @multicast_outbound(%struct.qdio_q*) #1

declare dso_local i64 @qdio_aob_for_buffer(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @qdio_kick_outbound_q(%struct.qdio_q*, i64) #1

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i64 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i32 @prev_buf(i32) #1

declare dso_local i32 @qdio_tasklet_schedule(%struct.qdio_q*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
