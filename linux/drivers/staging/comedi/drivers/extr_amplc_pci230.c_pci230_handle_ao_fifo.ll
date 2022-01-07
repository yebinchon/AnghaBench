; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci230_private* }
%struct.pci230_private = type { i64, i32 }
%struct.comedi_subdevice = type { i16*, %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i64, i32* }

@PCI230_DACCON = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_UNDERRUN_LATCHED = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [18 x i8] c"AO FIFO underrun\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_HALF = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [20 x i8] c"AO buffer underrun\0A\00", align 1
@PCI230P2_DAC_FIFO_FULL = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFOROOM_FULL = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFOROOM_HALFTOFULL = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_EMPTY = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFOROOM_EMPTY = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFOROOM_ONETOHALF = common dso_local global i32 0, align 4
@PCI230P2_DAC_INT_FIFO_MASK = common dso_local global i32 0, align 4
@PCI230P2_DAC_INT_FIFO_EMPTY = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ao_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_handle_ao_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci230_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.pci230_private*, %struct.pci230_private** %17, align 8
  store %struct.pci230_private* %18, %struct.pci230_private** %5, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 1
  %21 = load %struct.comedi_async*, %struct.comedi_async** %20, align 8
  store %struct.comedi_async* %21, %struct.comedi_async** %6, align 8
  %22 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 2
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %7, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %25 = call i32 @comedi_nscans_left(%struct.comedi_subdevice* %24, i32 0)
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %27 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI230_DACCON, align 8
  %30 = add nsw i64 %28, %29
  %31 = call zeroext i16 @inw(i64 %30)
  store i16 %31, i16* %10, align 2
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRIG_COUNT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @COMEDI_CB_EOA, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %37, %2
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = load i16, i16* %10, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_LATCHED, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %60 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %54, %47
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i16, i16* %10, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @PCI230P2_DAC_FIFO_HALF, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %80 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %74, %67, %64
  br label %85

85:                                               ; preds = %84, %44
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %230

88:                                               ; preds = %85
  %89 = load i16, i16* %10, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @PCI230P2_DAC_FIFO_FULL, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @PCI230P2_DAC_FIFOROOM_FULL, align 4
  store i32 %96, i32* %9, align 4
  br label %119

97:                                               ; preds = %88
  %98 = load i16, i16* %10, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @PCI230P2_DAC_FIFO_HALF, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @PCI230P2_DAC_FIFOROOM_HALFTOFULL, align 4
  store i32 %105, i32* %9, align 4
  br label %118

106:                                              ; preds = %97
  %107 = load i16, i16* %10, align 2
  %108 = zext i16 %107 to i32
  %109 = load i16, i16* @PCI230P2_DAC_FIFO_EMPTY, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @PCI230P2_DAC_FIFOROOM_EMPTY, align 4
  store i32 %114, i32* %9, align 4
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @PCI230P2_DAC_FIFOROOM_ONETOHALF, align 4
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = udiv i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %119
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %168, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %164, %135
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %136
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @CR_CHAN(i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %152 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %151, i16* %15, i32 1)
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = load i16, i16* %15, align 2
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @pci230_ao_write_fifo(%struct.comedi_device* %153, i16 zeroext %154, i32 %155)
  %157 = load i16, i16* %15, align 2
  %158 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %159 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %158, i32 0, i32 0
  %160 = load i16*, i16** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %160, i64 %162
  store i16 %157, i16* %163, align 2
  br label %164

164:                                              ; preds = %142
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %136

167:                                              ; preds = %136
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %131

171:                                              ; preds = %131
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TRIG_COUNT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %206

177:                                              ; preds = %171
  %178 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %179 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp sge i64 %180, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %177
  %186 = load i32, i32* @PCI230P2_DAC_INT_FIFO_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %189 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @PCI230P2_DAC_INT_FIFO_EMPTY, align 4
  %193 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %194 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %198 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %201 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @PCI230_DACCON, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @outw(i32 %199, i64 %204)
  br label %206

206:                                              ; preds = %185, %177, %171
  %207 = load %struct.pci230_private*, %struct.pci230_private** %5, align 8
  %208 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @PCI230_DACCON, align 8
  %211 = add nsw i64 %209, %210
  %212 = call zeroext i16 @inw(i64 %211)
  store i16 %212, i16* %10, align 2
  %213 = load i16, i16* %10, align 2
  %214 = zext i16 %213 to i32
  %215 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_LATCHED, align 2
  %216 = zext i16 %215 to i32
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %206
  %220 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @dev_err(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %224 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %225 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %13, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %13, align 4
  br label %229

229:                                              ; preds = %219, %206
  br label %230

230:                                              ; preds = %229, %85
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %233 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %237 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  ret i32 %243
}

declare dso_local i32 @comedi_nscans_left(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @pci230_ao_write_fifo(%struct.comedi_device*, i16 zeroext, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
