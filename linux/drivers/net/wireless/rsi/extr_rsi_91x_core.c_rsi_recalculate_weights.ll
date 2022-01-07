; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_recalculate_weights.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_recalculate_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i64, i32*, %struct.wmm_qinfo* }
%struct.wmm_qinfo = type { i32, i64, i64 }

@NUM_EDCA_QUEUES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_common*)* @rsi_recalculate_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_recalculate_weights(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  %3 = alloca %struct.wmm_qinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %7 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %8 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %7, i32 0, i32 2
  %9 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %8, align 8
  store %struct.wmm_qinfo* %9, %struct.wmm_qinfo** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %82, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NUM_EDCA_QUEUES, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %85

14:                                               ; preds = %10
  %15 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %16 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i64 @skb_queue_len(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %14
  %24 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %24, i64 %25
  %27 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %23
  %31 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %31, i64 %32
  %34 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %37 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %41, i64 %42
  %44 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %47 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  br label %51

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %40
  %52 = phi i64 [ %49, %40 ], [ 0, %50 ]
  %53 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %53, i64 %54
  %56 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %55, i32 0, i32 1
  store i64 %52, i64* %56, align 8
  br label %71

57:                                               ; preds = %23
  %58 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %58, i64 %59
  %61 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %62, i64 %63
  %65 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %67, i64 %68
  %70 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %69, i32 0, i32 1
  store i64 %66, i64* %70, align 8
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %57, %51
  br label %81

72:                                               ; preds = %14
  %73 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %73, i64 %74
  %76 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.wmm_qinfo*, %struct.wmm_qinfo** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %77, i64 %78
  %80 = getelementptr inbounds %struct.wmm_qinfo, %struct.wmm_qinfo* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %71
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %10

85:                                               ; preds = %10
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
