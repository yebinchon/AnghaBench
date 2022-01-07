; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdo_inttrig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_cdo_inttrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.TYPE_2__ = type { i32, i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"BUG: no cdo mite channel?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NI_M_CDIO_STATUS_REG = common dso_local global i32 0, align 4
@NI_M_CDIO_STATUS_CDO_FIFO_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"dma failed to fill cdo fifo!\0A\00", align 1
@NI_M_CDO_CMD_ARM = common dso_local global i32 0, align 4
@NI_M_CDO_CMD_ERR_INT_ENA_SET = common dso_local global i32 0, align 4
@NI_M_CDO_CMD_F_E_INT_ENA_SET = common dso_local global i32 0, align 4
@NI_M_CDIO_CMD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_cdo_inttrig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_cdo_inttrig(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ni_private*, align 8
  %13 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %8, align 8
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.ni_private*, %struct.ni_private** %19, align 8
  store %struct.ni_private* %20, %struct.ni_private** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %118

29:                                               ; preds = %3
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %34, i32 %39)
  %41 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 0
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %29
  %50 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %51 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mite_prep_dma(i64 %52, i32 32, i32 32)
  %54 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %55 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mite_dma_arm(i64 %56)
  br label %65

58:                                               ; preds = %29
  %59 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.ni_private*, %struct.ni_private** %12, align 8
  %67 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %66, i32 0, i32 0
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %118

74:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %76, 1000
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %80 = load i32, i32* @NI_M_CDIO_STATUS_REG, align 4
  %81 = call i32 @ni_readl(%struct.comedi_device* %79, i32 %80)
  %82 = load i32, i32* @NI_M_CDIO_STATUS_CDO_FIFO_FULL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %91

86:                                               ; preds = %78
  %87 = call i32 @usleep_range(i32 10, i32 100)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %75

91:                                               ; preds = %85, %75
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 1000
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i32 0, i32 0
  %101 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %100, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %103 = bitcast %struct.comedi_device* %102 to %struct.comedi_device.0*
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %105 = call i32 %101(%struct.comedi_device.0* %103, %struct.comedi_subdevice* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %118

108:                                              ; preds = %91
  %109 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %110 = load i32, i32* @NI_M_CDO_CMD_ARM, align 4
  %111 = load i32, i32* @NI_M_CDO_CMD_ERR_INT_ENA_SET, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @NI_M_CDO_CMD_F_E_INT_ENA_SET, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @NI_M_CDIO_CMD_REG, align 4
  %116 = call i32 @ni_writel(%struct.comedi_device* %109, i32 %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %108, %94, %72, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_prep_dma(i64, i32, i32) #1

declare dso_local i32 @mite_dma_arm(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
