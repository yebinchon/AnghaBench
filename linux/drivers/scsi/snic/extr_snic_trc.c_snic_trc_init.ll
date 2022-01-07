; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_trc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_trc.c_snic_trc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.snic_trc }
%struct.snic_trc = type { i32, i32, i64, i64, i32, %struct.snic_trc_data* }
%struct.snic_trc_data = type { i32 }

@snic_glob = common dso_local global %struct.TYPE_2__* null, align 8
@snic_trace_max_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to Allocate Trace Buffer Size. %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Trace Facility not enabled.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNIC_TRC_ENTRY_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Trace Facility Enabled.\0A Trace Buffer SZ %lu Pages.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_trc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.snic_trc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @snic_glob, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.snic_trc* %7, %struct.snic_trc** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @snic_trace_max_pages, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @vzalloc(i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, ...) @SNIC_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @SNIC_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %1, align 4
  br label %47

22:                                               ; preds = %0
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.snic_trc_data*
  %25 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %26 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %25, i32 0, i32 5
  store %struct.snic_trc_data* %24, %struct.snic_trc_data** %26, align 8
  %27 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %28 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = call i32 (...) @snic_trc_debugfs_init()
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SNIC_TRC_ENTRY_SZ, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %35 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %37 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %39 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.snic_trc*, %struct.snic_trc** %2, align 8
  %41 = getelementptr inbounds %struct.snic_trc, %struct.snic_trc* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sdiv i32 %42, %43
  %45 = call i32 @SNIC_INFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %22, %15
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @SNIC_ERR(i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snic_trc_debugfs_init(...) #1

declare dso_local i32 @SNIC_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
