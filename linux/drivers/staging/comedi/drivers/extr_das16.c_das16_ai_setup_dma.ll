; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_ai_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das16_private_struct* }
%struct.das16_private_struct = type { %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @das16_ai_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_ai_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.das16_private_struct*, align 8
  %8 = alloca %struct.comedi_isadma*, align 8
  %9 = alloca %struct.comedi_isadma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.das16_private_struct*, %struct.das16_private_struct** %13, align 8
  store %struct.das16_private_struct* %14, %struct.das16_private_struct** %7, align 8
  %15 = load %struct.das16_private_struct*, %struct.das16_private_struct** %7, align 8
  %16 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %15, i32 0, i32 0
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %16, align 8
  store %struct.comedi_isadma* %17, %struct.comedi_isadma** %8, align 8
  %18 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %18, i32 0, i32 1
  %20 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %19, align 8
  %21 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %20, i64 %23
  store %struct.comedi_isadma_desc* %24, %struct.comedi_isadma_desc** %9, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %26 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %31, %32
  %34 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %42, i32 %43)
  %45 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %46 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %48 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %47)
  br label %49

49:                                               ; preds = %38, %3
  ret void
}

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
