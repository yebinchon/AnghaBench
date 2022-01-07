; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcl816_private* }
%struct.pcl816_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl816_ai_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_poll(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcl816_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pcl816_private*, %struct.pcl816_private** %12, align 8
  store %struct.pcl816_private* %13, %struct.pcl816_private** %5, align 8
  %14 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %15 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %14, i32 0, i32 1
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %15, align 8
  store %struct.comedi_isadma* %16, %struct.comedi_isadma** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %22 = call i32 @comedi_isadma_poll(%struct.comedi_isadma* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %28 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %2
  %32 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %32, i32 0, i32 1
  %34 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %33, align 8
  %35 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %34, i64 %37
  store %struct.comedi_isadma_desc* %38, %struct.comedi_isadma_desc** %7, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %41 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %45 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %49 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  %52 = call i32 @transfer_from_dma_buf(%struct.comedi_device* %39, %struct.comedi_subdevice* %40, i32 %43, i32 %46, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.pcl816_private*, %struct.pcl816_private** %5, align 8
  %55 = getelementptr inbounds %struct.pcl816_private, %struct.pcl816_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %58 = call i32 @comedi_handle_events(%struct.comedi_device* %56, %struct.comedi_subdevice* %57)
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = call i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice* %59)
  store i32 %60, i32* %10, align 4
  br label %62

61:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @comedi_isadma_poll(%struct.comedi_isadma*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @transfer_from_dma_buf(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_n_bytes_ready(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
