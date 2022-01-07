; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_read_sw_save_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_read_sw_save_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32 }

@GI_SAVE_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_tio_read_sw_save_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_read_sw_save_reg(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  store %struct.ni_gpct* %10, %struct.ni_gpct** %5, align 8
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @NITIO_CMD_REG(i32 %15)
  %17 = load i32, i32* @GI_SAVE_TRACE, align 4
  %18 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %14, i32 %16, i32 %17, i32 0)
  %19 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @NITIO_CMD_REG(i32 %20)
  %22 = load i32, i32* @GI_SAVE_TRACE, align 4
  %23 = load i32, i32* @GI_SAVE_TRACE, align 4
  %24 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %19, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @NITIO_SW_SAVE_REG(i32 %26)
  %28 = call i32 @ni_tio_read(%struct.ni_gpct* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @NITIO_SW_SAVE_REG(i32 %31)
  %33 = call i32 @ni_tio_read(%struct.ni_gpct* %30, i32 %32)
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @NITIO_SW_SAVE_REG(i32 %37)
  %39 = call i32 @ni_tio_read(%struct.ni_gpct* %36, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %2
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_CMD_REG(i32) #1

declare dso_local i32 @ni_tio_read(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_SW_SAVE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
