; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i64, %struct.st_partstat*, i64 }
%struct.st_partstat = type { i32, i32, i64, i64, i32, i32 }

@ST_NBR_PARTITIONS = common dso_local global i32 0, align 4
@ST_IDLE = common dso_local global i32 0, align 4
@ST_NOEOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_tape*)* @reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_state(%struct.scsi_tape* %0) #0 {
  %2 = alloca %struct.scsi_tape*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_partstat*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %2, align 8
  %5 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ST_NBR_PARTITIONS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %12, i32 0, i32 3
  %14 = load %struct.st_partstat*, %struct.st_partstat** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %14, i64 %16
  store %struct.st_partstat* %17, %struct.st_partstat** %4, align 8
  %18 = load i32, i32* @ST_IDLE, align 4
  %19 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %20 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ST_NOEOF, align 4
  %22 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %23 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %25 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %27 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %29 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.st_partstat*, %struct.st_partstat** %4, align 8
  %31 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %42 = call i64 @find_partition(%struct.scsi_tape* %41)
  %43 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %44 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %57 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %35
  ret void
}

declare dso_local i64 @find_partition(%struct.scsi_tape*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
