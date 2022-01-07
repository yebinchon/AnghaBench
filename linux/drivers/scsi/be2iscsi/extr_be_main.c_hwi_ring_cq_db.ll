; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_cq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_cq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64 }

@DB_CQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_RING_ID_LOW_MASK = common dso_local global i32 0, align 4
@DB_CQ_HIGH_FEILD_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_RING_ID_HIGH_MASK = common dso_local global i32 0, align 4
@DB_CQ_HIGH_SET_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwi_ring_cq_db(%struct.beiscsi_hba* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %10 = load i8, i8* %8, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* @DB_CQ_REARM_SHIFT, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %12, %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DB_CQ_NUM_POPPED_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DB_CQ_RING_ID_LOW_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DB_CQ_HIGH_FEILD_SHIFT, align 4
  %30 = lshr i32 %28, %29
  %31 = load i32, i32* @DB_CQ_RING_ID_HIGH_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @DB_CQ_HIGH_SET_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %39 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DB_CQ_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 %37, i64 %42)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
