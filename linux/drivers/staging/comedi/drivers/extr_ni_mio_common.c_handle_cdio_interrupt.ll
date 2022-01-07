; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_cdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_cdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.ni_private* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ni_private = type { i32, i64 }

@NI_DIO_SUBDEV = common dso_local global i64 0, align 8
@NI_M_CDIO_STATUS_REG = common dso_local global i32 0, align 4
@NI_M_CDIO_STATUS_CDO_ERROR = common dso_local global i32 0, align 4
@NI_M_CDO_CMD_ERR_INT_CONFIRM = common dso_local global i32 0, align 4
@NI_M_CDIO_CMD_REG = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@NI_M_CDIO_STATUS_CDO_FIFO_EMPTY = common dso_local global i32 0, align 4
@NI_M_CDO_CMD_F_E_INT_ENA_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @handle_cdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cdio_interrupt(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  store %struct.ni_private* %9, %struct.ni_private** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, align 8
  %13 = load i64, i64* @NI_DIO_SUBDEV, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i64 %13
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %20 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %25 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %28 = call i32 @mite_ack_linkc(i64 %26, %struct.comedi_subdevice* %27, i32 1)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = load i32, i32* @NI_M_CDIO_STATUS_REG, align 4
  %36 = call i32 @ni_readl(%struct.comedi_device* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NI_M_CDIO_STATUS_CDO_ERROR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = load i32, i32* @NI_M_CDO_CMD_ERR_INT_CONFIRM, align 4
  %44 = load i32, i32* @NI_M_CDIO_CMD_REG, align 4
  %45 = call i32 @ni_writel(%struct.comedi_device* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %41, %29
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @NI_M_CDIO_STATUS_CDO_FIFO_EMPTY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %60 = load i32, i32* @NI_M_CDO_CMD_F_E_INT_ENA_CLR, align 4
  %61 = load i32, i32* @NI_M_CDIO_CMD_REG, align 4
  %62 = call i32 @ni_writel(%struct.comedi_device* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %66 = call i32 @comedi_handle_events(%struct.comedi_device* %64, %struct.comedi_subdevice* %65)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_ack_linkc(i64, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
