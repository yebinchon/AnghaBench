; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_core_determine_hal_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_core_determine_hal_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i32, i64, i64, i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@INVALID_QUEUE = common dso_local global i64 0, align 8
@MGMT_BEACON_Q = common dso_local global i64 0, align 8
@MGMT_SOFT_Q = common dso_local global i64 0, align 8
@NUM_EDCA_QUEUES = common dso_local global i64 0, align 8
@VO_Q = common dso_local global i64 0, align 8
@VI_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsi_common*)* @rsi_core_determine_hal_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsi_core_determine_hal_queue(%struct.rsi_common* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rsi_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* @INVALID_QUEUE, align 8
  store i64 %8, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %10 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @MGMT_BEACON_Q, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i64 @skb_queue_len(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @MGMT_BEACON_Q, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %2, align 8
  br label %168

19:                                               ; preds = %1
  %20 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %21 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @MGMT_SOFT_Q, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i64 @skb_queue_len(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %29 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @MGMT_SOFT_Q, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %2, align 8
  br label %168

36:                                               ; preds = %19
  %37 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %38 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %2, align 8
  br label %168

43:                                               ; preds = %36
  %44 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %45 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %50 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %54 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %2, align 8
  br label %168

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %135, %56
  store i32 0, i32* %4, align 4
  %58 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %59 = call i64 @rsi_determine_min_weight_queue(%struct.rsi_common* %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %107, %57
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @NUM_EDCA_QUEUES, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  %66 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %67 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i64 @skb_queue_len(i32* %70)
  store i64 %71, i64* %5, align 8
  %72 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %73 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %65
  %81 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %82 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %89 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %80
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %97 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %104 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %7, align 8
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %95, %92, %80, %65
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %61

110:                                              ; preds = %61
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @NUM_EDCA_QUEUES, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %116 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %114, %110
  %122 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %123 = call i32 @rsi_recalculate_weights(%struct.rsi_common* %122)
  store i32 %123, i32* %4, align 4
  %124 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %125 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = call i64 @skb_queue_len(i32* %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %57

136:                                              ; preds = %132
  %137 = load i64, i64* @INVALID_QUEUE, align 8
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  store i64 %138, i64* %2, align 8
  br label %168

139:                                              ; preds = %121
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %142 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %144 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %6, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = call i64 @skb_queue_len(i32* %147)
  store i64 %148, i64* %5, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @VO_Q, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %139
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @VI_Q, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152, %139
  %157 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @rsi_get_num_pkts_dequeue(%struct.rsi_common* %157, i64 %158)
  %160 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %161 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %163 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %156, %152
  %167 = load i64, i64* %6, align 8
  store i64 %167, i64* %2, align 8
  br label %168

168:                                              ; preds = %166, %136, %48, %41, %34, %16
  %169 = load i64, i64* %2, align 8
  ret i64 %169
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @rsi_determine_min_weight_queue(%struct.rsi_common*) #1

declare dso_local i32 @rsi_recalculate_weights(%struct.rsi_common*) #1

declare dso_local i32 @rsi_get_num_pkts_dequeue(%struct.rsi_common*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
