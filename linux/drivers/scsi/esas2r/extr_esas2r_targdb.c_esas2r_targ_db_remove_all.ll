; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_remove_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_target*, %struct.esas2r_target* }
%struct.esas2r_target = type { i64 }

@TS_PRESENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"remove id:%d\00", align 1
@TS_NOT_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_targ_db_remove_all(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esas2r_target*, align 8
  %6 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 2
  %9 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  store %struct.esas2r_target* %9, %struct.esas2r_target** %5, align 8
  br label %10

10:                                               ; preds = %49, %2
  %11 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 1
  %14 = load %struct.esas2r_target*, %struct.esas2r_target** %13, align 8
  %15 = icmp ult %struct.esas2r_target* %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %18 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TS_PRESENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %49

23:                                               ; preds = %16
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %29 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %30 = call i32 @esas2r_targ_db_remove(%struct.esas2r_adapter* %28, %struct.esas2r_target* %29)
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %23
  %38 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %40 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %38, %struct.esas2r_adapter* %39)
  %41 = call i32 @esas2r_trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %43 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %45 = call i32 @esas2r_targ_get_id(%struct.esas2r_target* %43, %struct.esas2r_adapter* %44)
  %46 = load i32, i32* @TS_NOT_PRESENT, align 4
  %47 = call i32 @esas2r_target_state_changed(%struct.esas2r_adapter* %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %23
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  %51 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %50, i32 1
  store %struct.esas2r_target* %51, %struct.esas2r_target** %5, align 8
  br label %10

52:                                               ; preds = %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esas2r_targ_db_remove(%struct.esas2r_adapter*, %struct.esas2r_target*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_targ_get_id(%struct.esas2r_target*, %struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_target_state_changed(%struct.esas2r_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
