; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.TYPE_2__*, %struct.labpc_private* }
%struct.TYPE_2__ = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32)*, i64 }
%struct.comedi_device.0 = type opaque

@STAT1_REG = common dso_local global i32 0, align 4
@STAT1_DAVAIL = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ai timeout, fifo never empties\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @labpc_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_drain_fifo(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.labpc_private*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 2
  %12 = load %struct.labpc_private*, %struct.labpc_private** %11, align 8
  store %struct.labpc_private* %12, %struct.labpc_private** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %5, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %6, align 8
  store i32 10000, i32* %8, align 4
  %20 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %21 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %20, i32 0, i32 1
  %22 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %21, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %24 = bitcast %struct.comedi_device* %23 to %struct.comedi_device.0*
  %25 = load i32, i32* @STAT1_REG, align 4
  %26 = call i32 %22(%struct.comedi_device.0* %24, i32 %25)
  %27 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %28 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %74, %1
  %30 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %31 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STAT1_DAVAIL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp ult i32 %37, 10000
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i1 [ false, %29 ], [ %38, %36 ]
  br i1 %40, label %41, label %77

41:                                               ; preds = %39
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TRIG_COUNT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %49 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %77

53:                                               ; preds = %47
  %54 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %55 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %41
  %59 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %60 = call zeroext i16 @labpc_read_adc_fifo(%struct.comedi_device* %59)
  store i16 %60, i16* %7, align 2
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @comedi_buf_write_samples(%struct.TYPE_2__* %63, i16* %7, i32 1)
  %65 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %66 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %65, i32 0, i32 1
  %67 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %69 = bitcast %struct.comedi_device* %68 to %struct.comedi_device.0*
  %70 = load i32, i32* @STAT1_REG, align 4
  %71 = call i32 %67(%struct.comedi_device.0* %69, i32 %70)
  %72 = load %struct.labpc_private*, %struct.labpc_private** %4, align 8
  %73 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %29

77:                                               ; preds = %52, %39
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 10000
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %86 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  store i32 -1, i32* %2, align 4
  br label %91

90:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local zeroext i16 @labpc_read_adc_fifo(%struct.comedi_device*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.TYPE_2__*, i16*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
