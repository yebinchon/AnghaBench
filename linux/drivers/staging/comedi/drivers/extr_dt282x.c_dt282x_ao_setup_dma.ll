; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ao_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.dt282x_private* }
%struct.dt282x_private = type { %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"AO underrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dt282x_ao_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ao_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dt282x_private*, align 8
  %8 = alloca %struct.comedi_isadma*, align 8
  %9 = alloca %struct.comedi_isadma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.dt282x_private*, %struct.dt282x_private** %13, align 8
  store %struct.dt282x_private* %14, %struct.dt282x_private** %7, align 8
  %15 = load %struct.dt282x_private*, %struct.dt282x_private** %7, align 8
  %16 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %15, i32 0, i32 0
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %16, align 8
  store %struct.comedi_isadma* %17, %struct.comedi_isadma** %8, align 8
  %18 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %18, i32 0, i32 0
  %20 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %20, i64 %22
  store %struct.comedi_isadma_desc* %23, %struct.comedi_isadma_desc** %9, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %25 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %26 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %30 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %31 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %29, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dt282x_prep_ao_dma(%struct.comedi_device* %38, i32 %39, i32 %40)
  br label %47

42:                                               ; preds = %3
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @dt282x_prep_ao_dma(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
