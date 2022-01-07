; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.apci3120_private* }
%struct.apci3120_private = type { %struct.apci3120_dmabuf* }
%struct.apci3120_dmabuf = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @apci3120_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_dma_free(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.apci3120_private*, align 8
  %4 = alloca %struct.apci3120_dmabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  store %struct.apci3120_private* %8, %struct.apci3120_private** %3, align 8
  %9 = load %struct.apci3120_private*, %struct.apci3120_private** %3, align 8
  %10 = icmp ne %struct.apci3120_private* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.apci3120_private*, %struct.apci3120_private** %3, align 8
  %18 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %17, i32 0, i32 0
  %19 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %19, i64 %21
  store %struct.apci3120_dmabuf* %22, %struct.apci3120_dmabuf** %4, align 8
  %23 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %24 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %16
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %32 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %35 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %4, align 8
  %38 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32 %30, i32 %33, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %27, %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
