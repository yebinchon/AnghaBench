; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_board_struct = type { i32, i32 }
%struct.comedi_device = type { i32, %struct.TYPE_2__*, i32, %struct.ni_private*, %struct.ni_board_struct* }
%struct.TYPE_2__ = type { i32* }
%struct.ni_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i8*, i8*, i8* }
%struct.pci_dev = type { i32 }

@ni_boards = common dso_local global %struct.ni_board_struct* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@ni_reg_6xxx_mask = common dso_local global i32 0, align 4
@ni_reg_611x = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i32 0, align 4
@ni_reg_622x = common dso_local global i32 0, align 4
@ni_reg_625x = common dso_local global i32 0, align 4
@ni_reg_628x = common dso_local global i32 0, align 4
@ni_reg_67xx_mask = common dso_local global i32 0, align 4
@ni_reg_6711 = common dso_local global i32 0, align 4
@ni_reg_6713 = common dso_local global i32 0, align 4
@ni_E_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@pcimio_ai_change = common dso_local global i32 0, align 4
@NI_AI_SUBDEV = common dso_local global i64 0, align 8
@pcimio_ao_change = common dso_local global i32 0, align 4
@NI_AO_SUBDEV = common dso_local global i64 0, align 8
@pcimio_gpct0_change = common dso_local global i32 0, align 4
@pcimio_gpct1_change = common dso_local global i32 0, align 4
@pcimio_dio_change = common dso_local global i32 0, align 4
@NI_DIO_SUBDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pcimio_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcimio_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ni_board_struct*, align 8
  %8 = alloca %struct.ni_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store %struct.ni_board_struct* null, %struct.ni_board_struct** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ni_board_struct*, %struct.ni_board_struct** @ni_boards, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.ni_board_struct* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ni_board_struct*, %struct.ni_board_struct** @ni_boards, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %18, i64 %19
  store %struct.ni_board_struct* %20, %struct.ni_board_struct** %7, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %23 = icmp ne %struct.ni_board_struct* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %311

27:                                               ; preds = %21
  %28 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 4
  store %struct.ni_board_struct* %28, %struct.ni_board_struct** %30, align 8
  %31 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %32 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = call i32 @comedi_pci_enable(%struct.comedi_device* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %311

42:                                               ; preds = %27
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = call i32 @ni_alloc_private(%struct.comedi_device* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %311

49:                                               ; preds = %42
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 3
  %52 = load %struct.ni_private*, %struct.ni_private** %51, align 8
  store %struct.ni_private* %52, %struct.ni_private** %8, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = call i32 @mite_attach(%struct.comedi_device* %53, i32 0)
  %55 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %56 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %58 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %311

64:                                               ; preds = %49
  %65 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %66 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ni_reg_m_series_mask, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %73 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %76 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ni_reg_6xxx_mask, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %83 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %86 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ni_reg_611x, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %92 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %95 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ni_reg_6143, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %101 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %100, i32 0, i32 3
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %104 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ni_reg_622x, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %110 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %113 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ni_reg_625x, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %119 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %118, i32 0, i32 5
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %122 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ni_reg_628x, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %128 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %127, i32 0, i32 6
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %120
  %130 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %131 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ni_reg_67xx_mask, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %138 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %137, i32 0, i32 7
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %141 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ni_reg_6711, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %147 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %146, i32 0, i32 8
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %139
  %149 = load %struct.ni_board_struct*, %struct.ni_board_struct** %7, align 8
  %150 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ni_reg_6713, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %156 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %155, i32 0, i32 9
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %148
  %158 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %159 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %158, i32 0, i32 11
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @mite_alloc_ring(i32 %160)
  %162 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %163 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %162, i32 0, i32 14
  store i8* %161, i8** %163, align 8
  %164 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %165 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %164, i32 0, i32 14
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %311

171:                                              ; preds = %157
  %172 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %173 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @mite_alloc_ring(i32 %174)
  %176 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %177 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %176, i32 0, i32 13
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %179 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %178, i32 0, i32 13
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %311

185:                                              ; preds = %171
  %186 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %187 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = call i8* @mite_alloc_ring(i32 %188)
  %190 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %191 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %190, i32 0, i32 12
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %193 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %192, i32 0, i32 12
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %185
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %3, align 4
  br label %311

199:                                              ; preds = %185
  %200 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %201 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @mite_alloc_ring(i32 %202)
  %204 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %205 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %204, i32 0, i32 10
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  store i8* %203, i8** %207, align 8
  %208 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %209 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %208, i32 0, i32 10
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %199
  %215 = load i32, i32* @ENOMEM, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %311

217:                                              ; preds = %199
  %218 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %219 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %218, i32 0, i32 11
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @mite_alloc_ring(i32 %220)
  %222 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %223 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %222, i32 0, i32 10
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  store i8* %221, i8** %225, align 8
  %226 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %227 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %226, i32 0, i32 10
  %228 = load i8**, i8*** %227, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 1
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %217
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %3, align 4
  br label %311

235:                                              ; preds = %217
  %236 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %237 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %242 = call i32 @m_series_init_eeprom_buffer(%struct.comedi_device* %241)
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  %245 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %250 = call i32 @init_6143(%struct.comedi_device* %249)
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %253 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %251
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @ni_E_interrupt, align 4
  %260 = load i32, i32* @IRQF_SHARED, align 4
  %261 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %262 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %265 = call i32 @request_irq(i32 %258, i32 %259, i32 %260, i32 %263, %struct.comedi_device* %264)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %257
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %271 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %268, %257
  br label %273

273:                                              ; preds = %272, %251
  %274 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %275 = call i32 @ni_E_init(%struct.comedi_device* %274, i32 0, i32 1)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i32, i32* %10, align 4
  store i32 %279, i32* %3, align 4
  br label %311

280:                                              ; preds = %273
  %281 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %282 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %281, i32 0, i32 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i64, i64* @NI_AI_SUBDEV, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i32* @pcimio_ai_change, i32** %286, align 8
  %287 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %288 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %287, i32 0, i32 1
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load i64, i64* @NI_AO_SUBDEV, align 8
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 0
  store i32* @pcimio_ao_change, i32** %292, align 8
  %293 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %294 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %293, i32 0, i32 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = call i64 @NI_GPCT_SUBDEV(i32 0)
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 0
  store i32* @pcimio_gpct0_change, i32** %298, align 8
  %299 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %300 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %299, i32 0, i32 1
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** %300, align 8
  %302 = call i64 @NI_GPCT_SUBDEV(i32 1)
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  store i32* @pcimio_gpct1_change, i32** %304, align 8
  %305 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %306 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %305, i32 0, i32 1
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** %306, align 8
  %308 = load i64, i64* @NI_DIO_SUBDEV, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 0
  store i32* @pcimio_dio_change, i32** %310, align 8
  store i32 0, i32* %3, align 4
  br label %311

311:                                              ; preds = %280, %278, %232, %214, %196, %182, %168, %61, %47, %40, %24
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.ni_board_struct*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @mite_attach(%struct.comedi_device*, i32) #1

declare dso_local i8* @mite_alloc_ring(i32) #1

declare dso_local i32 @m_series_init_eeprom_buffer(%struct.comedi_device*) #1

declare dso_local i32 @init_6143(%struct.comedi_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @NI_GPCT_SUBDEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
