; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_handle_inbound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_handle_inbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }

@inbound_call = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SLSB_CU_INPUT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32, i32)* @handle_inbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_inbound(%struct.qdio_q* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %12 = load i32, i32* @inbound_call, align 4
  %13 = call i32 @qperf_inc(%struct.qdio_q* %11, i32 %12)
  %14 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %15 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %104

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %31 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %104

34:                                               ; preds = %21
  %35 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @buf_in_between(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %34
  %45 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %46 = call i64 @is_qebsm(%struct.qdio_q* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @add_buf(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %55 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sub_buf(i32 %53, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %63 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %61
  store i64 %67, i64* %65, align 8
  %68 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %69 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %48
  %75 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %76 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %104

83:                                               ; preds = %48
  %84 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i8* @add_buf(i32 %88, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %93 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 8
  br label %101

96:                                               ; preds = %44
  %97 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %98 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %83
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %74, %25, %20
  %105 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @SLSB_CU_INPUT_EMPTY, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @set_buf_states(%struct.qdio_q* %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %112 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %111, i32 0, i32 0
  %113 = call i32 @atomic_add(i32 %110, i32* %112)
  %114 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %115 = call i64 @need_siga_in(%struct.qdio_q* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %119 = call i32 @qdio_siga_input(%struct.qdio_q* %118)
  store i32 %119, i32* %5, align 4
  br label %121

120:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @buf_in_between(i32, i32, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i8* @add_buf(i32, i32) #1

declare dso_local i32 @sub_buf(i32, i32) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @need_siga_in(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_input(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
