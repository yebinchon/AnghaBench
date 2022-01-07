; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, {}* }

@DASD_SENSE_BIT_2 = common dso_local global i8 0, align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_compound_code(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 25
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @DASD_SENSE_BIT_2, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 28
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %28 [
    i32 23, label %18
    i32 37, label %21
  ]

18:                                               ; preds = %13
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %20 = call %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req* %19, i32 32)
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %3, align 8
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 5, %25
  %27 = call i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req* %24, i32 %26)
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %21, %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %32 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_code, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8*)** %33, align 8
  %34 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %34
}

declare dso_local %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @dasd_3990_erp_block_queue(%struct.dasd_ccw_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
