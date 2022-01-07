; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_add_pthru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_add_pthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_target = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.esas2r_adapter = type { %struct.esas2r_target* }
%struct.esas2r_disc_context = type { i64, i32 }

@ESAS2R_MAX_TARGETS = common dso_local global i64 0, align 8
@TS_PRESENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"add PT; T:%d, V:%d, P:%d\00", align 1
@TF_PASS_THRU = common dso_local global i32 0, align 4
@TF_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.esas2r_target* @esas2r_targ_db_add_pthru(%struct.esas2r_adapter* %0, %struct.esas2r_disc_context* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.esas2r_target*, align 8
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.esas2r_disc_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_disc_context* %1, %struct.esas2r_disc_context** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @esas2r_trace_enter()
  %12 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %13 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ESAS2R_MAX_TARGETS, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = call i32 (...) @esas2r_bugon()
  %19 = call i32 (...) @esas2r_trace_exit()
  store %struct.esas2r_target* null, %struct.esas2r_target** %5, align 8
  br label %96

20:                                               ; preds = %4
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.esas2r_target* @esas2r_targ_db_find_by_ident(%struct.esas2r_adapter* %21, i32* %22, i32 %23)
  store %struct.esas2r_target* %24, %struct.esas2r_target** %10, align 8
  %25 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %26 = icmp eq %struct.esas2r_target* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 0
  %30 = load %struct.esas2r_target*, %struct.esas2r_target** %29, align 8
  %31 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %32 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %30, i64 %33
  store %struct.esas2r_target* %34, %struct.esas2r_target** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 4
  br i1 %37, label %44, label %38

38:                                               ; preds = %27
  %39 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %40 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TS_PRESENT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %27
  %45 = call i32 (...) @esas2r_trace_exit()
  store %struct.esas2r_target* null, %struct.esas2r_target** %5, align 8
  br label %96

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %49 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %50 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %48, %struct.esas2r_adapter* %49)
  %51 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %52 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %56 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %57)
  %59 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %60 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %62 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %64 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %66 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %70 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %7, align 8
  %72 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %75 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %78 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %80 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memcpy(i32 %81, i32* %82, i32 %83)
  %85 = load i32, i32* @TF_PASS_THRU, align 4
  %86 = load i32, i32* @TF_USED, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %89 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i64, i64* @TS_PRESENT, align 8
  %93 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %94 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  store %struct.esas2r_target* %95, %struct.esas2r_target** %5, align 8
  br label %96

96:                                               ; preds = %47, %44, %17
  %97 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  ret %struct.esas2r_target* %97
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local %struct.esas2r_target* @esas2r_targ_db_find_by_ident(%struct.esas2r_adapter*, i32*, i32) #1

declare dso_local i32 @esas2r_hdebug(i8*, i32, i32, i32) #1

declare dso_local i32 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
