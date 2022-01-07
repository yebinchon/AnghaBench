; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_msgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_init_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i32, %struct.esas2r_request }
%struct.esas2r_request = type { i64, i32, i32 }

@esas2r_dummy_complete = common dso_local global i32 0, align 4
@ESAS2R_INIT_MSG_REINIT = common dso_local global i64 0, align 8
@RS_PENDING = common dso_local global i64 0, align 8
@RS_SUCCESS = common dso_local global i64 0, align 8
@RF_FAILURE_OK = common dso_local global i32 0, align 4
@RS_TIMEOUT = common dso_local global i64 0, align 8
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"init message %x failed (%x, %x)\00", align 1
@ESAS2R_INIT_MSG_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_init_msgs(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 2
  store %struct.esas2r_request* %7, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = call i32 @esas2r_rq_init_request(%struct.esas2r_request* %8, %struct.esas2r_adapter* %9)
  %11 = load i32, i32* @esas2r_dummy_complete, align 4
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @ESAS2R_INIT_MSG_REINIT, align 8
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  br label %23

23:                                               ; preds = %76, %22
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %92

28:                                               ; preds = %23
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %30 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %31 = call i64 @esas2r_format_init_msg(%struct.esas2r_adapter* %29, %struct.esas2r_request* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %55
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %41 = call i32 @esas2r_start_vda_request(%struct.esas2r_adapter* %39, %struct.esas2r_request* %40)
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %47 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %48 = call i32 @esas2r_wait_request(%struct.esas2r_adapter* %46, %struct.esas2r_request* %47)
  %49 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %50 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RS_PENDING, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %56

55:                                               ; preds = %34
  br label %34

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %59 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RS_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %65 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RF_FAILURE_OK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %72 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RS_TIMEOUT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %57
  br label %23

77:                                               ; preds = %70, %63
  %78 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %83 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %86 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @esas2r_log(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %84, i32 %87)
  %89 = load i64, i64* @ESAS2R_INIT_MSG_START, align 8
  %90 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %77, %23
  %93 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %94 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %95 = call i32 @esas2r_rq_destroy_request(%struct.esas2r_request* %93, %struct.esas2r_adapter* %94)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @esas2r_rq_init_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

declare dso_local i64 @esas2r_format_init_msg(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esas2r_start_vda_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_wait_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_log(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @esas2r_rq_destroy_request(%struct.esas2r_request*, %struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
