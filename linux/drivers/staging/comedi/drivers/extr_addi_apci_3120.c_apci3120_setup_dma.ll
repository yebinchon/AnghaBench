; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3120_private* }
%struct.apci3120_private = type { %struct.apci3120_dmabuf* }
%struct.apci3120_dmabuf = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i32, i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @apci3120_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.apci3120_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca %struct.apci3120_dmabuf*, align 8
  %8 = alloca %struct.apci3120_dmabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.apci3120_private*, %struct.apci3120_private** %13, align 8
  store %struct.apci3120_private* %14, %struct.apci3120_private** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %6, align 8
  %19 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %20 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %19, i32 0, i32 0
  %21 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %20, align 8
  %22 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %21, i64 0
  store %struct.apci3120_dmabuf* %22, %struct.apci3120_dmabuf** %7, align 8
  %23 = load %struct.apci3120_private*, %struct.apci3120_private** %5, align 8
  %24 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %23, i32 0, i32 0
  %25 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %24, align 8
  %26 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %25, i64 1
  store %struct.apci3120_dmabuf* %26, %struct.apci3120_dmabuf** %8, align 8
  %27 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %7, align 8
  %28 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %31 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %33, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_COUNT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = mul i32 %47, %48
  %50 = icmp ugt i32 %44, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = mul i32 %54, %55
  store i32 %56, i32* %9, align 4
  br label %76

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %63, %64
  %66 = icmp ugt i32 %58, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %67, %57
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %9, align 4
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 2
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ugt i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %10, align 4
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  %112 = sub i32 %111, 2
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* %10, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 4, i32* %10, align 4
  br label %117

117:                                              ; preds = %116, %113
  br label %118

118:                                              ; preds = %117, %99
  br label %148

119:                                              ; preds = %77
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %122 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ugt i32 %120, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %127, %119
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ugt i32 %134, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %141, %133
  br label %148

148:                                              ; preds = %147, %118
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %7, align 8
  %151 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %8, align 8
  %154 = getelementptr inbounds %struct.apci3120_dmabuf, %struct.apci3120_dmabuf* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %156 = load %struct.apci3120_dmabuf*, %struct.apci3120_dmabuf** %7, align 8
  %157 = call i32 @apci3120_init_dma(%struct.comedi_device* %155, %struct.apci3120_dmabuf* %156)
  ret void
}

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @apci3120_init_dma(%struct.comedi_device*, %struct.apci3120_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
