; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_ion_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.ion_dma_buf_attachment* }
%struct.ion_dma_buf_attachment = type { %struct.sg_table* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @ion_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @ion_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ion_dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %8, i32 0, i32 1
  %10 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %9, align 8
  store %struct.ion_dma_buf_attachment* %10, %struct.ion_dma_buf_attachment** %6, align 8
  %11 = load %struct.ion_dma_buf_attachment*, %struct.ion_dma_buf_attachment** %6, align 8
  %12 = getelementptr inbounds %struct.ion_dma_buf_attachment, %struct.ion_dma_buf_attachment* %11, i32 0, i32 0
  %13 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  store %struct.sg_table* %13, %struct.sg_table** %7, align 8
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %15 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %18 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %21 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dma_map_sg(i32 %16, i32 %19, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.sg_table* @ERR_PTR(i32 %28)
  store %struct.sg_table* %29, %struct.sg_table** %3, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %31, %struct.sg_table** %3, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %33
}

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
