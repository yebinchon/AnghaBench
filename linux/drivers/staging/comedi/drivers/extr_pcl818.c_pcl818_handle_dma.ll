; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_handle_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_pcl818_handle_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcl818_private* }
%struct.pcl818_private = type { %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i16*, i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl818_handle_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcl818_handle_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcl818_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcl818_private*, %struct.pcl818_private** %14, align 8
  store %struct.pcl818_private* %15, %struct.pcl818_private** %5, align 8
  %16 = load %struct.pcl818_private*, %struct.pcl818_private** %5, align 8
  %17 = getelementptr inbounds %struct.pcl818_private, %struct.pcl818_private* %16, i32 0, i32 0
  %18 = load %struct.comedi_isadma*, %struct.comedi_isadma** %17, align 8
  store %struct.comedi_isadma* %18, %struct.comedi_isadma** %6, align 8
  %19 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %19, i32 0, i32 1
  %21 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %20, align 8
  %22 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %21, i64 %24
  store %struct.comedi_isadma_desc* %25, %struct.comedi_isadma_desc** %7, align 8
  %26 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %26, i32 0, i32 0
  %28 = load i16*, i16** %27, align 8
  store i16* %28, i16** %8, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %30 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 1, %36
  %38 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pcl818_ai_setup_dma(%struct.comedi_device* %40, %struct.comedi_subdevice* %41, i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %71, %2
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i16*, i16** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = lshr i32 %57, 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @pcl818_ai_write_sample(%struct.comedi_device* %63, %struct.comedi_subdevice* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %48
  br label %74

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %44

74:                                               ; preds = %69, %44
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pcl818_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pcl818_ai_write_sample(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
