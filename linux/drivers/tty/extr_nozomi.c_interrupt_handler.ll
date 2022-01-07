; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s irq:0x%04X, prev:0x%04X\00", align 1
@RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Could not read status from card, we should disable interface\0A\00", align 1
@CTRL_UL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CTRL_UL\00", align 1
@CTRL_DL = common dso_local global i32 0, align 4
@MDM_DL = common dso_local global i32 0, align 4
@PORT_MDM = common dso_local global i64 0, align 8
@MDM_DL1 = common dso_local global i32 0, align 4
@MDM_DL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"MDM_DL out of sync!\0A\00", align 1
@MDM_UL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"MDM_UL out of sync!\0A\00", align 1
@DIAG_DL = common dso_local global i32 0, align 4
@PORT_DIAG = common dso_local global i64 0, align 8
@DIAG_DL1 = common dso_local global i32 0, align 4
@DIAG_DL2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DIAG_DL out of sync!\0A\00", align 1
@DIAG_UL = common dso_local global i32 0, align 4
@APP1_DL = common dso_local global i32 0, align 4
@PORT_APP1 = common dso_local global i64 0, align 8
@APP1_UL = common dso_local global i32 0, align 4
@APP2_DL = common dso_local global i32 0, align 4
@PORT_APP2 = common dso_local global i64 0, align 8
@APP2_UL = common dso_local global i32 0, align 4
@NOZOMI_MAX_PORTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nozomi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nozomi*
  store %struct.nozomi* %10, %struct.nozomi** %6, align 8
  %11 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %12 = icmp ne %struct.nozomi* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %405

15:                                               ; preds = %2
  %16 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %17 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %20 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @readw(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %400

26:                                               ; preds = %15
  %27 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %28 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %400

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @interrupt2str(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %40 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DBG4(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @RESET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %35
  %48 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %49 = call i32 @nozomi_read_config_table(%struct.nozomi* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %57 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %59 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %62 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @writew(i32 %60, i32 %63)
  %65 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %66 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %65, i32 0, i32 6
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %76

70:                                               ; preds = %47
  %71 = load i32, i32* @RESET, align 4
  %72 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %73 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @writew(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %55
  br label %371

77:                                               ; preds = %35
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CTRL_UL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %77
  %83 = call i32 @DBG1(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @CTRL_UL, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %87 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %91 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %94 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @writew(i32 %92, i32 %95)
  %97 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %98 = call i64 @send_flow_control(%struct.nozomi* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %82
  %101 = load i32, i32* @CTRL_UL, align 4
  %102 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %103 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @writew(i32 %101, i32 %104)
  %106 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %107 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CTRL_UL, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %112 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %114 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %117 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @writew(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %100, %82
  br label %121

121:                                              ; preds = %120, %77
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @CTRL_DL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %128 = call i32 @receive_flow_control(%struct.nozomi* %127)
  %129 = load i32, i32* @CTRL_DL, align 4
  %130 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %131 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @writew(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %126, %121
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @MDM_DL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %141 = load i64, i64* @PORT_MDM, align 8
  %142 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %143 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i64, i64* @PORT_MDM, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @MDM_DL1, align 4
  %150 = load i32, i32* @MDM_DL2, align 4
  %151 = call i32 @handle_data_dl(%struct.nozomi* %140, i64 %141, i32* %147, i32 %148, i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %139
  %154 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %155 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %154, i32 0, i32 6
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %371

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %134
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @MDM_UL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %167 = load i64, i64* @PORT_MDM, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @handle_data_ul(%struct.nozomi* %166, i64 %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %173 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %172, i32 0, i32 6
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %371

177:                                              ; preds = %165
  br label %178

178:                                              ; preds = %177, %160
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @DIAG_DL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %178
  %184 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %185 = load i64, i64* @PORT_DIAG, align 8
  %186 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %187 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i64, i64* @PORT_DIAG, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @DIAG_DL1, align 4
  %194 = load i32, i32* @DIAG_DL2, align 4
  %195 = call i32 @handle_data_dl(%struct.nozomi* %184, i64 %185, i32* %191, i32 %192, i32 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %183
  %198 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %199 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %198, i32 0, i32 6
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = call i32 @dev_err(i32* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %371

203:                                              ; preds = %183
  br label %204

204:                                              ; preds = %203, %178
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @DIAG_UL, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %248

209:                                              ; preds = %204
  %210 = load i32, i32* @DIAG_UL, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %213 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %217 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %220 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @writew(i32 %218, i32 %221)
  %223 = load i64, i64* @PORT_DIAG, align 8
  %224 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %225 = call i64 @send_data(i64 %223, %struct.nozomi* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %209
  %228 = load i32, i32* @DIAG_UL, align 4
  %229 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %230 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @writew(i32 %228, i32 %231)
  %233 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %234 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @DIAG_UL, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %239 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %241 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %244 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @writew(i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %227, %209
  br label %248

248:                                              ; preds = %247, %204
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @APP1_DL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %265

253:                                              ; preds = %248
  %254 = load i64, i64* @PORT_APP1, align 8
  %255 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %256 = call i64 @receive_data(i64 %254, %struct.nozomi* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i32, i32* @APP1_DL, align 4
  %260 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %261 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @writew(i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %258, %253
  br label %265

265:                                              ; preds = %264, %248
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @APP1_UL, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %309

270:                                              ; preds = %265
  %271 = load i32, i32* @APP1_UL, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %274 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %278 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %281 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @writew(i32 %279, i32 %282)
  %284 = load i64, i64* @PORT_APP1, align 8
  %285 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %286 = call i64 @send_data(i64 %284, %struct.nozomi* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %308

288:                                              ; preds = %270
  %289 = load i32, i32* @APP1_UL, align 4
  %290 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %291 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @writew(i32 %289, i32 %292)
  %294 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %295 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @APP1_UL, align 4
  %298 = or i32 %296, %297
  %299 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %300 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %302 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %305 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @writew(i32 %303, i32 %306)
  br label %308

308:                                              ; preds = %288, %270
  br label %309

309:                                              ; preds = %308, %265
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @APP2_DL, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %309
  %315 = load i64, i64* @PORT_APP2, align 8
  %316 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %317 = call i64 @receive_data(i64 %315, %struct.nozomi* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load i32, i32* @APP2_DL, align 4
  %321 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %322 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @writew(i32 %320, i32 %323)
  br label %325

325:                                              ; preds = %319, %314
  br label %326

326:                                              ; preds = %325, %309
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @APP2_UL, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %370

331:                                              ; preds = %326
  %332 = load i32, i32* @APP2_UL, align 4
  %333 = xor i32 %332, -1
  %334 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %335 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, %333
  store i32 %337, i32* %335, align 8
  %338 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %339 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %342 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @writew(i32 %340, i32 %343)
  %345 = load i64, i64* @PORT_APP2, align 8
  %346 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %347 = call i64 @send_data(i64 %345, %struct.nozomi* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %369

349:                                              ; preds = %331
  %350 = load i32, i32* @APP2_UL, align 4
  %351 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %352 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @writew(i32 %350, i32 %353)
  %355 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %356 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @APP2_UL, align 4
  %359 = or i32 %357, %358
  %360 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %361 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  %362 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %363 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %366 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @writew(i32 %364, i32 %367)
  br label %369

369:                                              ; preds = %349, %331
  br label %370

370:                                              ; preds = %369, %326
  br label %371

371:                                              ; preds = %370, %197, %171, %153, %76
  %372 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %373 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %372, i32 0, i32 1
  %374 = call i32 @spin_unlock(i32* %373)
  store i32 0, i32* %7, align 4
  br label %375

375:                                              ; preds = %395, %371
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* @NOZOMI_MAX_PORTS, align 4
  %378 = icmp ult i32 %376, %377
  br i1 %378, label %379, label %398

379:                                              ; preds = %375
  %380 = load i32, i32* %7, align 4
  %381 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %382 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %381, i32 0, i32 3
  %383 = call i64 @test_and_clear_bit(i32 %380, i32* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %379
  %386 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %387 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %386, i32 0, i32 2
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %387, align 8
  %389 = load i32, i32* %7, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = call i32 @tty_flip_buffer_push(i32* %392)
  br label %394

394:                                              ; preds = %385, %379
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %7, align 4
  %397 = add i32 %396, 1
  store i32 %397, i32* %7, align 4
  br label %375

398:                                              ; preds = %375
  %399 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %399, i32* %3, align 4
  br label %405

400:                                              ; preds = %34, %25
  %401 = load %struct.nozomi*, %struct.nozomi** %6, align 8
  %402 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %401, i32 0, i32 1
  %403 = call i32 @spin_unlock(i32* %402)
  %404 = load i32, i32* @IRQ_NONE, align 4
  store i32 %404, i32* %3, align 4
  br label %405

405:                                              ; preds = %400, %398, %13
  %406 = load i32, i32* %3, align 4
  ret i32 %406
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @DBG4(i8*, i32, i32, i32) #1

declare dso_local i32 @interrupt2str(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nozomi_read_config_table(%struct.nozomi*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @DBG1(i8*) #1

declare dso_local i64 @send_flow_control(%struct.nozomi*) #1

declare dso_local i32 @receive_flow_control(%struct.nozomi*) #1

declare dso_local i32 @handle_data_dl(%struct.nozomi*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @handle_data_ul(%struct.nozomi*, i64, i32) #1

declare dso_local i64 @send_data(i64, %struct.nozomi*) #1

declare dso_local i64 @receive_data(i64, %struct.nozomi*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
