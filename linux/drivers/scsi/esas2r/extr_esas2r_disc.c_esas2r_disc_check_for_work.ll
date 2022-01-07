; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_check_for_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_check_for_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.esas2r_request }
%struct.esas2r_request = type { i64, i64, i32* }

@RS_STARTED = common dso_local global i64 0, align 8
@RQ_MAX_TIMEOUT = common dso_local global i64 0, align 8
@RS_TIMEOUT = common dso_local global i64 0, align 8
@RS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_disc_check_for_work(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  store %struct.esas2r_request* %5, %struct.esas2r_request** %3, align 8
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %7 = call i32 @esas2r_polled_interrupt(%struct.esas2r_adapter* %6)
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %9 = call i32 @esas2r_disc_start_waiting(%struct.esas2r_adapter* %8)
  %10 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %11 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RS_STARTED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %23 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RQ_MAX_TIMEOUT, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %29 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %30 = call i32 @esas2r_wait_request(%struct.esas2r_adapter* %28, %struct.esas2r_request* %29)
  %31 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %32 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RS_TIMEOUT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %39 = call i32 @esas2r_disc_abort(%struct.esas2r_adapter* %37, %struct.esas2r_request* %38)
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %41 = call i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter* %40)
  br label %60

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %21, %15
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %45 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RS_PENDING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %51 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RS_STARTED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %58 = load %struct.esas2r_request*, %struct.esas2r_request** %3, align 8
  %59 = call i32 @esas2r_disc_continue(%struct.esas2r_adapter* %57, %struct.esas2r_request* %58)
  br label %60

60:                                               ; preds = %56, %55, %36, %14
  ret void
}

declare dso_local i32 @esas2r_polled_interrupt(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_start_waiting(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_wait_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_disc_abort(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_local_reset_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_disc_continue(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
