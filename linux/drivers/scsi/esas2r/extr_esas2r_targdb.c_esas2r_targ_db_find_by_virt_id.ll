; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_by_virt_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_by_virt_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_target = type { i64, i64 }
%struct.esas2r_adapter = type { %struct.esas2r_target*, %struct.esas2r_target* }

@TS_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.esas2r_target* @esas2r_targ_db_find_by_virt_id(%struct.esas2r_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.esas2r_target*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 1
  %9 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  store %struct.esas2r_target* %9, %struct.esas2r_target** %6, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 0
  %14 = load %struct.esas2r_target*, %struct.esas2r_target** %13, align 8
  %15 = icmp ult %struct.esas2r_target* %11, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %18 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TS_PRESENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  store %struct.esas2r_target* %30, %struct.esas2r_target** %3, align 8
  br label %36

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.esas2r_target*, %struct.esas2r_target** %6, align 8
  %34 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %33, i32 1
  store %struct.esas2r_target* %34, %struct.esas2r_target** %6, align 8
  br label %10

35:                                               ; preds = %10
  store %struct.esas2r_target* null, %struct.esas2r_target** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  ret %struct.esas2r_target* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
