; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_report_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_report_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_target*, %struct.esas2r_target*, i32 }
%struct.esas2r_target = type { i64, i64 }

@AF_DISC_PENDING = common dso_local global i32 0, align 4
@TS_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"targ_db_report_changes:%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"state:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_targ_db_report_changes(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_target*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %6 = call i32 (...) @esas2r_trace_enter()
  %7 = load i32, i32* @AF_DISC_PENDING, align 4
  %8 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %8, i32 0, i32 3
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @esas2r_trace_exit()
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 2
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %16, align 8
  store %struct.esas2r_target* %17, %struct.esas2r_target** %3, align 8
  br label %18

18:                                               ; preds = %65, %14
  %19 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 1
  %22 = load %struct.esas2r_target*, %struct.esas2r_target** %21, align 8
  %23 = icmp ult %struct.esas2r_target* %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load i64, i64* @TS_INVALID, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %34 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %39 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %42 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i64 %40, i64* %5, align 8
  br label %43

43:                                               ; preds = %37, %24
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %44, i32 0, i32 0
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TS_INVALID, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %43
  %52 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %53 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %54 = call i64 @esas2r_targ_get_id(%struct.esas2r_target* %52, %struct.esas2r_adapter* %53)
  %55 = call i32 @esas2r_trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @esas2r_trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %59 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %61 = call i64 @esas2r_targ_get_id(%struct.esas2r_target* %59, %struct.esas2r_adapter* %60)
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @esas2r_target_state_changed(%struct.esas2r_adapter* %58, i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %51, %43
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %67 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %66, i32 1
  store %struct.esas2r_target* %67, %struct.esas2r_target** %3, align 8
  br label %18

68:                                               ; preds = %18
  %69 = call i32 (...) @esas2r_trace_exit()
  br label %70

70:                                               ; preds = %68, %12
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace(i8*, i64) #1

declare dso_local i64 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_target_state_changed(%struct.esas2r_adapter*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
