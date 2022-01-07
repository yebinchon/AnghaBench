; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_set_contention_vals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_set_contention_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@NUM_EDCA_QUEUES = common dso_local global i64 0, align 8
@WMM_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@SIFS_DURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*)* @rsi_set_contention_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_set_contention_vals(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  %3 = alloca i64, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %55, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NUM_EDCA_QUEUES, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %4
  %9 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %10 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 2
  %17 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %16, %23
  %25 = load i32, i32* @WMM_SHORT_SLOT_TIME, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SIFS_DURATION, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %31 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 %29, i64* %35, align 8
  %36 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %37 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %44 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 %42, i64* %48, align 8
  %49 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %50 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %3, align 8
  br label %4

58:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
