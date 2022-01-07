; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32, %struct.pcmuio_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.pcmuio_board = type { i32 }
%struct.comedi_devconfig = type { i64* }
%struct.pcmuio_private = type { i64, %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i32 }

@PCMUIO_ASIC_IOSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCMUIO_MAX_ASICS = common dso_local global i32 0, align 4
@pcmuio_interrupt = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@pcmuio_dio_insn_bits = common dso_local global i32 0, align 4
@pcmuio_dio_insn_config = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@SDF_PACKED = common dso_local global i32 0, align 4
@pcmuio_cancel = common dso_local global i32 0, align 4
@pcmuio_cmd = common dso_local global i32 0, align 4
@pcmuio_cmdtest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcmuio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcmuio_board*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.pcmuio_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcmuio_asic*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 5
  %14 = load %struct.pcmuio_board*, %struct.pcmuio_board** %13, align 8
  store %struct.pcmuio_board* %14, %struct.pcmuio_board** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pcmuio_board*, %struct.pcmuio_board** %6, align 8
  %22 = getelementptr inbounds %struct.pcmuio_board, %struct.pcmuio_board* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCMUIO_ASIC_IOSIZE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @comedi_request_region(%struct.comedi_device* %15, i64 %20, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %239

31:                                               ; preds = %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call %struct.pcmuio_private* @comedi_alloc_devpriv(%struct.comedi_device* %32, i32 16)
  store %struct.pcmuio_private* %33, %struct.pcmuio_private** %8, align 8
  %34 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %35 = icmp ne %struct.pcmuio_private* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %239

39:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PCMUIO_MAX_ASICS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %46 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %45, i32 0, i32 1
  %47 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %47, i64 %49
  store %struct.pcmuio_asic* %50, %struct.pcmuio_asic** %11, align 8
  %51 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %11, align 8
  %52 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %51, i32 0, i32 1
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %11, align 8
  %55 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_init(i32* %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = call i32 @pcmuio_reset(%struct.comedi_device* %61)
  %63 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %60
  %70 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %71 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @pcmuio_interrupt, align 4
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = call i32 @request_irq(i64 %74, i32 %75, i32 0, i32 %78, %struct.comedi_device* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %69
  %84 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %85 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %69
  br label %92

92:                                               ; preds = %91, %60
  %93 = load %struct.pcmuio_board*, %struct.pcmuio_board** %6, align 8
  %94 = getelementptr inbounds %struct.pcmuio_board, %struct.pcmuio_board* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %147

97:                                               ; preds = %92
  %98 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %99 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %109 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %114 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %146

115:                                              ; preds = %97
  %116 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %117 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %115
  %123 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %124 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @pcmuio_interrupt, align 4
  %129 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = call i32 @request_irq(i64 %127, i32 %128, i32 0, i32 %131, %struct.comedi_device* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %122
  %137 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %138 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %143 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %136, %122
  br label %145

145:                                              ; preds = %144, %115
  br label %146

146:                                              ; preds = %145, %107
  br label %147

147:                                              ; preds = %146, %92
  %148 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %149 = load %struct.pcmuio_board*, %struct.pcmuio_board** %6, align 8
  %150 = getelementptr inbounds %struct.pcmuio_board, %struct.pcmuio_board* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 2
  %153 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %148, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %239

158:                                              ; preds = %147
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %235, %158
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %162 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %238

165:                                              ; preds = %159
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 3
  %168 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %168, i64 %170
  store %struct.comedi_subdevice* %171, %struct.comedi_subdevice** %7, align 8
  %172 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %174 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %173, i32 0, i32 10
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @SDF_READABLE, align 4
  %176 = load i32, i32* @SDF_WRITABLE, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %180, i32 0, i32 1
  store i32 24, i32* %181, align 4
  %182 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  %184 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %184, i32 0, i32 9
  store i32* @range_digital, i32** %185, align 8
  %186 = load i32, i32* @pcmuio_dio_insn_bits, align 4
  %187 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @pcmuio_dio_insn_config, align 4
  %190 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %165
  %195 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %196 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194, %165
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %234

202:                                              ; preds = %199
  %203 = load %struct.pcmuio_private*, %struct.pcmuio_private** %8, align 8
  %204 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %202, %194
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %209 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %210 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %209, i32 0, i32 2
  store %struct.comedi_subdevice* %208, %struct.comedi_subdevice** %210, align 8
  %211 = load i32, i32* @SDF_CMD_READ, align 4
  %212 = load i32, i32* @SDF_LSAMPL, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @SDF_PACKED, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %217 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @pcmuio_cancel, align 4
  %226 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @pcmuio_cmd, align 4
  %229 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* @pcmuio_cmdtest, align 4
  %232 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %207, %202, %199
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %159

238:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %156, %36, %29
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local %struct.pcmuio_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pcmuio_reset(%struct.comedi_device*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
