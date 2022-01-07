; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_siga_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_siga_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@QDIO_SIGA_SYNC = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"siga-s:%1d\00", align 1
@siga_sync = common dso_local global i32 0, align 4
@QDIO_SIGA_QEBSM_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x SIGA-S:%2d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32)* @qdio_siga_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_siga_sync(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %11 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @QDIO_SIGA_SYNC, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @DBF_INFO, align 4
  %18 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %19 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %22 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DBF_DEV_EVENT(i32 %17, %struct.TYPE_2__* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %26 = load i32, i32* @siga_sync, align 4
  %27 = call i32 @qperf_inc(%struct.qdio_q* %25, i32 %26)
  %28 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %29 = call i64 @is_qebsm(%struct.qdio_q* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i32, i32* @QDIO_SIGA_QEBSM_FLAG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %31, %3
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @do_siga_sync(i64 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %51 = call i32 @SCH_NO(%struct.qdio_q* %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  ret i32 %62
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @do_siga_sync(i64, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, i32) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
