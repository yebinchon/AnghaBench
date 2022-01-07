; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_get_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_get_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci9118_private* }
%struct.pci9118_private = type { i64, i32, i64, i32, %struct.pci9118_dmabuf* }
%struct.pci9118_dmabuf = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_get_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_ai_get_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci9118_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca %struct.pci9118_dmabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.pci9118_private*, %struct.pci9118_private** %12, align 8
  store %struct.pci9118_private* %13, %struct.pci9118_private** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %6, align 8
  %18 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %19 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %18, i32 0, i32 4
  %20 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %19, align 8
  %21 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %20, i64 %23
  store %struct.pci9118_dmabuf* %24, %struct.pci9118_dmabuf** %7, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %7, align 8
  %27 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pci9118_ai_samples_ready(%struct.comedi_device* %30, %struct.comedi_subdevice* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add i32 %36, 1
  %38 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %35, i32 %37)
  %39 = icmp ult i32 %34, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %2
  %44 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %45 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %50 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 1, %51
  %53 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %54 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %57 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @pci9118_amcc_setup_dma(%struct.comedi_device* %55, i32 %59)
  %61 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %62 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %68 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @pci9118_ai_mode4_switch(%struct.comedi_device* %66, i32 %70)
  br label %72

72:                                               ; preds = %65, %48
  br label %73

73:                                               ; preds = %72, %43, %2
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %79 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %7, align 8
  %80 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @pci9118_ai_dma_xfer(%struct.comedi_device* %77, %struct.comedi_subdevice* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %73
  %85 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %86 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %84
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load i32, i32* @COMEDI_CB_EOA, align 4
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %99, %89
  br label %108

108:                                              ; preds = %107, %84
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %123 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %121
  %127 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %128 = call i32 @pci9118_amcc_setup_dma(%struct.comedi_device* %127, i32 0)
  %129 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %130 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %135 = call i32 @pci9118_ai_mode4_switch(%struct.comedi_device* %134, i32 0)
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136, %121, %118
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pci9118_ai_samples_ready(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @pci9118_amcc_setup_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_ai_mode4_switch(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_ai_dma_xfer(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
