; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_stop_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_stop_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@stop_polling = common dso_local global i32 0, align 4
@SLSB_P_INPUT_NOT_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @qdio_stop_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_stop_polling(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %3 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %4 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %12 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %16 = load i32, i32* @stop_polling, align 4
  %17 = call i32 @qperf_inc(%struct.qdio_q* %15, i32 %16)
  %18 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %19 = call i64 @is_qebsm(%struct.qdio_q* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %10
  %22 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %23 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %24 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %29 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %30 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @set_buf_states(%struct.qdio_q* %22, i32 %27, i32 %28, i64 %33)
  %35 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %36 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %48

39:                                               ; preds = %10
  %40 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %41 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %42 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %47 = call i32 @set_buf_state(%struct.qdio_q* %40, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %9, %39, %21
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i32, i64) #1

declare dso_local i32 @set_buf_state(%struct.qdio_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
