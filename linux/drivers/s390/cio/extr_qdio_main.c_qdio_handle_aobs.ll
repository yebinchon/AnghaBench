; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_handle_aobs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_handle_aobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.qaob**, %struct.TYPE_4__* }
%struct.qaob = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SLSB_P_OUTPUT_PENDING = common dso_local global i8 0, align 1
@QDIO_OUTBUF_STATE_FLAG_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32, i32)* @qdio_handle_aobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_handle_aobs(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qaob*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %7, align 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %62, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @get_buf_state(%struct.qdio_q* %17, i32 %18, i8* %7, i32 0)
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @SLSB_P_OUTPUT_PENDING, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %16
  %26 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.qaob**, %struct.qaob*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qaob*, %struct.qaob** %30, i64 %32
  %34 = load %struct.qaob*, %struct.qaob** %33, align 8
  store %struct.qaob* %34, %struct.qaob** %10, align 8
  %35 = load %struct.qaob*, %struct.qaob** %10, align 8
  %36 = icmp eq %struct.qaob* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %62

38:                                               ; preds = %25
  %39 = load i32, i32* @QDIO_OUTBUF_STATE_FLAG_PENDING, align 4
  %40 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %41 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %39
  store i32 %50, i32* %48, align 4
  %51 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %52 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.qaob**, %struct.qaob*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.qaob*, %struct.qaob** %55, i64 %57
  store %struct.qaob* null, %struct.qaob** %58, align 8
  br label %59

59:                                               ; preds = %38, %16
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @next_buf(i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %37
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %12

65:                                               ; preds = %12
  ret void
}

declare dso_local i32 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
