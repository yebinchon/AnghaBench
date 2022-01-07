; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_program_slave_port_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_program_slave_port_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sdw_slave_runtime = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.sdw_slave_prop }
%struct.sdw_slave_prop = type { i64 }
%struct.sdw_port_runtime = type { %struct.sdw_port_params, %struct.sdw_transport_params }
%struct.sdw_port_params = type { i32, i32, i32 }
%struct.sdw_transport_params = type { i32, i32, i32, i32, i32, i64 }
%struct.sdw_dpn_prop = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SDW_DPN_PORTCTRL_DATAMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"DPN_PortCtrl register write failed for port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"DPN_BlockCtrl1 register write failed for port %d\0A\00", align 1
@SDW_DPN_SAMPLECTRL_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"DPN_SampleCtrl1 register write failed for port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"DPN_OffsetCtrl1 register write failed for port %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"DPN_BlockCtrl2 reg write failed for port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"DPN_LaneCtrl register write failed for port %d\0A\00", align 1
@SDW_DPN_SIMPLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Transport reg write failed for port: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_slave_runtime*, %struct.sdw_port_runtime*)* @sdw_program_slave_port_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_program_slave_port_params(%struct.sdw_bus* %0, %struct.sdw_slave_runtime* %1, %struct.sdw_port_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_slave_runtime*, align 8
  %7 = alloca %struct.sdw_port_runtime*, align 8
  %8 = alloca %struct.sdw_transport_params*, align 8
  %9 = alloca %struct.sdw_port_params*, align 8
  %10 = alloca %struct.sdw_slave_prop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sdw_dpn_prop*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_slave_runtime* %1, %struct.sdw_slave_runtime** %6, align 8
  store %struct.sdw_port_runtime* %2, %struct.sdw_port_runtime** %7, align 8
  %20 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %20, i32 0, i32 1
  store %struct.sdw_transport_params* %21, %struct.sdw_transport_params** %8, align 8
  %22 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %23 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %22, i32 0, i32 0
  store %struct.sdw_port_params* %23, %struct.sdw_port_params** %9, align 8
  %24 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %25 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store %struct.sdw_slave_prop* %27, %struct.sdw_slave_prop** %10, align 8
  %28 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %32 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %35 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.sdw_dpn_prop* @sdw_get_slave_dpn_prop(%struct.TYPE_7__* %30, i32 %33, i32 %36)
  store %struct.sdw_dpn_prop* %37, %struct.sdw_dpn_prop** %17, align 8
  %38 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %17, align 8
  %39 = icmp ne %struct.sdw_dpn_prop* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %273

43:                                               ; preds = %3
  %44 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %45 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @SDW_DPN_PORTCTRL(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %49 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SDW_DPN_BLOCKCTRL1(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %53 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %43
  %58 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %59 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SDW_DPN_SAMPLECTRL1_B1(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %63 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @SDW_DPN_OFFSETCTRL1_B1(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %67 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @SDW_DPN_BLOCKCTRL2_B1(i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %71 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SDW_DPN_LANECTRL_B1(i32 %72)
  store i32 %73, i32* %16, align 4
  br label %91

74:                                               ; preds = %43
  %75 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %76 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @SDW_DPN_SAMPLECTRL1_B0(i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %80 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SDW_DPN_OFFSETCTRL1_B0(i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %84 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SDW_DPN_BLOCKCTRL2_B0(i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %88 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @SDW_DPN_LANECTRL_B0(i32 %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %74, %57
  %92 = load %struct.sdw_port_params*, %struct.sdw_port_params** %9, align 8
  %93 = getelementptr inbounds %struct.sdw_port_params, %struct.sdw_port_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SDW_DPN_PORTCTRL_DATAMODE, align 4
  %96 = call i32 @SDW_REG_SHIFT(i32 %95)
  %97 = shl i32 %94, %96
  store i32 %97, i32* %19, align 4
  %98 = load %struct.sdw_port_params*, %struct.sdw_port_params** %9, align 8
  %99 = getelementptr inbounds %struct.sdw_port_params, %struct.sdw_port_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %19, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %19, align 4
  %103 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %104 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @sdw_update(%struct.TYPE_7__* %105, i32 %106, i32 15, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %91
  %112 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %113 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %117 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %18, align 4
  store i32 %120, i32* %4, align 4
  br label %273

121:                                              ; preds = %91
  %122 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %123 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.sdw_port_params*, %struct.sdw_port_params** %9, align 8
  %127 = getelementptr inbounds %struct.sdw_port_params, %struct.sdw_port_params* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @sdw_write(%struct.TYPE_7__* %124, i32 %125, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %121
  %134 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %135 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %139 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %4, align 4
  br label %273

143:                                              ; preds = %121
  %144 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %145 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = load i32, i32* @SDW_DPN_SAMPLECTRL_LOW, align 4
  %149 = and i32 %147, %148
  store i32 %149, i32* %19, align 4
  %150 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %151 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @sdw_write(%struct.TYPE_7__* %152, i32 %153, i32 %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %143
  %159 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %160 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %164 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %4, align 4
  br label %273

168:                                              ; preds = %143
  %169 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %170 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %174 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @sdw_write(%struct.TYPE_7__* %171, i32 %172, i32 %175)
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %168
  %180 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %181 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %180, i32 0, i32 0
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %185 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dev_err(i32* %183, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %4, align 4
  br label %273

189:                                              ; preds = %168
  %190 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %191 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %189
  %195 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %196 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %200 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @sdw_write(%struct.TYPE_7__* %197, i32 %198, i32 %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %194
  %206 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %207 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %211 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dev_err(i32* %209, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %18, align 4
  store i32 %214, i32* %4, align 4
  br label %273

215:                                              ; preds = %194
  br label %216

216:                                              ; preds = %215, %189
  %217 = load %struct.sdw_slave_prop*, %struct.sdw_slave_prop** %10, align 8
  %218 = getelementptr inbounds %struct.sdw_slave_prop, %struct.sdw_slave_prop* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %216
  %222 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %223 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %227 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @sdw_write(%struct.TYPE_7__* %224, i32 %225, i32 %228)
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %234 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %238 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @dev_err(i32* %236, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %4, align 4
  br label %273

242:                                              ; preds = %221
  br label %243

243:                                              ; preds = %242, %216
  %244 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %17, align 8
  %245 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @SDW_DPN_SIMPLE, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %271

249:                                              ; preds = %243
  %250 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %251 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %252 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %251, i32 0, i32 0
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %255 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %17, align 8
  %256 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @_sdw_program_slave_port_params(%struct.sdw_bus* %250, %struct.TYPE_7__* %253, %struct.sdw_transport_params* %254, i64 %257)
  store i32 %258, i32* %18, align 4
  %259 = load i32, i32* %18, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %249
  %262 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %263 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %267 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dev_err(i32* %265, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %261, %249
  br label %271

271:                                              ; preds = %270, %243
  %272 = load i32, i32* %18, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %271, %232, %205, %179, %158, %133, %111, %40
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local %struct.sdw_dpn_prop* @sdw_get_slave_dpn_prop(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SDW_DPN_PORTCTRL(i32) #1

declare dso_local i32 @SDW_DPN_BLOCKCTRL1(i32) #1

declare dso_local i32 @SDW_DPN_SAMPLECTRL1_B1(i32) #1

declare dso_local i32 @SDW_DPN_OFFSETCTRL1_B1(i32) #1

declare dso_local i32 @SDW_DPN_BLOCKCTRL2_B1(i32) #1

declare dso_local i32 @SDW_DPN_LANECTRL_B1(i32) #1

declare dso_local i32 @SDW_DPN_SAMPLECTRL1_B0(i32) #1

declare dso_local i32 @SDW_DPN_OFFSETCTRL1_B0(i32) #1

declare dso_local i32 @SDW_DPN_BLOCKCTRL2_B0(i32) #1

declare dso_local i32 @SDW_DPN_LANECTRL_B0(i32) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

declare dso_local i32 @sdw_update(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sdw_write(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @_sdw_program_slave_port_params(%struct.sdw_bus*, %struct.TYPE_7__*, %struct.sdw_transport_params*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
