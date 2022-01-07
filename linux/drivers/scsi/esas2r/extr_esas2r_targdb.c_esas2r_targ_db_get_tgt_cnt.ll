; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_get_tgt_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_get_tgt_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, %struct.esas2r_target*, %struct.esas2r_target* }
%struct.esas2r_target = type { i64 }

@TS_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esas2r_targ_db_get_tgt_cnt(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.esas2r_target*, align 8
  %5 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 2
  %12 = load %struct.esas2r_target*, %struct.esas2r_target** %11, align 8
  store %struct.esas2r_target* %12, %struct.esas2r_target** %4, align 8
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  %15 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %15, i32 0, i32 1
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %16, align 8
  %18 = icmp ult %struct.esas2r_target* %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TS_PRESENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  %31 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %30, i32 1
  store %struct.esas2r_target* %31, %struct.esas2r_target** %4, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
