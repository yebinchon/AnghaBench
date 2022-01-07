; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_delete_target_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_delete_target_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgt_assoc = type { %struct.nvmet_fc_tgt_queue**, %struct.nvmet_fc_tgtport* }
%struct.nvmet_fc_tgt_queue = type { i32 }
%struct.nvmet_fc_tgtport = type { i32 }

@NVMET_NR_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgt_assoc*)* @nvmet_fc_delete_target_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_delete_target_assoc(%struct.nvmet_fc_tgt_assoc* %0) #0 {
  %2 = alloca %struct.nvmet_fc_tgt_assoc*, align 8
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nvmet_fc_tgt_assoc* %0, %struct.nvmet_fc_tgt_assoc** %2, align 8
  %7 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %7, i32 0, i32 1
  %9 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %8, align 8
  store %struct.nvmet_fc_tgtport* %9, %struct.nvmet_fc_tgtport** %3, align 8
  %10 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %11 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @NVMET_NR_QUEUES, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %47, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_tgt_assoc, %struct.nvmet_fc_tgt_assoc* %19, i32 0, i32 0
  %21 = load %struct.nvmet_fc_tgt_queue**, %struct.nvmet_fc_tgt_queue*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %21, i64 %23
  %25 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %24, align 8
  store %struct.nvmet_fc_tgt_queue* %25, %struct.nvmet_fc_tgt_queue** %4, align 8
  %26 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %27 = icmp ne %struct.nvmet_fc_tgt_queue* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %30 = call i32 @nvmet_fc_tgt_q_get(%struct.nvmet_fc_tgt_queue* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %47

33:                                               ; preds = %28
  %34 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %35 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %39 = call i32 @nvmet_fc_delete_target_queue(%struct.nvmet_fc_tgt_queue* %38)
  %40 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %41 = call i32 @nvmet_fc_tgt_q_put(%struct.nvmet_fc_tgt_queue* %40)
  %42 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %43 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %33, %18
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %52 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %51, i32 0, i32 0
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.nvmet_fc_tgt_assoc*, %struct.nvmet_fc_tgt_assoc** %2, align 8
  %56 = call i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc* %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvmet_fc_tgt_q_get(%struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvmet_fc_delete_target_queue(%struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @nvmet_fc_tgt_q_put(%struct.nvmet_fc_tgt_queue*) #1

declare dso_local i32 @nvmet_fc_tgt_a_put(%struct.nvmet_fc_tgt_assoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
