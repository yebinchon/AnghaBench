; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ao_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.cb_pcidas_private*, %struct.cb_pcidas_board* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.cb_pcidas_private = type { i64 }
%struct.cb_pcidas_board = type { i32 }

@PCIDAS_CTRL_DAEMI = common dso_local global i32 0, align 4
@PCIDAS_AO_REG = common dso_local global i64 0, align 8
@PCIDAS_AO_EMPTY = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dac fifo underflow\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCIDAS_CTRL_DAHFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @cb_pcidas_ao_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ao_interrupt(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb_pcidas_board*, align 8
  %6 = alloca %struct.cb_pcidas_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 3
  %13 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %12, align 8
  store %struct.cb_pcidas_board* %13, %struct.cb_pcidas_board** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %15, align 8
  store %struct.cb_pcidas_private* %16, %struct.cb_pcidas_private** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %18, align 8
  store %struct.comedi_subdevice* %19, %struct.comedi_subdevice** %7, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load %struct.comedi_async*, %struct.comedi_async** %21, align 8
  store %struct.comedi_async* %22, %struct.comedi_async** %8, align 8
  %23 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 2
  store %struct.comedi_cmd* %24, %struct.comedi_cmd** %9, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PCIDAS_CTRL_DAEMI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %2
  %30 = load i32, i32* @PCIDAS_CTRL_DAEMI, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %34 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCIDAS_AO_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inw(i64 %37)
  %39 = load i32, i32* @PCIDAS_AO_EMPTY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %29
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRIG_COUNT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %50 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* @COMEDI_CB_EOA, align 4
  %58 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %72

62:                                               ; preds = %48, %42
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %68 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %62, %56
  br label %73

73:                                               ; preds = %72, %29
  br label %91

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @PCIDAS_CTRL_DAHFI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i32, i32* @PCIDAS_CTRL_DAHFI, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %85 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %5, align 8
  %86 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 2
  %89 = call i32 @cb_pcidas_ao_load_fifo(%struct.comedi_device* %83, %struct.comedi_subdevice* %84, i32 %88)
  br label %90

90:                                               ; preds = %79, %74
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %94 = call i32 @comedi_handle_events(%struct.comedi_device* %92, %struct.comedi_subdevice* %93)
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cb_pcidas_ao_load_fifo(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
