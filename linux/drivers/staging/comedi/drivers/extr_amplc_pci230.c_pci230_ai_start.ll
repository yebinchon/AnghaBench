; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci230_private* }
%struct.pci230_private = type { i32, i8, i16, i64, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32 }

@PCI230_INT_ADC = common dso_local global i8 0, align 1
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@PCI230_ADC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_Z2CT2 = common dso_local global i16 0, align 2
@CR_EDGE = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@PCI230_ADC_TRIG_EXTP = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_EXTN = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_MASK = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@pci230_ai_inttrig_convert = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@GAT_NOUTNM2 = common dso_local global i32 0, align 4
@GAT_VCC = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@GAT_EXT = common dso_local global i32 0, align 4
@pci230_ai_inttrig_scan_begin = common dso_local global i32 0, align 4
@RES_Z2CT2 = common dso_local global i32 0, align 4
@OWNER_AICMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ai_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pci230_private*, %struct.pci230_private** %12, align 8
  store %struct.pci230_private* %13, %struct.pci230_private** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %8, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 1
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %9, align 8
  %19 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %20 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %21, i32 0, i32 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i8, i8* @PCI230_INT_ADC, align 1
  %26 = zext i8 %25 to i32
  %27 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %28 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, %26
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 4
  %33 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %34 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI230_INT_SCE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i8 zeroext %35, i64 %40)
  %42 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %43 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %42, i32 0, i32 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %49 [
    i32 128, label %51
    i32 130, label %53
    i32 129, label %83
  ]

49:                                               ; preds = %2
  %50 = load i16, i16* @PCI230_ADC_TRIG_NONE, align 2
  store i16 %50, i16* %7, align 2
  br label %85

51:                                               ; preds = %2
  %52 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  store i16 %52, i16* %7, align 2
  br label %85

53:                                               ; preds = %2
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CR_EDGE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CR_INVERT, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i16, i16* @PCI230_ADC_TRIG_EXTP, align 2
  store i16 %68, i16* %7, align 2
  br label %71

69:                                               ; preds = %60
  %70 = load i16, i16* @PCI230_ADC_TRIG_EXTN, align 2
  store i16 %70, i16* %7, align 2
  br label %71

71:                                               ; preds = %69, %67
  br label %82

72:                                               ; preds = %53
  %73 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %74 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i16, i16* @PCI230_ADC_TRIG_EXTP, align 2
  store i16 %78, i16* %7, align 2
  br label %81

79:                                               ; preds = %72
  %80 = load i16, i16* @PCI230_ADC_TRIG_EXTN, align 2
  store i16 %80, i16* %7, align 2
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %71
  br label %85

83:                                               ; preds = %2
  %84 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  store i16 %84, i16* %7, align 2
  br label %85

85:                                               ; preds = %83, %82, %51, %49
  %86 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %87 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %86, i32 0, i32 2
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @PCI230_ADC_TRIG_MASK, align 2
  %91 = zext i16 %90 to i32
  %92 = xor i32 %91, -1
  %93 = and i32 %89, %92
  %94 = load i16, i16* %7, align 2
  %95 = zext i16 %94 to i32
  %96 = or i32 %93, %95
  %97 = trunc i32 %96 to i16
  %98 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %99 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %98, i32 0, i32 2
  store i16 %97, i16* %99, align 2
  %100 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %101 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %100, i32 0, i32 2
  %102 = load i16, i16* %101, align 2
  %103 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %104 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCI230_ADCCON, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outw(i16 zeroext %102, i64 %107)
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 129
  br i1 %112, label %113, label %117

113:                                              ; preds = %85
  %114 = load i32, i32* @pci230_ai_inttrig_convert, align 4
  %115 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %116 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %85
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %120 = call i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %118, %struct.comedi_subdevice* %119)
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 128
  br i1 %124, label %125, label %193

125:                                              ; preds = %117
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @TRIG_FOLLOW, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @GAT_NOUTNM2, align 4
  %133 = call zeroext i8 @pci230_gat_config(i32 2, i32 %132)
  store i8 %133, i8* %10, align 1
  br label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @GAT_VCC, align 4
  %136 = call zeroext i8 @pci230_gat_config(i32 2, i32 %135)
  store i8 %136, i8* %10, align 1
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i8, i8* %10, align 1
  %139 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i8 zeroext %138, i64 %143)
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TRIG_FOLLOW, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %192

150:                                              ; preds = %137
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %154 [
    i32 130, label %157
    i32 128, label %160
    i32 129, label %163
  ]

154:                                              ; preds = %150
  %155 = load i32, i32* @GAT_VCC, align 4
  %156 = call zeroext i8 @pci230_gat_config(i32 0, i32 %155)
  store i8 %156, i8* %10, align 1
  br label %166

157:                                              ; preds = %150
  %158 = load i32, i32* @GAT_EXT, align 4
  %159 = call zeroext i8 @pci230_gat_config(i32 0, i32 %158)
  store i8 %159, i8* %10, align 1
  br label %166

160:                                              ; preds = %150
  %161 = load i32, i32* @GAT_NOUTNM2, align 4
  %162 = call zeroext i8 @pci230_gat_config(i32 0, i32 %161)
  store i8 %162, i8* %10, align 1
  br label %166

163:                                              ; preds = %150
  %164 = load i32, i32* @GAT_VCC, align 4
  %165 = call zeroext i8 @pci230_gat_config(i32 0, i32 %164)
  store i8 %165, i8* %10, align 1
  br label %166

166:                                              ; preds = %163, %160, %157, %154
  %167 = load i8, i8* %10, align 1
  %168 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %169 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @outb(i8 zeroext %167, i64 %172)
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %191 [
    i32 128, label %177
    i32 129, label %187
  ]

177:                                              ; preds = %166
  %178 = load i32, i32* @GAT_VCC, align 4
  %179 = call zeroext i8 @pci230_gat_config(i32 1, i32 %178)
  store i8 %179, i8* %10, align 1
  %180 = load i8, i8* %10, align 1
  %181 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %182 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i8 zeroext %180, i64 %185)
  br label %191

187:                                              ; preds = %166
  %188 = load i32, i32* @pci230_ai_inttrig_scan_begin, align 4
  %189 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %190 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %166, %187, %177
  br label %192

192:                                              ; preds = %191, %137
  br label %204

193:                                              ; preds = %117
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 129
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %200 = load i32, i32* @RES_Z2CT2, align 4
  %201 = load i32, i32* @OWNER_AICMD, align 4
  %202 = call i32 @pci230_release_shared(%struct.comedi_device* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  br label %204

204:                                              ; preds = %203, %192
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local zeroext i8 @pci230_gat_config(i32, i32) #1

declare dso_local i32 @pci230_release_shared(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
