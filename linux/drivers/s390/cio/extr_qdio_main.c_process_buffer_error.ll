; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_process_buffer_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_process_buffer_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_4__**, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SLSB_P_INPUT_NOT_INIT = common dso_local global i8 0, align 1
@SLSB_P_OUTPUT_NOT_INIT = common dso_local global i8 0, align 1
@QDIO_ERROR_SLSB_STATE = common dso_local global i32 0, align 4
@QDIO_IQDIO_QFMT = common dso_local global i64 0, align 8
@target_full = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OUTFULL FTC:%02x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%4x BUF ERROR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"IN:%2d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"OUT:%2d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"FTC:%3d C:%3d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"F14:%2x F15:%2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32, i32)* @process_buffer_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_buffer_error(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %9 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8, i8* @SLSB_P_INPUT_NOT_INIT, align 1
  %14 = zext i8 %13 to i32
  br label %18

15:                                               ; preds = %3
  %16 = load i8, i8* @SLSB_P_OUTPUT_NOT_INIT, align 1
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load i32, i32* @QDIO_ERROR_SLSB_STATE, align 4
  %22 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %25 = call i64 @queue_type(%struct.qdio_q* %24)
  %26 = load i64, i64* @QDIO_IQDIO_QFMT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %18
  %29 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %35 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 15
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %49 = load i32, i32* @target_full, align 4
  %50 = call i32 @qperf_inc(%struct.qdio_q* %48, i32 %49)
  %51 = load i32, i32* @DBF_INFO, align 4
  %52 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %53 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @DBF_DEV_EVENT(i32 %51, i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %99

57:                                               ; preds = %33, %28, %18
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = call i32 @SCH_NO(%struct.qdio_q* %58)
  %60 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %67 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %68 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* %66, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %75 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 14
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %87 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 15
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %97)
  br label %99

99:                                               ; preds = %57, %47
  %100 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i8, i8* %7, align 1
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @set_buf_states(%struct.qdio_q* %100, i32 %101, i8 zeroext %102, i32 %103)
  ret void
}

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
