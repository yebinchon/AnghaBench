; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_input_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async*, %struct.ni_gpct* }
%struct.comedi_async = type { i32*, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32 }
%struct.ni_gpct = type { i32, %struct.TYPE_3__*, %struct.ni_gpct_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ni_gpct_device = type { i32, %struct.ni_route_tables* }
%struct.ni_route_tables = type { i32 }

@COMEDI_INPUT = common dso_local global i32 0, align 4
@GI_SAVE_TRACE = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@ni_tio_input_inttrig = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@NI_GPCT_ARM_IMMEDIATE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@NI_NAMES_BASE = common dso_local global i32 0, align 4
@NI_GPCT_HW_ARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_subdevice*)* @ni_tio_input_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_input_cmd(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca %struct.ni_gpct_device*, align 8
  %5 = alloca %struct.ni_route_tables*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 1
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %12, align 8
  store %struct.ni_gpct* %13, %struct.ni_gpct** %3, align 8
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 2
  %16 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %15, align 8
  store %struct.ni_gpct_device* %16, %struct.ni_gpct_device** %4, align 8
  %17 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %4, align 8
  %18 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %17, i32 0, i32 1
  %19 = load %struct.ni_route_tables*, %struct.ni_route_tables** %18, align 8
  store %struct.ni_route_tables* %19, %struct.ni_route_tables** %5, align 8
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %7, align 8
  %26 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 2
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %29 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %28, i32 %31)
  %33 = load i32, i32* @COMEDI_INPUT, align 4
  %34 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %35 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %4, align 8
  %39 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %51 [
    i32 128, label %41
    i32 130, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %1, %1
  %42 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %43 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @mite_prep_dma(%struct.TYPE_3__* %44, i32 32, i32 32)
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %48 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @mite_prep_dma(%struct.TYPE_3__* %49, i32 16, i32 32)
  br label %51

51:                                               ; preds = %1, %46, %41
  %52 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @NITIO_CMD_REG(i32 %53)
  %55 = load i32, i32* @GI_SAVE_TRACE, align 4
  %56 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %52, i32 %54, i32 %55, i32 0)
  %57 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %58 = call i32 @ni_tio_configure_dma(%struct.ni_gpct* %57, i32 1, i32 1)
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRIG_INT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 0
  store i32* @ni_tio_input_inttrig, i32** %66, align 8
  br label %112

67:                                               ; preds = %51
  %68 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %71 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @mite_dma_arm(%struct.TYPE_3__* %72)
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TRIG_NOW, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %81 = load i32, i32* @NI_GPCT_ARM_IMMEDIATE, align 4
  %82 = call i32 @ni_tio_arm(%struct.ni_gpct* %80, i32 1, i32 %81)
  store i32 %82, i32* %9, align 4
  br label %111

83:                                               ; preds = %67
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TRIG_EXT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %83
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CR_CHAN(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @NI_NAMES_BASE, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @NI_CtrArmStartTrigger(i32 %99)
  %101 = load %struct.ni_route_tables*, %struct.ni_route_tables** %5, align 8
  %102 = call i32 @ni_get_reg_value(i32 %98, i32 %100, %struct.ni_route_tables* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @NI_GPCT_HW_ARM, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %97, %89
  %107 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ni_tio_arm(%struct.ni_gpct* %107, i32 1, i32 %108)
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %106, %83
  br label %111

111:                                              ; preds = %110, %79
  br label %112

112:                                              ; preds = %111, %64
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @mite_prep_dma(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_CMD_REG(i32) #1

declare dso_local i32 @ni_tio_configure_dma(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @mite_dma_arm(%struct.TYPE_3__*) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_get_reg_value(i32, i32, %struct.ni_route_tables*) #1

declare dso_local i32 @NI_CtrArmStartTrigger(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
