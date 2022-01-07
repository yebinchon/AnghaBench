; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_check_req_rsp_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_int.c_esas2r_check_req_rsp_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, i64*, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"rq->target_id: %d\00", align 1
@TS_LUN_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"add_sense_key=%x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"add_sense_qual=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_request*)* @esas2r_check_req_rsp_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_check_req_rsp_sense(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %15 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %20 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %22
  %26 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %27 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %32 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %35 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @memcpy(i64* %33, i64 %36, i64 %37)
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %41 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i64*
  %44 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %45 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %44, i32 0, i32 1
  store i64* %43, i64** %45, align 8
  br label %46

46:                                               ; preds = %39, %30
  %47 = load i64, i64* %6, align 8
  %48 = icmp sgt i64 %47, 12
  br i1 %48, label %49, label %85

49:                                               ; preds = %46
  %50 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %51 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64* %53, i64** %7, align 8
  %54 = call i32 (...) @esas2r_trace_enter()
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 12
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 63
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 13
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %66 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @esas2r_trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %70 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %71 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @TS_LUN_CHANGE, align 4
  %74 = call i32 @esas2r_target_state_changed(%struct.esas2r_adapter* %69, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %59, %49
  %76 = load i64*, i64** %7, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 12
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @esas2r_trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i64*, i64** %7, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 13
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @esas2r_trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = call i32 (...) @esas2r_trace_exit()
  br label %85

85:                                               ; preds = %75, %46
  br label %86

86:                                               ; preds = %85, %22
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %89 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  ret void
}

declare dso_local i32 @memcpy(i64*, i64, i64) #1

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i64) #1

declare dso_local i32 @esas2r_target_state_changed(%struct.esas2r_adapter*, i64, i32) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
