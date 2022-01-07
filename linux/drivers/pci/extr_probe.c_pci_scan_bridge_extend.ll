; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_bridge_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_bridge_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32, i32, %struct.pci_bus*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.pci_dev = type { i64, i32 }

@PCI_HEADER_TYPE_CARDBUS = common dso_local global i64 0, align 8
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"scanning [bus %02x-%02x] behind bridge, pass %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Primary bus is hard wired to 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"bridge configuration invalid ([bus %02x-%02x]), reconfiguring\0A\00", align 1
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_MASTER_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"bridge has subordinate %02x but max busn %02x\0A\00", align 1
@PCI_STATUS = common dso_local global i32 0, align 4
@CARDBUS_LATENCY_TIMER = common dso_local global i32 0, align 4
@CARDBUS_RESERVE_BUSNR = common dso_local global i32 0, align 4
@PCI_SUBORDINATE_BUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"PCI CardBus %04x:%02x\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PCI Bus %04x:%02x\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"devices behind bridge are unusable because %pR cannot be assigned for them\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, %struct.pci_dev*, i32, i32, i32)* @pci_scan_bridge_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_scan_bridge_extend(%struct.pci_bus* %0, %struct.pci_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_bus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_HEADER_TYPE_CARDBUS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 1
  %35 = call i32 @pm_runtime_get_sync(i32* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %38 = call i32 @pci_read_config_dword(%struct.pci_dev* %36, i32 %37, i32* %13)
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %13, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %13, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  store i32 %46, i32* %19, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pci_dbg(%struct.pci_dev* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %5
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %57 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %68 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %70 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %66, %63, %60, %54, %5
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %78 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %84 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ule i32 %82, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %81, %75
  %92 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @pci_info(%struct.pci_dev* %92, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  store i32 1, i32* %20, align 4
  br label %96

96:                                               ; preds = %91, %87, %72
  %97 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %98 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %99 = call i32 @pci_read_config_word(%struct.pci_dev* %97, i32 %98, i32* %16)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %101 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @PCI_BRIDGE_CTL_MASTER_ABORT, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = call i32 @pci_write_config_word(%struct.pci_dev* %100, i32 %101, i32 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %108 = call i32 @pci_enable_crs(%struct.pci_dev* %107)
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %171

114:                                              ; preds = %111, %96
  %115 = call i64 (...) @pcibios_assign_all_busses()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %171, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %171, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %171, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %417

127:                                              ; preds = %123
  %128 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %129 = call i32 @pci_domain_nr(%struct.pci_bus* %128)
  %130 = load i32, i32* %18, align 4
  %131 = call %struct.pci_bus* @pci_find_bus(i32 %129, i32 %130)
  store %struct.pci_bus* %131, %struct.pci_bus** %11, align 8
  %132 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %133 = icmp ne %struct.pci_bus* %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %127
  %135 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %136 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus* %135, %struct.pci_dev* %136, i32 %137)
  store %struct.pci_bus* %138, %struct.pci_bus** %11, align 8
  %139 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %140 = icmp ne %struct.pci_bus* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  br label %417

142:                                              ; preds = %134
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %145 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %152 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %142, %127
  %154 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %155 = call i32 @pci_scan_child_bus(%struct.pci_bus* %154)
  store i32 %155, i32* %25, align 4
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %19, align 4
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %25, align 4
  %163 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ugt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %164
  br label %351

171:                                              ; preds = %120, %117, %114, %111
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %171
  %175 = call i64 (...) @pcibios_assign_all_busses()
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %20, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180, %177, %174
  %184 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %185 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %186 = load i32, i32* %13, align 4
  %187 = and i32 %186, -16777216
  %188 = call i32 @pci_write_config_dword(%struct.pci_dev* %184, i32 %185, i32 %187)
  br label %189

189:                                              ; preds = %183, %180
  br label %417

190:                                              ; preds = %171
  %191 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %192 = load i32, i32* @PCI_STATUS, align 4
  %193 = call i32 @pci_write_config_word(%struct.pci_dev* %191, i32 %192, i32 65535)
  %194 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %195 = call i32 @pci_ea_fixed_busnrs(%struct.pci_dev* %194, i32* %22, i32* %23)
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %22, align 4
  store i32 %199, i32* %24, align 4
  br label %203

200:                                              ; preds = %190
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %24, align 4
  br label %203

203:                                              ; preds = %200, %198
  %204 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %205 = call i32 @pci_domain_nr(%struct.pci_bus* %204)
  %206 = load i32, i32* %24, align 4
  %207 = call %struct.pci_bus* @pci_find_bus(i32 %205, i32 %206)
  store %struct.pci_bus* %207, %struct.pci_bus** %11, align 8
  %208 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %209 = icmp ne %struct.pci_bus* %208, null
  br i1 %209, label %226, label %210

210:                                              ; preds = %203
  %211 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %212 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %213 = load i32, i32* %24, align 4
  %214 = call %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus* %211, %struct.pci_dev* %212, i32 %213)
  store %struct.pci_bus* %214, %struct.pci_bus** %11, align 8
  %215 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %216 = icmp ne %struct.pci_bus* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  br label %417

218:                                              ; preds = %210
  %219 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %220 = load i32, i32* %24, align 4
  %221 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %222 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %219, i32 %220, i32 %224)
  br label %226

226:                                              ; preds = %218, %203
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, -1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i32, i32* %13, align 4
  %236 = and i32 %235, -16777216
  %237 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %238 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 0
  %241 = or i32 %236, %240
  %242 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %243 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = shl i32 %246, 8
  %248 = or i32 %241, %247
  %249 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %250 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = shl i32 %252, 16
  %254 = or i32 %248, %253
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %234
  %258 = load i32, i32* %13, align 4
  %259 = and i32 %258, 16777215
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* @CARDBUS_LATENCY_TIMER, align 4
  %261 = shl i32 %260, 24
  %262 = load i32, i32* %13, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %13, align 4
  br label %264

264:                                              ; preds = %257, %234
  %265 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %266 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @pci_write_config_dword(%struct.pci_dev* %265, i32 %266, i32 %267)
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %264
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %274 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @pci_scan_child_bus_extend(%struct.pci_bus* %275, i32 %276)
  store i32 %277, i32* %8, align 4
  br label %338

278:                                              ; preds = %264
  store i32 0, i32* %14, align 4
  br label %279

279:                                              ; preds = %331, %278
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* @CARDBUS_RESERVE_BUSNR, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %334

283:                                              ; preds = %279
  %284 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  store %struct.pci_bus* %284, %struct.pci_bus** %26, align 8
  %285 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %286 = call i32 @pci_domain_nr(%struct.pci_bus* %285)
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %287, %288
  %290 = add nsw i32 %289, 1
  %291 = call %struct.pci_bus* @pci_find_bus(i32 %286, i32 %290)
  %292 = icmp ne %struct.pci_bus* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %283
  br label %334

294:                                              ; preds = %283
  br label %295

295:                                              ; preds = %320, %294
  %296 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  %297 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %296, i32 0, i32 3
  %298 = load %struct.pci_bus*, %struct.pci_bus** %297, align 8
  %299 = icmp ne %struct.pci_bus* %298, null
  br i1 %299, label %300, label %324

300:                                              ; preds = %295
  %301 = call i64 (...) @pcibios_assign_all_busses()
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %320, label %303

303:                                              ; preds = %300
  %304 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  %305 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = icmp ugt i32 %307, %308
  br i1 %309, label %310, label %320

310:                                              ; preds = %303
  %311 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  %312 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %315, %316
  %318 = icmp ule i32 %314, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %310
  store i32 1, i32* %15, align 4
  br label %320

320:                                              ; preds = %319, %310, %303, %300
  %321 = load %struct.pci_bus*, %struct.pci_bus** %26, align 8
  %322 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %321, i32 0, i32 3
  %323 = load %struct.pci_bus*, %struct.pci_bus** %322, align 8
  store %struct.pci_bus* %323, %struct.pci_bus** %26, align 8
  br label %295

324:                                              ; preds = %295
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i32, i32* %14, align 4
  %329 = sdiv i32 %328, 2
  store i32 %329, i32* %14, align 4
  br label %334

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %14, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %14, align 4
  br label %279

334:                                              ; preds = %327, %293, %279
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %8, align 4
  br label %338

338:                                              ; preds = %334, %271
  %339 = load i32, i32* %21, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %23, align 4
  store i32 %342, i32* %8, align 4
  br label %343

343:                                              ; preds = %341, %338
  %344 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @pci_bus_update_busn_res_end(%struct.pci_bus* %344, i32 %345)
  %347 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %348 = load i32, i32* @PCI_SUBORDINATE_BUS, align 4
  %349 = load i32, i32* %8, align 4
  %350 = call i32 @pci_write_config_byte(%struct.pci_dev* %347, i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %343, %170
  %352 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %353 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %12, align 4
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)
  %359 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %360 = call i32 @pci_domain_nr(%struct.pci_bus* %359)
  %361 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %362 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @sprintf(i32 %354, i8* %358, i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %412, %351
  %366 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %367 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %366, i32 0, i32 3
  %368 = load %struct.pci_bus*, %struct.pci_bus** %367, align 8
  %369 = icmp ne %struct.pci_bus* %368, null
  br i1 %369, label %370, label %416

370:                                              ; preds = %365
  %371 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %372 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %376 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %375, i32 0, i32 4
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ugt i32 %374, %378
  br i1 %379, label %406, label %380

380:                                              ; preds = %370
  %381 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %382 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %385 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp ugt i32 %383, %387
  br i1 %388, label %406, label %389

389:                                              ; preds = %380
  %390 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %391 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %394 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = icmp ult i32 %392, %395
  br i1 %396, label %406, label %397

397:                                              ; preds = %389
  %398 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %399 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %398, i32 0, i32 4
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %403 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp ult i32 %401, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %397, %389, %380, %370
  %407 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %408 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %407, i32 0, i32 1
  %409 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %410 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %409, i32 0, i32 4
  %411 = call i32 @dev_info(i32* %408, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_2__* %410)
  br label %416

412:                                              ; preds = %397
  %413 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %414 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %413, i32 0, i32 3
  %415 = load %struct.pci_bus*, %struct.pci_bus** %414, align 8
  store %struct.pci_bus* %415, %struct.pci_bus** %6, align 8
  br label %365

416:                                              ; preds = %406, %365
  br label %417

417:                                              ; preds = %416, %217, %189, %141, %126
  %418 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %419 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %420 = load i32, i32* %16, align 4
  %421 = call i32 @pci_write_config_word(%struct.pci_dev* %418, i32 %419, i32 %420)
  %422 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %423 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %422, i32 0, i32 1
  %424 = call i32 @pm_runtime_put(i32* %423)
  %425 = load i32, i32* %8, align 4
  ret i32 %425
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_enable_crs(%struct.pci_dev*) #1

declare dso_local i64 @pcibios_assign_all_busses(...) #1

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus*, %struct.pci_dev*, i32) #1

declare dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @pci_scan_child_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_ea_fixed_busnrs(%struct.pci_dev*, i32*, i32*) #1

declare dso_local i32 @pci_scan_child_bus_extend(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_bus_update_busn_res_end(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
