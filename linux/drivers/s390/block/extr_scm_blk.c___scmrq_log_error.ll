; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c___scmrq_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c___scmrq_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i64, i64, %struct.aob* }
%struct.aob = type { i32 }

@BLK_STS_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Request timeout\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Request error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Retry request\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"An I/O operation to SCM failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_request*)* @__scmrq_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scmrq_log_error(%struct.scm_request* %0) #0 {
  %2 = alloca %struct.scm_request*, align 8
  %3 = alloca %struct.aob*, align 8
  store %struct.scm_request* %0, %struct.scm_request** %2, align 8
  %4 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %5 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %4, i32 0, i32 2
  %6 = load %struct.aob*, %struct.aob** %5, align 8
  store %struct.aob* %6, %struct.aob** %3, align 8
  %7 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %8 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BLK_STS_TIMEOUT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @SCM_LOG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %19

14:                                               ; preds = %1
  %15 = call i32 @SCM_LOG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.aob*, %struct.aob** %3, align 8
  %17 = getelementptr inbounds %struct.aob, %struct.aob* %16, i32 0, i32 0
  %18 = call i32 @SCM_LOG_HEX(i32 1, i32* %17, i32 4)
  br label %19

19:                                               ; preds = %14, %12
  %20 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %21 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @SCM_LOG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.scm_request*, %struct.scm_request** %2, align 8
  %28 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @SCM_LOG(i32, i8*) #1

declare dso_local i32 @SCM_LOG_HEX(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
