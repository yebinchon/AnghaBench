; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_target = type { i32 }

@TS_NOT_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"remove id:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_targ_db_remove(%struct.esas2r_adapter* %0, %struct.esas2r_target* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_target* %1, %struct.esas2r_target** %4, align 8
  %5 = call i32 (...) @esas2r_trace_enter()
  %6 = load i32, i32* @TS_NOT_PRESENT, align 4
  %7 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  %8 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %11 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %9, %struct.esas2r_adapter* %10)
  %12 = call i32 @esas2r_trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
