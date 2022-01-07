; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_in_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_in_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.dasd_ccw_req* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*)* @dasd_3990_erp_in_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_in_erp(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %7, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 0
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %11 = icmp eq %struct.dasd_ccw_req* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %2, align 8
  br label %41

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %33, %13
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 0
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %17, align 8
  %19 = call i32 @dasd_3990_erp_error_match(%struct.dasd_ccw_req* %15, %struct.dasd_ccw_req* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  store %struct.dasd_ccw_req* %20, %struct.dasd_ccw_req** %5, align 8
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %22, align 8
  store %struct.dasd_ccw_req* %23, %struct.dasd_ccw_req** %3, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 0
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %26, align 8
  %28 = icmp ne %struct.dasd_ccw_req* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %14, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %2, align 8
  br label %41

39:                                               ; preds = %35
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  store %struct.dasd_ccw_req* %40, %struct.dasd_ccw_req** %2, align 8
  br label %41

41:                                               ; preds = %39, %38, %12
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %42
}

declare dso_local i32 @dasd_3990_erp_error_match(%struct.dasd_ccw_req*, %struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
