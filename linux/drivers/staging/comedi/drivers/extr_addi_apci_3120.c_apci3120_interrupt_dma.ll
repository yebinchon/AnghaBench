; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_interrupt_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_interrupt_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.apci3120_private* }
%struct.apci3120_private = type { i64, %struct.apci3120_dmabuf*, i64, i64 }
%struct.apci3120_dmabuf = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64 }

@AMCC_OP_REG_MWTC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Interrupted DMA transfer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Odd count of bytes in DMA ring!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_interrupt_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_interrupt_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.apci3120_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.apci3120_dmabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.apci3120_private*, %struct.apci3120_private** %12, align 8
  store %struct.apci3120_private* %13, %struct.apci3120_private** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %6, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 2
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %7, align 8
  %19 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %20 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %19, i32 0, i32 1
  %21 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %20, align 8
  %22 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %23 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %21, i64 %24
  store %struct.apci3120_dmabuf* %25, %struct.apci3120_dmabuf** %8, align 8
  %26 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %27 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %30 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AMCC_OP_REG_MWTC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inl(i64 %33)
  %35 = sub i32 %28, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %38 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %2
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %56 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %137

60:                                               ; preds = %46
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %68 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %69 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %67, i32 %70, i32 %71)
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* @COMEDI_CB_EOS, align 4
  %81 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %66
  br label %86

86:                                               ; preds = %85, %60
  %87 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %86
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIG_COUNT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %86
  br label %137

108:                                              ; preds = %99, %93
  %109 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %110 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %115 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %122 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %124 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %123, i32 0, i32 1
  %125 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %124, align 8
  %126 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %127 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %125, i64 %128
  store %struct.apci3120_dmabuf* %129, %struct.apci3120_dmabuf** %8, align 8
  %130 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %131 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %132 = call i32 @apci3120_init_dma(%struct.comedi_device* %130, %struct.apci3120_dmabuf* %131)
  br label %137

133:                                              ; preds = %108
  %134 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %135 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %136 = call i32 @apci3120_init_dma(%struct.comedi_device* %134, %struct.apci3120_dmabuf* %135)
  br label %137

137:                                              ; preds = %50, %107, %133, %113
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @apci3120_init_dma(%struct.comedi_device*, %struct.apci3120_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
