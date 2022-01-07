; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_handle_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_handle_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci224_private* }
%struct.pci224_private = type { i32*, i64*, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i64, i32 }

@PCI224_DACCON = common dso_local global i64 0, align 8
@PCI224_DACCON_FIFOFL_MASK = common dso_local global i16 0, align 2
@PCI224_FIFO_ROOM_EMPTY = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI224_FIFO_ROOM_ONETOHALF = common dso_local global i32 0, align 4
@PCI224_FIFO_ROOM_HALFTOFULL = common dso_local global i32 0, align 4
@PCI224_FIFO_ROOM_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"AO buffer underrun\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@PCI224_DACDATA = common dso_local global i64 0, align 8
@PCI224_DACCON_FIFOINTR_EMPTY = common dso_local global i16 0, align 2
@PCI224_DACCON_FIFOINTR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCI224_DACCON_TRIG_Z2CT0 = common dso_local global i16 0, align 2
@CR_INVERT = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_EXTN = common dso_local global i16 0, align 2
@PCI224_DACCON_TRIG_EXTP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_handle_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_handle_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci224_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load %struct.pci224_private*, %struct.pci224_private** %14, align 8
  store %struct.pci224_private* %15, %struct.pci224_private** %5, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %6, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %21 = call i32 @comedi_nscans_left(%struct.comedi_subdevice* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI224_DACCON, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i16 @inw(i64 %26)
  store i16 %27, i16* %9, align 2
  %28 = load i16, i16* %9, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @PCI224_DACCON_FIFOFL_MASK, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %29, %31
  switch i32 %32, label %66 [
    i32 130, label %33
    i32 128, label %62
    i32 129, label %64
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @PCI224_FIFO_ROOM_EMPTY, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TRIG_COUNT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i32, i32* @COMEDI_CB_EOA, align 4
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 8
  %58 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = call i32 @comedi_handle_events(%struct.comedi_device* %58, %struct.comedi_subdevice* %59)
  br label %232

61:                                               ; preds = %40, %33
  br label %68

62:                                               ; preds = %2
  %63 = load i32, i32* @PCI224_FIFO_ROOM_ONETOHALF, align 4
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %2
  %65 = load i32, i32* @PCI224_FIFO_ROOM_HALFTOFULL, align 4
  store i32 %65, i32* %8, align 4
  br label %68

66:                                               ; preds = %2
  %67 = load i32, i32* @PCI224_FIFO_ROOM_FULL, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %64, %62, %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PCI224_FIFO_ROOM_ONETOHALF, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %75, %72
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = udiv i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %88
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %143, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %100
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %106 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %107 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %105, i32* %109, i32 %112)
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %139, %104
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %114
  %121 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %122 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %125 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %123, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PCI224_DACDATA, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outw(i32 %132, i64 %137)
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %114

142:                                              ; preds = %114
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %100

146:                                              ; preds = %100
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @TRIG_COUNT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %146
  %153 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %154 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %157, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %152
  %163 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %164 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i16, i16* @PCI224_DACCON_FIFOINTR_EMPTY, align 2
  %167 = load i32, i32* @PCI224_DACCON_FIFOINTR_MASK, align 4
  %168 = call i8* @COMBINE(i32 %165, i16 zeroext %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %171 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %173 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PCI224_DACCON, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outw(i32 %174, i64 %179)
  br label %181

181:                                              ; preds = %162, %152, %146
  %182 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %183 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @PCI224_DACCON_TRIG_NONE, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %228

189:                                              ; preds = %181
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @TRIG_TIMER, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i16, i16* @PCI224_DACCON_TRIG_Z2CT0, align 2
  store i16 %196, i16* %12, align 2
  br label %209

197:                                              ; preds = %189
  %198 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %199 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CR_INVERT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i16, i16* @PCI224_DACCON_TRIG_EXTN, align 2
  store i16 %205, i16* %12, align 2
  br label %208

206:                                              ; preds = %197
  %207 = load i16, i16* @PCI224_DACCON_TRIG_EXTP, align 2
  store i16 %207, i16* %12, align 2
  br label %208

208:                                              ; preds = %206, %204
  br label %209

209:                                              ; preds = %208, %195
  %210 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %211 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i16, i16* %12, align 2
  %214 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %215 = call i8* @COMBINE(i32 %212, i16 zeroext %213, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %218 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %220 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %223 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @PCI224_DACCON, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @outw(i32 %221, i64 %226)
  br label %228

228:                                              ; preds = %209, %181
  %229 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %230 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %231 = call i32 @comedi_handle_events(%struct.comedi_device* %229, %struct.comedi_subdevice* %230)
  br label %232

232:                                              ; preds = %228, %50
  ret void
}

declare dso_local i32 @comedi_nscans_left(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i8* @COMBINE(i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
