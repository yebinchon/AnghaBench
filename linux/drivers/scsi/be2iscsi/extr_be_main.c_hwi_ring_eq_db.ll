; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_eq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_eq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64 }

@DB_EQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_CLR_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_EVNT_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_LOW_MASK = common dso_local global i32 0, align 4
@DB_EQ_HIGH_FEILD_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_RING_ID_HIGH_MASK = common dso_local global i32 0, align 4
@DB_EQ_HIGH_SET_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i32, i32, i32, i8, i8)* @hwi_ring_eq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_ring_eq_db(%struct.beiscsi_hba* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  store i32 0, i32* %13, align 4
  %14 = load i8, i8* %11, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load i32, i32* @DB_EQ_REARM_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %13, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %16, %6
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @DB_EQ_CLR_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i8, i8* %12, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @DB_EQ_EVNT_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @DB_EQ_NUM_POPPED_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DB_EQ_RING_ID_LOW_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DB_EQ_HIGH_FEILD_SHIFT, align 4
  %50 = lshr i32 %48, %49
  %51 = load i32, i32* @DB_EQ_RING_ID_HIGH_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @DB_EQ_HIGH_SET_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %59 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DB_EQ_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @iowrite32(i32 %57, i64 %62)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
