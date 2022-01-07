; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_fifo_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }

@NI611X_AO_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI_E_AO_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_ao_fifo_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_fifo_load(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  store %struct.ni_private* %13, %struct.ni_private** %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %20 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %19, i16* %9, i32 1)
  %21 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %22 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load i16, i16* %9, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 65535
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %34, i16* %9, i32 1)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = shl i32 %39, 16
  %41 = and i32 %40, -65536
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %33, %25
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NI611X_AO_FIFO_DATA_REG, align 4
  %48 = call i32 @ni_writel(%struct.comedi_device* %45, i32 %46, i32 %47)
  br label %54

49:                                               ; preds = %18
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = load i16, i16* %9, align 2
  %52 = load i32, i32* @NI_E_AO_FIFO_DATA_REG, align 4
  %53 = call i32 @ni_writew(%struct.comedi_device* %50, i16 zeroext %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %14

58:                                               ; preds = %14
  ret void
}

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
