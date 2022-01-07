; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.esas2r_target*, %struct.esas2r_target* }
%struct.esas2r_target = type { i32, i8*, i8* }

@TS_NOT_PRESENT = common dso_local global i8* null, align 8
@TS_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_targ_db_initialize(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 1
  %6 = load %struct.esas2r_target*, %struct.esas2r_target** %5, align 8
  store %struct.esas2r_target* %6, %struct.esas2r_target** %3, align 8
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 0
  %11 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  %12 = icmp ult %struct.esas2r_target* %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %15 = call i32 @memset(%struct.esas2r_target* %14, i32 0, i32 24)
  %16 = load i8*, i8** @TS_NOT_PRESENT, align 8
  %17 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %18 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @TS_NOT_PRESENT, align 8
  %20 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %21 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @TS_INVALID, align 4
  %23 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %24 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load %struct.esas2r_target*, %struct.esas2r_target** %3, align 8
  %27 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %26, i32 1
  store %struct.esas2r_target* %27, %struct.esas2r_target** %3, align 8
  br label %7

28:                                               ; preds = %7
  ret void
}

declare dso_local i32 @memset(%struct.esas2r_target*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
