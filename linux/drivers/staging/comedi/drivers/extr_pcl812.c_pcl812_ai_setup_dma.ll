; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl812_private* }
%struct.pcl812_private = type { i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, i32, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pcl812_ai_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl812_ai_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcl812_private*, align 8
  %8 = alloca %struct.comedi_isadma*, align 8
  %9 = alloca %struct.comedi_isadma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcl812_private*, %struct.pcl812_private** %14, align 8
  store %struct.pcl812_private* %15, %struct.pcl812_private** %7, align 8
  %16 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %17 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %16, i32 0, i32 1
  %18 = load %struct.comedi_isadma*, %struct.comedi_isadma** %17, align 8
  store %struct.comedi_isadma* %18, %struct.comedi_isadma** %8, align 8
  %19 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %19, i32 0, i32 2
  %21 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %20, align 8
  %22 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %21, i64 %24
  store %struct.comedi_isadma_desc* %25, %struct.comedi_isadma_desc** %9, align 8
  %26 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @comedi_isadma_disable(i32 %28)
  %30 = load %struct.pcl812_private*, %struct.pcl812_private** %7, align 8
  %31 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %36 = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %35)
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %39 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %36, %34 ], [ %40, %37 ]
  store i32 %42, i32* %10, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %46, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %58, i32 %59)
  %61 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %62 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %64 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %63)
  br label %65

65:                                               ; preds = %54, %41
  ret void
}

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @comedi_bytes_per_scan(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
