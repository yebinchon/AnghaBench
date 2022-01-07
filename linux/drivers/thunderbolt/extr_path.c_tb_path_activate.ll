; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_path.c_tb_path_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tb_regs_hop = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"trying to activate already activated path\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"activating %s path from %llx:%x to %llx:%x\0A\00", align 1
@TB_PATH_DESTINATION = common dso_local global i32 0, align 4
@TB_PATH_INTERNAL = common dso_local global i32 0, align 4
@TB_PATH_SOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Writing hop %d\0A\00", align 1
@TB_CFG_HOPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"path activation complete\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"path activation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_path_activate(%struct.tb_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_regs_hop, align 8
  store %struct.tb_path* %0, %struct.tb_path** %3, align 8
  %9 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %10 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %15 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @tb_WARN(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %346

20:                                               ; preds = %1
  %21 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %22 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %25 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %28 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %27, i32 0, i32 7
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tb_route(i32 %34)
  %36 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %37 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %36, i32 0, i32 7
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %45 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %44, i32 0, i32 7
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %48 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tb_route(i32 %56)
  %58 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %59 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %58, i32 0, i32 7
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %62 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @tb_dbg(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %35, i32 %43, i32 %57, i32 %70)
  %72 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %73 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %112, %20
  %77 = load i32, i32* %4, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %81 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %80, i32 0, i32 7
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %112

90:                                               ; preds = %79
  %91 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %92 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %91, i32 0, i32 7
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %100 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %99, i32 0, i32 7
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tb_port_clear_counter(%struct.TYPE_9__* %98, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %340

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111, %89
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %4, align 4
  br label %76

115:                                              ; preds = %76
  %116 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %117 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %143, %115
  %121 = load i32, i32* %4, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %120
  %124 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %125 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %124, i32 0, i32 7
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %133 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @tb_port_add_nfc_credits(%struct.TYPE_9__* %131, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %123
  %139 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @__tb_path_deallocate_nfc(%struct.tb_path* %139, i32 %140)
  br label %340

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %4, align 4
  br label %120

146:                                              ; preds = %120
  %147 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %148 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %330, %146
  %152 = load i32, i32* %4, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %333

154:                                              ; preds = %151
  %155 = bitcast %struct.tb_regs_hop* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %155, i8 0, i64 88, i1 false)
  %156 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %157 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %156, i32 0, i32 7
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %165 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %164, i32 0, i32 7
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %173 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @__tb_path_deactivate_hop(%struct.TYPE_9__* %163, i32 %171, i32 %174)
  %176 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %177 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %176, i32 0, i32 7
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 15
  store i32 %183, i32* %184, align 8
  %185 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %186 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %185, i32 0, i32 7
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 14
  store i32 %194, i32* %195, align 4
  %196 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %197 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %196, i32 0, i32 7
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 13
  store i32 %203, i32* %204, align 8
  %205 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 12
  store i64 0, i64* %205, align 8
  %206 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %209 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 1
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %154
  %214 = load i32, i32* @TB_PATH_DESTINATION, align 4
  br label %217

215:                                              ; preds = %154
  %216 = load i32, i32* @TB_PATH_INTERNAL, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* @TB_PATH_SOURCE, align 4
  br label %225

223:                                              ; preds = %217
  %224 = load i32, i32* @TB_PATH_INTERNAL, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  store i32 %226, i32* %7, align 4
  %227 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %228 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 11
  store i32 %229, i32* %230, align 8
  %231 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 10
  store i64 0, i64* %231, align 8
  %232 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %233 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 9
  store i32 %234, i32* %235, align 4
  %236 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %237 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 8
  store i32 %238, i32* %239, align 8
  %240 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %241 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %240, i32 0, i32 7
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 1
  store i32 %247, i32* %248, align 4
  %249 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %250 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %249, i32 0, i32 7
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, -1
  %258 = zext i1 %257 to i32
  %259 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 2
  store i32 %258, i32* %259, align 8
  %260 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %261 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = and i32 %262, %263
  %265 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 3
  store i32 %264, i32* %265, align 4
  %266 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %267 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %268, %269
  %271 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 4
  store i32 %270, i32* %271, align 8
  %272 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %273 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = and i32 %274, %275
  %277 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 5
  store i32 %276, i32* %277, align 4
  %278 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %279 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %6, align 4
  %282 = and i32 %280, %281
  %283 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 6
  store i32 %282, i32* %283, align 8
  %284 = getelementptr inbounds %struct.tb_regs_hop, %struct.tb_regs_hop* %8, i32 0, i32 7
  store i64 0, i64* %284, align 8
  %285 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %286 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %285, i32 0, i32 7
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = load i32, i32* %4, align 4
  %294 = call i32 @tb_port_dbg(%struct.TYPE_9__* %292, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %293)
  %295 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %296 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %295, i32 0, i32 7
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 %299
  %301 = call i32 @tb_dump_hop(%struct.TYPE_10__* %300, %struct.tb_regs_hop* %8)
  %302 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %303 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %302, i32 0, i32 7
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = load i32, i32* %4, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = load i32, i32* @TB_CFG_HOPS, align 4
  %311 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %312 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %311, i32 0, i32 7
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 2, %318
  %320 = call i32 @tb_port_write(%struct.TYPE_9__* %309, %struct.tb_regs_hop* %8, i32 %310, i32 %319, i32 2)
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %5, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %225
  %324 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %325 = load i32, i32* %4, align 4
  %326 = call i32 @__tb_path_deactivate_hops(%struct.tb_path* %324, i32 %325)
  %327 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %328 = call i32 @__tb_path_deallocate_nfc(%struct.tb_path* %327, i32 0)
  br label %340

329:                                              ; preds = %225
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %4, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %4, align 4
  br label %151

333:                                              ; preds = %151
  %334 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %335 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %334, i32 0, i32 0
  store i32 1, i32* %335, align 8
  %336 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %337 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i32 (i32, i8*, ...) @tb_dbg(i32 %338, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %346

340:                                              ; preds = %323, %138, %110
  %341 = load %struct.tb_path*, %struct.tb_path** %3, align 8
  %342 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @tb_WARN(i32 %343, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %345 = load i32, i32* %5, align 4
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %340, %333, %13
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i32 @tb_WARN(i32, i8*) #1

declare dso_local i32 @tb_dbg(i32, i8*, ...) #1

declare dso_local i32 @tb_route(i32) #1

declare dso_local i32 @tb_port_clear_counter(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tb_port_add_nfc_credits(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__tb_path_deallocate_nfc(%struct.tb_path*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @__tb_path_deactivate_hop(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @tb_port_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tb_dump_hop(%struct.TYPE_10__*, %struct.tb_regs_hop*) #1

declare dso_local i32 @tb_port_write(%struct.TYPE_9__*, %struct.tb_regs_hop*, i32, i32, i32) #1

declare dso_local i32 @__tb_path_deactivate_hops(%struct.tb_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
