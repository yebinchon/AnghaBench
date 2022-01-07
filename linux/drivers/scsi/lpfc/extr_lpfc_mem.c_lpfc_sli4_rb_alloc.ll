; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_sli4_rb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_sli4_rb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hbq_dmabuf = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.lpfc_hba = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_DATA_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hbq_dmabuf* @lpfc_sli4_rb_alloc(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.hbq_dmabuf*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.hbq_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hbq_dmabuf* @kzalloc(i32 40, i32 %5)
  store %struct.hbq_dmabuf* %6, %struct.hbq_dmabuf** %4, align 8
  %7 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %8 = icmp ne %struct.hbq_dmabuf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hbq_dmabuf* null, %struct.hbq_dmabuf** %2, align 8
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %16 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i8* @dma_pool_alloc(i32 %13, i32 %14, i32* %17)
  %19 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %20 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %23 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %10
  %28 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %29 = call i32 @kfree(%struct.hbq_dmabuf* %28)
  store %struct.hbq_dmabuf* null, %struct.hbq_dmabuf** %2, align 8
  br label %67

30:                                               ; preds = %10
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %36 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i8* @dma_pool_alloc(i32 %33, i32 %34, i32* %37)
  %39 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %40 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %43 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %30
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %52 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %56 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dma_pool_free(i32 %50, i8* %54, i32 %58)
  %60 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %61 = call i32 @kfree(%struct.hbq_dmabuf* %60)
  store %struct.hbq_dmabuf* null, %struct.hbq_dmabuf** %2, align 8
  br label %67

62:                                               ; preds = %30
  %63 = load i32, i32* @LPFC_DATA_BUF_SIZE, align 4
  %64 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %65 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  store %struct.hbq_dmabuf* %66, %struct.hbq_dmabuf** %2, align 8
  br label %67

67:                                               ; preds = %62, %47, %27, %9
  %68 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %2, align 8
  ret %struct.hbq_dmabuf* %68
}

declare dso_local %struct.hbq_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.hbq_dmabuf*) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
