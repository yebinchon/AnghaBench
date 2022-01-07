; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_get_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_shm.c_tee_shm_get_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_shm = type { i32, i32, %struct.tee_context* }
%struct.tee_context = type { %struct.tee_device* }
%struct.tee_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TEE_SHM_DMA_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tee_shm* @tee_shm_get_from_id(%struct.tee_context* %0, i32 %1) #0 {
  %3 = alloca %struct.tee_shm*, align 8
  %4 = alloca %struct.tee_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tee_device*, align 8
  %7 = alloca %struct.tee_shm*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %9 = icmp ne %struct.tee_context* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.tee_shm* @ERR_PTR(i32 %12)
  store %struct.tee_shm* %13, %struct.tee_shm** %3, align 8
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %16 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %15, i32 0, i32 0
  %17 = load %struct.tee_device*, %struct.tee_device** %16, align 8
  store %struct.tee_device* %17, %struct.tee_device** %6, align 8
  %18 = load %struct.tee_device*, %struct.tee_device** %6, align 8
  %19 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.tee_device*, %struct.tee_device** %6, align 8
  %22 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %21, i32 0, i32 1
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.tee_shm* @idr_find(i32* %22, i32 %23)
  store %struct.tee_shm* %24, %struct.tee_shm** %7, align 8
  %25 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %26 = icmp ne %struct.tee_shm* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %29 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %28, i32 0, i32 2
  %30 = load %struct.tee_context*, %struct.tee_context** %29, align 8
  %31 = load %struct.tee_context*, %struct.tee_context** %4, align 8
  %32 = icmp ne %struct.tee_context* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %14
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.tee_shm* @ERR_PTR(i32 %35)
  store %struct.tee_shm* %36, %struct.tee_shm** %7, align 8
  br label %50

37:                                               ; preds = %27
  %38 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %39 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TEE_SHM_DMA_BUF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  %46 = getelementptr inbounds %struct.tee_shm, %struct.tee_shm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_dma_buf(i32 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.tee_device*, %struct.tee_device** %6, align 8
  %52 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.tee_shm*, %struct.tee_shm** %7, align 8
  store %struct.tee_shm* %54, %struct.tee_shm** %3, align 8
  br label %55

55:                                               ; preds = %50, %10
  %56 = load %struct.tee_shm*, %struct.tee_shm** %3, align 8
  ret %struct.tee_shm* %56
}

declare dso_local %struct.tee_shm* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tee_shm* @idr_find(i32*, i32) #1

declare dso_local i32 @get_dma_buf(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
