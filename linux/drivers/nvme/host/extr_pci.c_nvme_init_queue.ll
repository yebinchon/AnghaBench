; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i64, i32*, i64, i64, i64, %struct.nvme_dev* }
%struct.nvme_dev = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*, i32)* @nvme_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_init_queue(%struct.nvme_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %6, i32 0, i32 6
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  store %struct.nvme_dev* %8, %struct.nvme_dev** %5, align 8
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %19, i64 %26
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %35 = call i32 @CQ_SIZE(%struct.nvme_queue* %34)
  %36 = call i32 @memset(i8* %33, i32 0, i32 %35)
  %37 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %38 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @nvme_dbbuf_init(%struct.nvme_dev* %37, %struct.nvme_queue* %38, i32 %39)
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @CQ_SIZE(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_dbbuf_init(%struct.nvme_dev*, %struct.nvme_queue*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
