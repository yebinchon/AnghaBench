; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcl816_private*, %struct.comedi_subdevice* }
%struct.pcl816_private = type { i32, i64, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcl816_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.pcl816_private*, align 8
  %9 = alloca %struct.comedi_isadma*, align 8
  %10 = alloca %struct.comedi_isadma_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.comedi_device*
  store %struct.comedi_device* %14, %struct.comedi_device** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, align 8
  store %struct.comedi_subdevice* %17, %struct.comedi_subdevice** %7, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.pcl816_private*, %struct.pcl816_private** %19, align 8
  store %struct.pcl816_private* %20, %struct.pcl816_private** %8, align 8
  %21 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %22 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %21, i32 0, i32 3
  %23 = load %struct.comedi_isadma*, %struct.comedi_isadma** %22, align 8
  store %struct.comedi_isadma* %23, %struct.comedi_isadma** %9, align 8
  %24 = load %struct.comedi_isadma*, %struct.comedi_isadma** %9, align 8
  %25 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %24, i32 0, i32 1
  %26 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %25, align 8
  %27 = load %struct.comedi_isadma*, %struct.comedi_isadma** %9, align 8
  %28 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %26, i64 %29
  store %struct.comedi_isadma_desc* %30, %struct.comedi_isadma_desc** %10, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %37 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %94

44:                                               ; preds = %35
  %45 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %46 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %51 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %94

55:                                               ; preds = %44
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %58 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %56, i32 %59)
  %61 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %62 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 %60, %63
  store i32 %64, i32* %11, align 4
  %65 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %66 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %12, align 4
  %68 = load %struct.pcl816_private*, %struct.pcl816_private** %8, align 8
  %69 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.comedi_isadma*, %struct.comedi_isadma** %9, align 8
  %71 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 1, %72
  %74 = load %struct.comedi_isadma*, %struct.comedi_isadma** %9, align 8
  %75 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @pcl816_ai_setup_dma(%struct.comedi_device* %76, %struct.comedi_subdevice* %77, i32 %78)
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %82 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %10, align 8
  %83 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @transfer_from_dma_buf(%struct.comedi_device* %80, %struct.comedi_subdevice* %81, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = call i32 @pcl816_ai_clear_eoc(%struct.comedi_device* %88)
  %90 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %92 = call i32 @comedi_handle_events(%struct.comedi_device* %90, %struct.comedi_subdevice* %91)
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %55, %49, %40
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @pcl816_ai_clear_eoc(%struct.comedi_device*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pcl816_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @transfer_from_dma_buf(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
