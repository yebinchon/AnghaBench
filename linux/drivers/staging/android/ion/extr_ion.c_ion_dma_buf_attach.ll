; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_dma_buf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_dma_buf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.ion_buffer* }
%struct.ion_buffer = type { i32, i32, i32 }
%struct.dma_buf_attachment = type { %struct.ion_dma_buf_attachment*, i32 }
%struct.ion_dma_buf_attachment = type { i32, i32, %struct.sg_table* }
%struct.sg_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @ion_dma_buf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ion_dma_buf_attach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.ion_dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.ion_buffer*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 0
  %11 = load %struct.ion_buffer*, %struct.ion_buffer** %10, align 8
  store %struct.ion_buffer* %11, %struct.ion_buffer** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ion_dma_buf_attachment* @kzalloc(i32 16, i32 %12)
  store %struct.ion_dma_buf_attachment* %13, %struct.ion_dma_buf_attachment** %6, align 8
  %14 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %15 = icmp ne %struct.ion_dma_buf_attachment* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.ion_buffer*, %struct.ion_buffer** %8, align 8
  %21 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sg_table* @dup_sg_table(i32 %22)
  store %struct.sg_table* %23, %struct.sg_table** %7, align 8
  %24 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %25 = call i64 @IS_ERR(%struct.sg_table* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %29 = call i32 @kfree(%struct.ion_dma_buf_attachment* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %19
  %33 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %34 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %35 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %34, i32 0, i32 2
  store %struct.sg_table* %33, %struct.sg_table** %35, align 8
  %36 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %37 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %40 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %42 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %45 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %46 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %45, i32 0, i32 0
  store %struct.ion_dma_buf_attachment* %44, %struct.ion_dma_buf_attachment** %46, align 8
  %47 = load %struct.ion_buffer*, %struct.ion_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %51 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %50, i32 0, i32 0
  %52 = load %struct.ion_buffer*, %struct.ion_buffer** %8, align 8
  %53 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %52, i32 0, i32 1
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = load %struct.ion_buffer*, %struct.ion_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.ion_buffer, %struct.ion_buffer* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %32, %27, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ion_dma_buf_attachment* @kzalloc(i32, i32) #1

declare dso_local %struct.sg_table* @dup_sg_table(i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.ion_dma_buf_attachment*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
