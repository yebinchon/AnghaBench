; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_get_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i32 }

@TEE_SHM_DMA_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tee_shm_get_fd(%struct.tee_shm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tee_shm*, align 8
  %4 = alloca i32, align 4
  store %struct.tee_shm* %0, %struct.tee_shm** %3, align 8
  %5 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  %6 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TEE_SHM_DMA_BUF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  %16 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_dma_buf(i32 %17)
  %19 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  %20 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @O_CLOEXEC, align 4
  %23 = call i32 @dma_buf_fd(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  %28 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_buf_put(i32 %29)
  br label %31

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @get_dma_buf(i32) #1

declare dso_local i32 @dma_buf_fd(i32, i32) #1

declare dso_local i32 @dma_buf_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
