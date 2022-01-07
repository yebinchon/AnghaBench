; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_pm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_pm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.cw1200_txinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }

@CW1200_LINK_ID_AFTER_DTIM = common dso_local global i64 0, align 8
@CW1200_MAX_TID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.cw1200_txinfo*)* @cw1200_tx_h_pm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_tx_h_pm_state(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.cw1200_txinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %4, align 8
  %7 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CW1200_LINK_ID_AFTER_DTIM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 2
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %24, %17
  br label %32

32:                                               ; preds = %31, %12, %2
  %33 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %4, align 8
  %34 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %4, align 8
  %40 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CW1200_MAX_TID, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %47 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %4, align 8
  %50 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %4, align 8
  %59 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %65

65:                                               ; preds = %45, %38, %32
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  ret i32 %69
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
