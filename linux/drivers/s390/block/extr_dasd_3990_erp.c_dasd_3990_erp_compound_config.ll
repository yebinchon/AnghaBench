; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_compound_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { {}*, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_SENSE_BIT_1 = common dso_local global i8 0, align 1
@DASD_SENSE_BIT_2 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_3990_erp_compound_config(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 25
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* @DASD_SENSE_BIT_1, align 1
  %11 = sext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 26
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @DASD_SENSE_BIT_2, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %24, i32 0, i32 1
  %26 = load %struct.dasd_device*, %struct.dasd_device** %25, align 8
  store %struct.dasd_device* %26, %struct.dasd_device** %5, align 8
  %27 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %23, %14, %2
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to void (%struct.dasd_ccw_req*, i8*)**
  store void (%struct.dasd_ccw_req*, i8*)* @dasd_3990_erp_compound_config, void (%struct.dasd_ccw_req*, i8*)** %35, align 8
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
