; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_write_sq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_write_sq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_queue*, i32)* @nvme_write_sq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_write_sq_db(%struct.nvme_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %53

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nvme_dbbuf_update_and_check_event(i64 %30, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @writel(i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %27
  %48 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nvme_queue*, %struct.nvme_queue** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %25
  ret void
}

declare dso_local i64 @nvme_dbbuf_update_and_check_event(i64, i32, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
