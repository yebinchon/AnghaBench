; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_alloc_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_alloc_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.pcl816_private* }
%struct.pcl816_private = type { i32 }
%struct.comedi_devconfig = type { i32* }

@pcl816_interrupt = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@COMEDI_ISADMA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl816_alloc_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl816_alloc_irq_and_dma(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_devconfig*, align 8
  %5 = alloca %struct.pcl816_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.pcl816_private*, %struct.pcl816_private** %9, align 8
  store %struct.pcl816_private* %10, %struct.pcl816_private** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp uge i32 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ule i32 %24, 7
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %23, %2
  br label %65

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @pcl816_interrupt, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = call i64 @request_irq(i32 %34, i32 %35, i32 0, i32 %38, %struct.comedi_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %65

43:                                               ; preds = %33
  %44 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %47, 4
  %49 = load i32, i32* @COMEDI_ISADMA_READ, align 4
  %50 = call i32 @comedi_isadma_alloc(%struct.comedi_device* %44, i32 2, i32 %45, i32 %46, i32 %48, i32 %49)
  %51 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %52 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %54 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %60 = call i32 @free_irq(i32 %58, %struct.comedi_device* %59)
  br label %65

61:                                               ; preds = %43
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %32, %42, %61, %57
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_isadma_alloc(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
