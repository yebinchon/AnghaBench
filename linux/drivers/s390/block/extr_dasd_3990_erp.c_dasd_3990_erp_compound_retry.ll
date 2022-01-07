; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_compound_retry(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 25
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, 3
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
  ]

10:                                               ; preds = %2
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %15 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %14, i32 0, i32 0
  store i32 2, i32* %15, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 0
  store i32 10, i32* %18, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 0
  store i32 256, i32* %21, align 8
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %19, %16, %13, %10
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 1
  %27 = bitcast {}** %26 to void (%struct.dasd_ccw_req*, i8*)**
  store void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_retry, void (%struct.dasd_ccw_req*, i8*)** %27, align 8
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
