; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_get_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_get_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@cal_data = common dso_local global %struct.TYPE_2__* null, align 8
@CONFIDENCE_OK = common dso_local global i64 0, align 8
@MAX_TARGET_RATIO = common dso_local global i32 0, align 4
@reduce_irq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_compensation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %59

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CONFIDENCE_OK, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CONFIDENCE_OK, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CONFIDENCE_OK, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %25
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %41, %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %49, %56
  %58 = sdiv i32 %57, 3
  store i32 %58, i32* %3, align 4
  br label %172

59:                                               ; preds = %25, %15, %6, %1
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @MAX_TARGET_RATIO, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %59
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CONFIDENCE_OK, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %64
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CONFIDENCE_OK, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %73
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sub nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CONFIDENCE_OK, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %83
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %99, %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sub nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %107, %114
  %116 = sdiv i32 %115, 3
  store i32 %116, i32* %3, align 4
  br label %171

117:                                              ; preds = %83, %73, %64, %59
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CONFIDENCE_OK, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %170

126:                                              ; preds = %117
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CONFIDENCE_OK, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %170

136:                                              ; preds = %126
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CONFIDENCE_OK, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %170

146:                                              ; preds = %136
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %152, %159
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cal_data, align 8
  %162 = load i32, i32* %2, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %160, %167
  %169 = sdiv i32 %168, 3
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %146, %136, %126, %117
  br label %171

171:                                              ; preds = %170, %93
  br label %172

172:                                              ; preds = %171, %35
  %173 = load i64, i64* @reduce_irq, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* %2, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %172
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* %2, align 4
  %180 = add i32 %178, %179
  %181 = load i32, i32* @MAX_TARGET_RATIO, align 4
  %182 = icmp uge i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i32, i32* @MAX_TARGET_RATIO, align 4
  %185 = load i32, i32* %2, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %183, %177
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
