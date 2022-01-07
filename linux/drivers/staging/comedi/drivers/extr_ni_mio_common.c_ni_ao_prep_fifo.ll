; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_prep_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_prep_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i64 }
%struct.ni_board_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }

@NISTC_DAC_FIFO_CLR_REG = common dso_local global i32 0, align 4
@NI611X_AO_FIFO_OFFSET_LOAD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ao_prep_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ao_prep_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.ni_board_struct*, align 8
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.ni_board_struct*, %struct.ni_board_struct** %11, align 8
  store %struct.ni_board_struct* %12, %struct.ni_board_struct** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.ni_private*, %struct.ni_private** %14, align 8
  store %struct.ni_private* %15, %struct.ni_private** %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = load i32, i32* @NISTC_DAC_FIFO_CLR_REG, align 4
  %18 = call i32 @ni_stc_writew(%struct.comedi_device* %16, i32 1, i32 %17)
  %19 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %20 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load i32, i32* @NI611X_AO_FIFO_OFFSET_LOAD_REG, align 4
  %26 = call i32 @ni_ao_win_outl(%struct.comedi_device* %24, i32 6, i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %29 = call i32 @comedi_buf_read_n_available(%struct.comedi_subdevice* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  %39 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  %44 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ni_ao_fifo_load(%struct.comedi_device* %47, %struct.comedi_subdevice* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %32
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_ao_win_outl(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_buf_read_n_available(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @ni_ao_fifo_load(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
