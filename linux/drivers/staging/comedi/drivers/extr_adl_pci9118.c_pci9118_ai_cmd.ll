; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_8254*, %struct.pci9118_private* }
%struct.comedi_8254 = type { i32, i32 }
%struct.pci9118_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.pci9118_dmabuf*, i32, i64, i32 }
%struct.pci9118_dmabuf = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i64, i64, i32, i32, i32, i32 }

@TRIG_EXT = common dso_local global i64 0, align 8
@START_AI_EXT = common dso_local global i32 0, align 4
@STOP_AI_EXT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"range/channel list is too long for actual configuration!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_TMRTR = common dso_local global i32 0, align 4
@PCI9118_AI_CTRL_INT = common dso_local global i32 0, align 4
@PCI9118_INT_CTRL_TIMER = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_AM = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_REG = common dso_local global i64 0, align 8
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"cmd->scan_begin_src=TRIG_TIMER works only with bus mastering!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_BM = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_BS = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_BSSH = common dso_local global i32 0, align 4
@PCI9118_AI_BURST_NUM_REG = common dso_local global i64 0, align 8
@PCI9118_AI_CTRL_EXTM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Unable to determine acquisition mode! BUG in (*do_cmdtest)?\0A\00", align 1
@PCI9118_AI_CTRL_DMA = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_PDTRG = common dso_local global i32 0, align 4
@PCI9118_AI_CFG_PETRG = common dso_local global i32 0, align 4
@PCI9118_AI_STATUS_REG = common dso_local global i64 0, align 8
@PCI9118_INT_CTRL_REG = common dso_local global i64 0, align 8
@AINT_WRITE_COMPL = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@TRIG_INT = common dso_local global i64 0, align 8
@pci9118_ai_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pci9118_private*, align 8
  %7 = alloca %struct.comedi_8254*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci9118_dmabuf*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 3
  %14 = load %struct.pci9118_private*, %struct.pci9118_private** %13, align 8
  store %struct.pci9118_private* %14, %struct.pci9118_private** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  %17 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  store %struct.comedi_8254* %17, %struct.comedi_8254** %7, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %23 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %22, i32 0, i32 16
  store i32 0, i32* %23, align 8
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %28 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %30 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %32 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRIG_EXT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* @START_AI_EXT, align 4
  %40 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %41 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %2
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_EXT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %52 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %51, i32 0, i32 3
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @STOP_AI_EXT, align 4
  %54 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %55 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %54, i32 0, i32 16
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TRIG_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %66 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TRIG_COUNT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %75 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %74, i32 0, i32 3
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %78 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %80 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %82 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %81, i32 0, i32 15
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %150

85:                                               ; preds = %76
  %86 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %87 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %86, i32 0, i32 4
  store i32 1, i32* %87, align 8
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %85
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TRIG_NOW, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %107 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %99
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TRIG_TIMER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %116 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %115, i32 0, i32 4
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %94, %85
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %118
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TRIG_FOLLOW, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %144 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %143, i32 0, i32 4
  store i32 0, i32* %144, align 8
  br label %148

145:                                              ; preds = %136
  %146 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %147 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %131, %125, %118
  br label %153

150:                                              ; preds = %76
  %151 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %152 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %151, i32 0, i32 4
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRIG_NOW, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %254

159:                                              ; preds = %153
  %160 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %161 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %254

164:                                              ; preds = %159
  %165 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %166 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %165, i32 0, i32 1
  store i32 2, i32* %166, align 4
  %167 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %168 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %183

171:                                              ; preds = %164
  %172 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %173 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %178 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 4
  %181 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %182 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %176, %171, %164
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %188 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %193 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %191, %183
  %198 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %199 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = udiv i32 %200, %203
  store i32 %204, i32* %9, align 4
  %205 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %206 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = urem i32 %207, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %197
  %214 = load i32, i32* %9, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %213, %197
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %219 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 1
  %222 = icmp ugt i32 %217, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %216
  %224 = load i32, i32* %9, align 4
  %225 = add i32 %224, 1
  %226 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %227 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %229 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %252

232:                                              ; preds = %223
  %233 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %234 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %237 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %235, %238
  %240 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %241 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %239, %242
  %244 = and i32 %243, 1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %232
  %247 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %248 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %246, %232
  br label %252

252:                                              ; preds = %251, %223
  br label %253

253:                                              ; preds = %252, %216
  br label %254

254:                                              ; preds = %253, %159, %153
  %255 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %256 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %257, %260
  %262 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %263 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %261, %264
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = sdiv i32 %269, %272
  %274 = mul i32 %266, %273
  %275 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %276 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %275, i32 0, i32 7
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %279 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ugt i32 %277, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %254
  %283 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %284 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @dev_err(i32 %285, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %619

289:                                              ; preds = %254
  %290 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %291 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %292 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %293 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %299 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %302 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @pci9118_set_chanlist(%struct.comedi_device* %290, %struct.comedi_subdevice* %291, i32 %294, i32 %297, i32 %300, i32 %303)
  %305 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %306 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %305, i32 0, i32 8
  store i32 0, i32* %306, align 8
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @TRIG_TIMER, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %402

312:                                              ; preds = %289
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @TRIG_TIMER, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %402

318:                                              ; preds = %312
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @TRIG_EXT, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %326 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %325, i32 0, i32 8
  store i32 4, i32* %326, align 8
  br label %330

327:                                              ; preds = %318
  %328 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %329 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %328, i32 0, i32 8
  store i32 1, i32* %329, align 8
  br label %330

330:                                              ; preds = %327, %324
  %331 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %332 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %333 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %332, i32 0, i32 6
  %334 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %335 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %338 = and i32 %336, %337
  %339 = call i32 @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254* %331, i32* %333, i32 %338)
  %340 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %341 = call i32 @comedi_8254_update_divisors(%struct.comedi_8254* %340)
  %342 = load i32, i32* @PCI9118_AI_CTRL_TMRTR, align 4
  %343 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %344 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %343, i32 0, i32 12
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %348 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %362, label %351

351:                                              ; preds = %330
  %352 = load i32, i32* @PCI9118_AI_CTRL_INT, align 4
  %353 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %354 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %353, i32 0, i32 12
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  %357 = load i32, i32* @PCI9118_INT_CTRL_TIMER, align 4
  %358 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %359 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %358, i32 0, i32 14
  %360 = load i32, i32* %359, align 8
  %361 = or i32 %360, %357
  store i32 %361, i32* %359, align 8
  br label %362

362:                                              ; preds = %351, %330
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @TRIG_EXT, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %401

368:                                              ; preds = %362
  %369 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %370 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %369, i32 0, i32 13
  %371 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %370, align 8
  %372 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %371, i64 0
  store %struct.pci9118_dmabuf* %372, %struct.pci9118_dmabuf** %11, align 8
  %373 = load i32, i32* @PCI9118_AI_CFG_AM, align 4
  %374 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %375 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %374, i32 0, i32 9
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 4
  %378 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %379 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %378, i32 0, i32 9
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %382 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %385 = add nsw i64 %383, %384
  %386 = call i32 @outl(i32 %380, i64 %385)
  %387 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %388 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %11, align 8
  %389 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = ashr i32 %390, 1
  %392 = load i32, i32* @I8254_MODE0, align 4
  %393 = load i32, i32* @I8254_BINARY, align 4
  %394 = or i32 %392, %393
  %395 = call i32 @comedi_8254_load(%struct.comedi_8254* %387, i32 0, i32 %391, i32 %394)
  %396 = load i32, i32* @PCI9118_AI_CFG_START, align 4
  %397 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %398 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %397, i32 0, i32 9
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %368, %362
  br label %402

402:                                              ; preds = %401, %312, %289
  %403 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %404 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %403, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @TRIG_TIMER, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %487

408:                                              ; preds = %402
  %409 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %410 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %409, i32 0, i32 4
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @TRIG_EXT, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %487

414:                                              ; preds = %408
  %415 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %416 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %414
  %420 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %421 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @dev_err(i32 %422, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %424 = load i32, i32* @EIO, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %3, align 4
  br label %619

426:                                              ; preds = %414
  %427 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %428 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %427, i32 0, i32 8
  store i32 2, i32* %428, align 8
  %429 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %430 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %431 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %432 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %431, i32 0, i32 8
  %433 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %434 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %433, i32 0, i32 6
  %435 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %436 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %439 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %442 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %441, i32 0, i32 1
  %443 = load %struct.comedi_8254*, %struct.comedi_8254** %7, align 8
  %444 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %443, i32 0, i32 0
  %445 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %446 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @pci9118_calc_divisors(%struct.comedi_device* %429, %struct.comedi_subdevice* %430, i32* %432, i32* %434, i32 %437, i32 %440, i32* %442, i32* %444, i32 %447)
  %449 = load i32, i32* @PCI9118_AI_CTRL_TMRTR, align 4
  %450 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %451 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %450, i32 0, i32 12
  %452 = load i32, i32* %451, align 8
  %453 = or i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load i32, i32* @PCI9118_AI_CFG_BM, align 4
  %455 = load i32, i32* @PCI9118_AI_CFG_BS, align 4
  %456 = or i32 %454, %455
  %457 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %458 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 4
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 4
  %461 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %462 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %461, i32 0, i32 4
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @TRIG_NOW, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %477

466:                                              ; preds = %426
  %467 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %468 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %466
  %472 = load i32, i32* @PCI9118_AI_CFG_BSSH, align 4
  %473 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %474 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %473, i32 0, i32 9
  %475 = load i32, i32* %474, align 4
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 4
  br label %477

477:                                              ; preds = %471, %466, %426
  %478 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %479 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %482 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @PCI9118_AI_BURST_NUM_REG, align 8
  %485 = add nsw i64 %483, %484
  %486 = call i32 @outl(i32 %480, i64 %485)
  br label %487

487:                                              ; preds = %477, %408, %402
  %488 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %489 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @TRIG_FOLLOW, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %507

493:                                              ; preds = %487
  %494 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %495 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %494, i32 0, i32 4
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @TRIG_EXT, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %507

499:                                              ; preds = %493
  %500 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %501 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %500, i32 0, i32 8
  store i32 3, i32* %501, align 8
  %502 = load i32, i32* @PCI9118_AI_CTRL_EXTM, align 4
  %503 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %504 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %503, i32 0, i32 12
  %505 = load i32, i32* %504, align 8
  %506 = or i32 %505, %502
  store i32 %506, i32* %504, align 8
  br label %507

507:                                              ; preds = %499, %493, %487
  %508 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %509 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %508, i32 0, i32 8
  %510 = load i32, i32* %509, align 8
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %507
  %513 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %514 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @dev_err(i32 %515, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %517 = load i32, i32* @EINVAL, align 4
  %518 = sub nsw i32 0, %517
  store i32 %518, i32* %3, align 4
  br label %619

519:                                              ; preds = %507
  %520 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %521 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 8
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %530

524:                                              ; preds = %519
  %525 = load i32, i32* @PCI9118_AI_CTRL_DMA, align 4
  %526 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %527 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %526, i32 0, i32 12
  %528 = load i32, i32* %527, align 8
  %529 = or i32 %528, %525
  store i32 %529, i32* %527, align 8
  br label %530

530:                                              ; preds = %524, %519
  %531 = load i32, i32* @PCI9118_AI_CFG_PDTRG, align 4
  %532 = load i32, i32* @PCI9118_AI_CFG_PETRG, align 4
  %533 = or i32 %531, %532
  %534 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %535 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %534, i32 0, i32 9
  store i32 %533, i32* %535, align 4
  %536 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %537 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %536, i32 0, i32 9
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %540 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %539, i32 0, i32 0
  %541 = load i64, i64* %540, align 8
  %542 = load i64, i64* @PCI9118_AI_CFG_REG, align 8
  %543 = add nsw i64 %541, %542
  %544 = call i32 @outl(i32 %538, i64 %543)
  %545 = call i32 @udelay(i32 1)
  %546 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %547 = call i32 @pci9118_ai_reset_fifo(%struct.comedi_device* %546)
  %548 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %549 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = load i64, i64* @PCI9118_AI_STATUS_REG, align 8
  %552 = add nsw i64 %550, %551
  %553 = call i32 @inl(i64 %552)
  %554 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %555 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = load i64, i64* @PCI9118_INT_CTRL_REG, align 8
  %558 = add nsw i64 %556, %557
  %559 = call i32 @inl(i64 %558)
  %560 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %561 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %560, i32 0, i32 11
  store i64 0, i64* %561, align 8
  %562 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %563 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %562, i32 0, i32 4
  %564 = load i32, i32* %563, align 8
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %578

566:                                              ; preds = %530
  %567 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %568 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %569 = call i32 @pci9118_ai_setup_dma(%struct.comedi_device* %567, %struct.comedi_subdevice* %568)
  %570 = load i32, i32* @AINT_WRITE_COMPL, align 4
  %571 = or i32 33554432, %570
  %572 = load %struct.pci9118_private*, %struct.pci9118_private** %6, align 8
  %573 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %572, i32 0, i32 10
  %574 = load i64, i64* %573, align 8
  %575 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %576 = add nsw i64 %574, %575
  %577 = call i32 @outl(i32 %571, i64 %576)
  br label %581

578:                                              ; preds = %530
  %579 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %580 = call i32 @pci9118_amcc_int_ena(%struct.comedi_device* %579, i32 1)
  br label %581

581:                                              ; preds = %578, %566
  %582 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %583 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %582, i32 0, i32 1
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @TRIG_NOW, align 8
  %586 = icmp eq i64 %584, %585
  br i1 %586, label %587, label %590

587:                                              ; preds = %581
  %588 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %589 = call i32 @pci9118_ai_cmd_start(%struct.comedi_device* %588)
  br label %603

590:                                              ; preds = %581
  %591 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %592 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %591, i32 0, i32 1
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* @TRIG_INT, align 8
  %595 = icmp eq i64 %593, %594
  br i1 %595, label %596, label %602

596:                                              ; preds = %590
  %597 = load i32, i32* @pci9118_ai_inttrig, align 4
  %598 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %599 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %598, i32 0, i32 1
  %600 = load %struct.TYPE_2__*, %struct.TYPE_2__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %600, i32 0, i32 0
  store i32 %597, i32* %601, align 8
  br label %602

602:                                              ; preds = %596, %590
  br label %603

603:                                              ; preds = %602, %587
  %604 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %605 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %604, i32 0, i32 1
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @TRIG_EXT, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %615, label %609

609:                                              ; preds = %603
  %610 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %611 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %610, i32 0, i32 2
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @TRIG_EXT, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %618

615:                                              ; preds = %609, %603
  %616 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %617 = call i32 @pci9118_exttrg_enable(%struct.comedi_device* %616, i32 1)
  br label %618

618:                                              ; preds = %615, %609
  store i32 0, i32* %3, align 4
  br label %619

619:                                              ; preds = %618, %512, %419, %282
  %620 = load i32, i32* %3, align 4
  ret i32 %620
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci9118_set_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(%struct.comedi_8254*, i32*, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(%struct.comedi_8254*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_8254_load(%struct.comedi_8254*, i32, i32, i32) #1

declare dso_local i32 @pci9118_calc_divisors(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci9118_ai_reset_fifo(%struct.comedi_device*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @pci9118_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci9118_amcc_int_ena(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_ai_cmd_start(%struct.comedi_device*) #1

declare dso_local i32 @pci9118_exttrg_enable(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
