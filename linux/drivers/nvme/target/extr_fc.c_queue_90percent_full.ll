; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_queue_90percent_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_queue_90percent_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgt_queue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_fc_tgt_queue*, i32)* @queue_90percent_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_90percent_full(%struct.nvmet_fc_tgt_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvmet_fc_tgt_queue* %0, %struct.nvmet_fc_tgt_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %7, i32 0, i32 1
  %9 = call i32 @atomic_read(i32* %8)
  %10 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %3, align 8
  %11 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = srem i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %3, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i32 [ %24, %17 ], [ %28, %25 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 10
  %33 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %3, align 8
  %34 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = mul nsw i32 %36, 9
  %38 = icmp sge i32 %32, %37
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
