; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_lock_acct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_lock_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_dma = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_dma*, i64, i32)* @vfio_lock_acct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_lock_acct(%struct.vfio_dma* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_dma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.vfio_dma* %0, %struct.vfio_dma** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %18 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call %struct.mm_struct* @get_task_mm(%struct.TYPE_3__* %19)
  br label %27

21:                                               ; preds = %13
  %22 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %23 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi %struct.mm_struct* [ %20, %16 ], [ %26, %21 ]
  store %struct.mm_struct* %28, %struct.mm_struct** %8, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %30 = icmp ne %struct.mm_struct* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ESRCH, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %27
  %35 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = call i32 @down_write_killable(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @abs(i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %48 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.vfio_dma*, %struct.vfio_dma** %5, align 8
  %51 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__account_locked_vm(%struct.mm_struct* %41, i32 %43, i32 %46, %struct.TYPE_3__* %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %55 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %54, i32 0, i32 0
  %56 = call i32 @up_write(i32* %55)
  br label %57

57:                                               ; preds = %40, %34
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %62 = call i32 @mmput(%struct.mm_struct* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %31, %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.TYPE_3__*) #1

declare dso_local i32 @down_write_killable(i32*) #1

declare dso_local i32 @__account_locked_vm(%struct.mm_struct*, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
