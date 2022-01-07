; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_inbound_q_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_inbound_q_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SLSB_P_INPUT_PRIMED = common dso_local global i8 0, align 1
@SLSB_P_INPUT_ERROR = common dso_local global i8 0, align 1
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@QDIO_INPUT_THRESHOLD = common dso_local global i64 0, align 8
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"in done:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32)* @qdio_inbound_q_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_inbound_q_done(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %7 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %8 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %7, i32 0, i32 2
  %9 = call i32 @atomic_read(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %14 = call i64 @need_siga_sync(%struct.qdio_q* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %18 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_buf_state(%struct.qdio_q* %20, i32 %21, i8* %6, i32 0)
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @SLSB_P_INPUT_PRIMED, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @SLSB_P_INPUT_ERROR, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %19
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @is_thinint_irq(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %64

42:                                               ; preds = %35
  %43 = load i64, i64* @MACHINE_IS_VM, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %64

46:                                               ; preds = %42
  %47 = call i64 (...) @get_tod_clock_fast()
  %48 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %49 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QDIO_INPUT_THRESHOLD, align 8
  %54 = add nsw i64 %52, %53
  %55 = icmp sgt i64 %47, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i32, i32* @DBF_INFO, align 4
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @DBF_DEV_EVENT(i32 %57, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %45, %41, %34, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @get_buf_state(%struct.qdio_q*, i32, i8*, i32) #1

declare dso_local i64 @is_thinint_irq(i32) #1

declare dso_local i64 @get_tod_clock_fast(...) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
