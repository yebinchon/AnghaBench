; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_submit_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_submit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32, i32, i64 }
%struct.nvme_command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*, %struct.nvme_command*, i32)* @nvme_submit_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_submit_cmd(%struct.nvme_queue* %0, %struct.nvme_command* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %4, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %12, %20
  %22 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %23 = call i32 @memcpy(i64 %21, %struct.nvme_command* %22, i32 4)
  %24 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %3
  %36 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nvme_write_sq_db(%struct.nvme_queue* %36, i32 %37)
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %39, i32 0, i32 3
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i64, %struct.nvme_command*, i32) #1

declare dso_local i32 @nvme_write_sq_db(%struct.nvme_queue*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
