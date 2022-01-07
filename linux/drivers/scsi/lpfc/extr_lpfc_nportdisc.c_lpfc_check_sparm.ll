; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_check_sparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_check_sparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.serv_parm }
%struct.serv_parm = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }

@CLASS1 = common dso_local global i64 0, align 8
@CLASS2 = common dso_local global i64 0, align 8
@CLASS3 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"0207 Device %x (%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x) sent invalid service parameters.  Ignoring device.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_check_sparm(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.serv_parm* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca %struct.serv_parm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.serv_parm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %8, align 8
  store %struct.serv_parm* %2, %struct.serv_parm** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  store %struct.serv_parm* %16, %struct.serv_parm** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %18 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %22
  %26 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %27 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load volatile i32, i32* %28, align 8
  %30 = shl i32 %29, 8
  %31 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %32 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load volatile i32, i32* %33, align 4
  %35 = or i32 %30, %34
  store i32 %35, i32* %13, align 4
  %36 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %37 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 8
  %41 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %42 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %40, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %25
  br label %253

49:                                               ; preds = %25
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %55 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load volatile i32, i32* %56, align 4
  %58 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %59 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %62 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load volatile i32, i32* %63, align 8
  %65 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %66 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %53, %49
  br label %69

69:                                               ; preds = %68, %22
  br label %76

70:                                               ; preds = %5
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @CLASS1, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %253

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %78 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %129, label %85

85:                                               ; preds = %82
  %86 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %87 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load volatile i32, i32* %88, align 8
  %90 = shl i32 %89, 8
  %91 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %92 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load volatile i32, i32* %93, align 4
  %95 = or i32 %90, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %97 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 8
  %101 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %102 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %100, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %85
  br label %253

109:                                              ; preds = %85
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %115 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load volatile i32, i32* %116, align 4
  %118 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %119 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %122 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load volatile i32, i32* %123, align 8
  %125 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %126 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  br label %128

128:                                              ; preds = %113, %109
  br label %129

129:                                              ; preds = %128, %82
  br label %136

130:                                              ; preds = %76
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @CLASS2, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %253

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %129
  %137 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %138 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %190

142:                                              ; preds = %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %189, label %145

145:                                              ; preds = %142
  %146 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %147 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load volatile i32, i32* %148, align 8
  %150 = shl i32 %149, 8
  %151 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %152 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load volatile i32, i32* %153, align 4
  %155 = or i32 %150, %154
  store i32 %155, i32* %13, align 4
  %156 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %157 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 8
  %161 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %162 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %160, %164
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %145
  br label %253

169:                                              ; preds = %145
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %175 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load volatile i32, i32* %176, align 4
  %178 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %179 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %182 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load volatile i32, i32* %183, align 8
  %185 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %186 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  br label %188

188:                                              ; preds = %173, %169
  br label %189

189:                                              ; preds = %188, %142
  br label %196

190:                                              ; preds = %136
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* @CLASS3, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %253

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195, %189
  %197 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %198 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load volatile i32, i32* %199, align 8
  %201 = shl i32 %200, 8
  %202 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %203 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load volatile i32, i32* %204, align 4
  %206 = or i32 %201, %205
  store i32 %206, i32* %13, align 4
  %207 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %208 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = shl i32 %210, 8
  %212 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %213 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %211, %215
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %196
  %221 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %222 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load volatile i32, i32* %223, align 4
  %225 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %226 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %229 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, 240
  %233 = load %struct.serv_parm*, %struct.serv_parm** %12, align 8
  %234 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load volatile i32, i32* %235, align 8
  %237 = and i32 %236, 15
  %238 = or i32 %232, %237
  %239 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %240 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  br label %242

242:                                              ; preds = %220, %196
  %243 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %244 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %243, i32 0, i32 2
  %245 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %246 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %245, i32 0, i32 0
  %247 = call i32 @memcpy(i32* %244, %struct.TYPE_12__* %246, i32 4)
  %248 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %249 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %248, i32 0, i32 1
  %250 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %251 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %250, i32 0, i32 1
  %252 = call i32 @memcpy(i32* %249, %struct.TYPE_12__* %251, i32 4)
  store i32 1, i32* %6, align 4
  br label %317

253:                                              ; preds = %194, %168, %134, %108, %74, %48
  %254 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %255 = load i32, i32* @KERN_ERR, align 4
  %256 = load i32, i32* @LOG_DISCOVERY, align 4
  %257 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %258 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %261 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %268 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %275 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %282 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %289 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 4
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %296 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 5
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %303 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %310 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 7
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %254, i32 %255, i32 %256, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %259, i32 %266, i32 %273, i32 %280, i32 %287, i32 %294, i32 %301, i32 %308, i32 %315)
  store i32 0, i32* %6, align 4
  br label %317

317:                                              ; preds = %253, %242
  %318 = load i32, i32* %6, align 4
  ret i32 %318
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
