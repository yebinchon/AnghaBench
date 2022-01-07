; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_b_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_b_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NISTC_AO_STATUS1_OVERRUN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [47 x i8] c"AO FIFO underrun status=0x%04x status2=0x%04x\0A\00", align 1
@NISTC_AO_STATUS2_REG = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@NISTC_AO_STATUS1_BC_TC = common dso_local global i16 0, align 2
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@NISTC_AO_STATUS1_FIFO_REQ = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [20 x i8] c"AO buffer underrun\0A\00", align 1
@NISTC_INTB_ENA_REG = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_AO_FIFO = common dso_local global i32 0, align 4
@NISTC_INTB_ENA_AO_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16)* @handle_b_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_b_interrupt(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load i16, i16* %6, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp eq i32 %9, 65535
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %92

12:                                               ; preds = %3
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @NISTC_AO_STATUS1_OVERRUN, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = load i32, i32* @NISTC_AO_STATUS2_REG, align 4
  %27 = call i32 @ni_stc_readw(%struct.comedi_device* %25, i32 %26)
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %19, %12
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRIG_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @NISTC_AO_STATUS1_BC_TC, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @COMEDI_CB_EOA, align 4
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52, %45, %36
  %61 = load i16, i16* %6, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @NISTC_AO_STATUS1_FIFO_REQ, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %60
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %70 = call i32 @ni_ao_fifo_half_empty(%struct.comedi_device* %68, %struct.comedi_subdevice* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = load i32, i32* @NISTC_INTB_ENA_REG, align 4
  %80 = load i32, i32* @NISTC_INTB_ENA_AO_FIFO, align 4
  %81 = load i32, i32* @NISTC_INTB_ENA_AO_ERR, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @ni_set_bits(%struct.comedi_device* %78, i32 %79, i32 %82, i32 0)
  %84 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %73, %67
  br label %92

92:                                               ; preds = %11, %91, %60
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_ao_fifo_half_empty(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
