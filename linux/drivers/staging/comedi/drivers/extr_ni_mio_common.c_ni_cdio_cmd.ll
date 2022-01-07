; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@NI_M_CDO_CMD_RESET = common dso_local global i32 0, align 4
@NI_M_CDIO_CMD_REG = common dso_local global i32 0, align 4
@NI_M_CDO_MODE_FIFO_MODE = common dso_local global i32 0, align 4
@NI_M_CDO_MODE_HALT_ON_ERROR = common dso_local global i32 0, align 4
@NI_DO_SampleClock = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@NI_M_CDO_MODE_POLARITY = common dso_local global i32 0, align 4
@NI_M_CDO_MODE_REG = common dso_local global i32 0, align 4
@NI_M_CDO_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI_M_CDO_CMD_SW_UPDATE = common dso_local global i32 0, align 4
@NI_M_CDO_MASK_ENA_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"attempted to run digital output command with no lines configured as outputs\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ni_cdo_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_cdio_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_cdio_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  store %struct.ni_private* %12, %struct.ni_private** %6, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = load i32, i32* @NI_M_CDO_CMD_RESET, align 4
  %19 = load i32, i32* @NI_M_CDIO_CMD_REG, align 4
  %20 = call i32 @ni_writel(%struct.comedi_device* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @NI_M_CDO_MODE_FIFO_MODE, align 4
  %22 = load i32, i32* @NI_M_CDO_MODE_HALT_ON_ERROR, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  %28 = load i32, i32* @NI_DO_SampleClock, align 4
  %29 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %30 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %29, i32 0, i32 1
  %31 = call i32 @ni_get_reg_value(i32 %27, i32 %28, i32* %30)
  %32 = call i32 @NI_M_CDO_MODE_SAMPLE_SRC(i32 %31)
  %33 = or i32 %23, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CR_INVERT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @NI_M_CDO_MODE_POLARITY, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %2
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @NI_M_CDO_MODE_REG, align 4
  %48 = call i32 @ni_writel(%struct.comedi_device* %45, i32 %46, i32 %47)
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NI_M_CDO_FIFO_DATA_REG, align 4
  %59 = call i32 @ni_writel(%struct.comedi_device* %54, i32 %57, i32 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = load i32, i32* @NI_M_CDO_CMD_SW_UPDATE, align 4
  %62 = load i32, i32* @NI_M_CDIO_CMD_REG, align 4
  %63 = call i32 @ni_writel(%struct.comedi_device* %60, i32 %61, i32 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NI_M_CDO_MASK_ENA_REG, align 4
  %69 = call i32 @ni_writel(%struct.comedi_device* %64, i32 %67, i32 %68)
  br label %77

70:                                               ; preds = %44
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %53
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = call i32 @ni_request_cdo_mite_channel(%struct.comedi_device* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %104

84:                                               ; preds = %77
  %85 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %86 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %96 = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %95)
  %97 = sdiv i32 %94, %96
  %98 = call i32 @ni_cmd_set_mite_transfer(i32 %87, %struct.comedi_subdevice* %88, %struct.comedi_cmd* %89, i32 %97)
  %99 = load i32, i32* @ni_cdo_inttrig, align 4
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %101 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %84, %82, %70
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NI_M_CDO_MODE_SAMPLE_SRC(i32) #1

declare dso_local i32 @ni_get_reg_value(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_request_cdo_mite_channel(%struct.comedi_device*) #1

declare dso_local i32 @ni_cmd_set_mite_transfer(i32, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32) #1

declare dso_local i32 @comedi_bytes_per_scan(%struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
