; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcl812_private* }
%struct.pcl812_private = type { i32, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_ai_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_poll(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcl812_private*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_isadma_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pcl812_private*, %struct.pcl812_private** %13, align 8
  store %struct.pcl812_private* %14, %struct.pcl812_private** %6, align 8
  %15 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %16 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %15, i32 0, i32 2
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %16, align 8
  store %struct.comedi_isadma* %17, %struct.comedi_isadma** %7, align 8
  %18 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %19 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %29 = call i32 @comedi_isadma_poll(%struct.comedi_isadma* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %35 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %23
  %39 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %39, i32 0, i32 1
  %41 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %40, align 8
  %42 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %41, i64 %44
  store %struct.comedi_isadma_desc* %45, %struct.comedi_isadma_desc** %8, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %48 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %56 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub i32 %54, %57
  %59 = call i32 @transfer_from_dma_buf(%struct.comedi_device* %46, %struct.comedi_subdevice* %47, i32 %50, i32 %53, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.pcl812_private*, %struct.pcl812_private** %6, align 8
  %62 = getelementptr inbounds %struct.pcl812_private, %struct.pcl812_private* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %64 = call i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice* %63)
  store i32 %64, i32* %11, align 4
  br label %66

65:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @comedi_isadma_poll(%struct.comedi_isadma*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @transfer_from_dma_buf(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
