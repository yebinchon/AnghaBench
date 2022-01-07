; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_add_raid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_add_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_target = type { i64, i32, i32, i32, i32, i64, i32, i32 }
%struct.esas2r_adapter = type { %struct.esas2r_target* }
%struct.esas2r_disc_context = type { i64, i32, i32, i32 }

@ESAS2R_MAX_TARGETS = common dso_local global i64 0, align 8
@TS_PRESENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"add RAID %s, T:%d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid RAID group dimensions\00", align 1
@ESAS2R_TARG_ID_INV = common dso_local global i32 0, align 4
@TF_PASS_THRU = common dso_local global i32 0, align 4
@TF_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.esas2r_target* @esas2r_targ_db_add_raid(%struct.esas2r_adapter* %0, %struct.esas2r_disc_context* %1) #0 {
  %3 = alloca %struct.esas2r_target*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_disc_context*, align 8
  %6 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_disc_context* %1, %struct.esas2r_disc_context** %5, align 8
  %7 = call i32 (...) @esas2r_trace_enter()
  %8 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %9 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ESAS2R_MAX_TARGETS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @esas2r_bugon()
  %15 = call i32 (...) @esas2r_trace_exit()
  store %struct.esas2r_target* null, %struct.esas2r_target** %3, align 8
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 0
  %19 = load %struct.esas2r_target*, %struct.esas2r_target** %18, align 8
  %20 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %21 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %19, i64 %22
  store %struct.esas2r_target* %23, %struct.esas2r_target** %6, align 8
  %24 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TS_PRESENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = call i32 (...) @esas2r_trace_exit()
  store %struct.esas2r_target* null, %struct.esas2r_target** %3, align 8
  br label %97

31:                                               ; preds = %16
  %32 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %33 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %37 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %35, %struct.esas2r_adapter* %36)
  %38 = call i32 (i8*, ...) @esas2r_hdebug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %40 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %31
  %44 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %45 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %31
  %49 = call i32 (i8*, ...) @esas2r_hdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @esas2r_trace_exit()
  store %struct.esas2r_target* null, %struct.esas2r_target** %3, align 8
  br label %97

51:                                               ; preds = %43
  %52 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %53 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %56 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %58 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %61 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %63 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %66 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %70 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.esas2r_disc_context*, %struct.esas2r_disc_context** %5, align 8
  %72 = getelementptr inbounds %struct.esas2r_disc_context, %struct.esas2r_disc_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %76 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ESAS2R_TARG_ID_INV, align 4
  %78 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %79 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @TF_PASS_THRU, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %83 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* @TF_USED, align 4
  %87 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %88 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %92 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i64, i64* @TS_PRESENT, align 8
  %94 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %95 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  store %struct.esas2r_target* %96, %struct.esas2r_target** %3, align 8
  br label %97

97:                                               ; preds = %51, %48, %29, %13
  %98 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  ret %struct.esas2r_target* %98
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

declare dso_local i32 @esas2r_hdebug(i8*, ...) #1

declare dso_local i32 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
