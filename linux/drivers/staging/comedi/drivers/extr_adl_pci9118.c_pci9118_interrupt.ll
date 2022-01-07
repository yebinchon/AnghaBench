; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.pci9118_private*, %struct.comedi_subdevice* }
%struct.pci9118_private = type { i32, i32, i64, i64, i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PCI9118_INT_CTRL_REG = common dso_local global i64 0, align 8
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@ANY_S593X_INT = common dso_local global i32 0, align 4
@MASTER_ABORT_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"AMCC IRQ - MASTER DMA ABORT!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@TARGET_ABORT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"AMCC IRQ - TARGET DMA ABORT!\0A\00", align 1
@PCI9118_AI_STATUS_REG = common dso_local global i64 0, align 8
@PCI9118_AI_STATUS_NFULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"A/D FIFO Full status (Fatal Error!)\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@PCI9118_AI_STATUS_BOVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"A/D Burst Mode Overrun Status (Fatal Error!)\0A\00", align 1
@PCI9118_AI_STATUS_ADOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"A/D Over Speed Status (Warning!)\0A\00", align 1
@PCI9118_AI_STATUS_ADOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"A/D Overrun Status (Fatal Error!)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCI9118_AI_STATUS_DTH = common dso_local global i32 0, align 4
@PCI9118_INT_CTRL_DTRG = common dso_local global i32 0, align 4
@START_AI_EXT = common dso_local global i32 0, align 4
@STOP_AI_EXT = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pci9118_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.pci9118_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.comedi_device*
  store %struct.comedi_device* %13, %struct.comedi_device** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 3
  %19 = load %struct.pci9118_private*, %struct.pci9118_private** %18, align 8
  store %struct.pci9118_private* %19, %struct.pci9118_private** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %271

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inl(i64 %31)
  %33 = and i32 %32, 15
  store i32 %33, i32* %9, align 4
  %34 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %35 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @inl(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ANY_S593X_INT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %271

49:                                               ; preds = %42, %26
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, 16711680
  %52 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %53 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outl(i32 %51, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MASTER_ABORT_INT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %49
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  br label %266

74:                                               ; preds = %49
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @TARGET_ABORT_INT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %266

91:                                               ; preds = %74
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCI9118_AI_STATUS_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @inl(i64 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @PCI9118_AI_STATUS_NFULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %91
  %103 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %108 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  br label %266

116:                                              ; preds = %91
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @PCI9118_AI_STATUS_BOVER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %127 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %266

135:                                              ; preds = %116
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @PCI9118_AI_STATUS_ADOS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %146 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %266

152:                                              ; preds = %135
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @PCI9118_AI_STATUS_ADOR, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %163 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  br label %266

171:                                              ; preds = %152
  %172 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %173 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %177, i32* %3, align 4
  br label %271

178:                                              ; preds = %171
  %179 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %180 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %252

183:                                              ; preds = %178
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @PCI9118_AI_STATUS_DTH, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %251

188:                                              ; preds = %183
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @PCI9118_INT_CTRL_DTRG, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %251

193:                                              ; preds = %188
  %194 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %195 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @START_AI_EXT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %193
  %201 = load i32, i32* @START_AI_EXT, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %204 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %208 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @STOP_AI_EXT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %200
  %214 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %215 = call i32 @pci9118_exttrg_enable(%struct.comedi_device* %214, i32 0)
  br label %216

216:                                              ; preds = %213, %200
  %217 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %218 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %219 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @pci9118_start_pacer(%struct.comedi_device* %217, i32 %220)
  %222 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %223 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %226 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @PCI9118_AI_CTRL_REG, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @outl(i32 %224, i64 %229)
  br label %250

231:                                              ; preds = %193
  %232 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %233 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @STOP_AI_EXT, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %231
  %239 = load i32, i32* @STOP_AI_EXT, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %242 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %246 = call i32 @pci9118_exttrg_enable(%struct.comedi_device* %245, i32 0)
  %247 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %248 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %247, i32 0, i32 3
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %238, %231
  br label %250

250:                                              ; preds = %249, %216
  br label %251

251:                                              ; preds = %250, %188, %183
  br label %252

252:                                              ; preds = %251, %178
  %253 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  %254 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %259 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %260 = call i32 @pci9118_ai_get_dma(%struct.comedi_device* %258, %struct.comedi_subdevice* %259)
  br label %265

261:                                              ; preds = %252
  %262 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %263 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %264 = call i32 @pci9118_ai_get_onesample(%struct.comedi_device* %262, %struct.comedi_subdevice* %263)
  br label %265

265:                                              ; preds = %261, %257
  br label %266

266:                                              ; preds = %265, %157, %140, %121, %102, %79, %62
  %267 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %268 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %269 = call i32 @comedi_handle_events(%struct.comedi_device* %267, %struct.comedi_subdevice* %268)
  %270 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %266, %176, %47, %24
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci9118_exttrg_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_start_pacer(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_ai_get_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci9118_ai_get_onesample(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
