; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_next_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_next_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.esas2r_target* }
%struct.esas2r_target = type { i64 }

@ESAS2R_MAX_TARGETS = common dso_local global i64 0, align 8
@TS_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esas2r_targ_db_find_next_present(%struct.esas2r_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ESAS2R_MAX_TARGETS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load %struct.esas2r_target*, %struct.esas2r_target** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %16, i64 %17
  store %struct.esas2r_target* %18, %struct.esas2r_target** %6, align 8
  %19 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %20 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TS_PRESENT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %28

25:                                               ; preds = %13
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %9

28:                                               ; preds = %24, %9
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
