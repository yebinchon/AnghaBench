; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_check_and_restore_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_check_and_restore_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@MEGASAS_FW_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_check_and_restore_queue_depth(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MEGASAS_FW_BUSY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 5, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i64 @time_after(i32 %11, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %10
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 4
  %24 = call i64 @atomic_read(i32* %23)
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %21
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_lock_irqsave(i32 %35, i64 %36)
  %38 = load i32, i32* @MEGASAS_FW_BUSY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %30, %21, %10, %1
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
