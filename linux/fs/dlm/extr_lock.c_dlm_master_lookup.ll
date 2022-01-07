; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_master_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_dlm_master_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dlm_rsb = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@DLM_LU_RECOVER_DIR = common dso_local global i32 0, align 4
@DLM_LU_RECOVER_MASTER = common dso_local global i32 0, align 4
@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"dlm_master_lookup from our_nodeid %d flags %x\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"dlm_master_lookup from %d dir %d our %d h %x %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"dlm_master_lookup res_dir %d our %d %s\00", align 1
@RSB_NEW_MASTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"dlm_master_lookup fix_master on toss\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"dlm_master_lookup from_master %d master_nodeid %d res_nodeid %d first %x %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"from_master %d our_master\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"dlm_master_lookup master 0 to %d first %x %s\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"dlm_master_lookup from master %d flags %x first %x %s\00", align 1
@DLM_LU_MATCH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@DLM_LU_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_master_lookup(%struct.dlm_ls* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_ls*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dlm_rsb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %16, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @DLM_LU_RECOVER_DIR, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @DLM_LU_RECOVER_MASTER, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %20, align 4
  %31 = call i32 (...) @dlm_our_nodeid()
  store i32 %31, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %389

38:                                               ; preds = %7
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %389

49:                                               ; preds = %38
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @jhash(i8* %50, i32 %51, i32 0)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %55 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %53, %57
  store i32 %58, i32* %18, align 4
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @dlm_hash2nodeid(%struct.dlm_ls* %59, i32 %60)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %49
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %72 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load i32*, i32** %14, align 8
  store i32 -1, i32* %75, align 4
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %389

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %359, %313, %78
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %81 = call i32 @pre_rsb_struct(%struct.dlm_ls* %80)
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %23, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %23, align 4
  store i32 %85, i32* %8, align 4
  br label %389

86:                                               ; preds = %79
  %87 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %88 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %96 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @dlm_search_rsb_tree(i32* %101, i8* %102, i32 %103, %struct.dlm_rsb** %16)
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %86
  %108 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %109 = call i32 @hold_rsb(%struct.dlm_rsb* %108)
  %110 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %111 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %119 = call i32 @lock_rsb(%struct.dlm_rsb* %118)
  br label %135

120:                                              ; preds = %86
  %121 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %122 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @dlm_search_rsb_tree(i32* %127, i8* %128, i32 %129, %struct.dlm_rsb** %16)
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %304

134:                                              ; preds = %120
  store i32 1, i32* %24, align 4
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %137 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %143 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %144 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %148 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i32 %149)
  %151 = load i32, i32* %21, align 4
  %152 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %153 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %141, %135
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %182

157:                                              ; preds = %154
  %158 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %159 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %160 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @dlm_is_removed(%struct.dlm_ls* %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %157
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %167 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %170 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %172 = load i32, i32* @RSB_NEW_MASTER, align 4
  %173 = call i32 @rsb_set_flag(%struct.dlm_rsb* %171, i32 %172)
  %174 = load i32, i32* %24, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %164
  %177 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %178 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %179 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %180 = call i32 @dlm_dump_rsb(%struct.dlm_rsb* %179)
  br label %181

181:                                              ; preds = %176, %164
  br label %182

182:                                              ; preds = %181, %157, %154
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %228

185:                                              ; preds = %182
  %186 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %187 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %228

191:                                              ; preds = %185
  %192 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %195 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %198 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %201 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %204 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.dlm_ls*, i8*, i32, i32, i32, i32, ...) @log_limit(%struct.dlm_ls* %192, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %193, i32 %196, i32 %199, i32 %202, i32 %205)
  %207 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %208 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %21, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %218

212:                                              ; preds = %191
  %213 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %214 = load i32, i32* %10, align 4
  %215 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  %216 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %217 = call i32 @dlm_dump_rsb(%struct.dlm_rsb* %216)
  br label %273

218:                                              ; preds = %191
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %221 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %224 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %226 = load i32, i32* @RSB_NEW_MASTER, align 4
  %227 = call i32 @rsb_set_flag(%struct.dlm_rsb* %225, i32 %226)
  br label %228

228:                                              ; preds = %218, %185, %182
  %229 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %230 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %249, label %233

233:                                              ; preds = %228
  %234 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %237 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %240 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @log_debug(%struct.dlm_ls* %234, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %235, i32 %238, i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %245 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %248 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %233, %228
  %250 = load i32, i32* %19, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %20, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %272, label %255

255:                                              ; preds = %252
  %256 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %257 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %10, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %255
  %262 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %266 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %269 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.dlm_ls*, i8*, i32, i32, i32, i32, ...) @log_limit(%struct.dlm_ls* %262, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %263, i32 %264, i32 %267, i32 %270)
  br label %272

272:                                              ; preds = %261, %255, %252, %249
  br label %273

273:                                              ; preds = %272, %212
  %274 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %275 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %14, align 8
  store i32 %276, i32* %277, align 4
  %278 = load i32*, i32** %15, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %273
  %281 = load i32, i32* @DLM_LU_MATCH, align 4
  %282 = load i32*, i32** %15, align 8
  store i32 %281, i32* %282, align 4
  br label %283

283:                                              ; preds = %280, %273
  %284 = load i32, i32* %24, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %283
  %287 = load i8*, i8** @jiffies, align 8
  %288 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %289 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %288, i32 0, i32 5
  store i8* %287, i8** %289, align 8
  %290 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %291 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %290, i32 0, i32 1
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = call i32 @spin_unlock(i32* %296)
  br label %303

298:                                              ; preds = %283
  %299 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %300 = call i32 @unlock_rsb(%struct.dlm_rsb* %299)
  %301 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %302 = call i32 @put_rsb(%struct.dlm_rsb* %301)
  br label %303

303:                                              ; preds = %298, %286
  store i32 0, i32* %8, align 4
  br label %389

304:                                              ; preds = %133
  %305 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %306 = load i8*, i8** %11, align 8
  %307 = load i32, i32* %12, align 4
  %308 = call i32 @get_rsb_struct(%struct.dlm_ls* %305, i8* %306, i32 %307, %struct.dlm_rsb** %16)
  store i32 %308, i32* %23, align 4
  %309 = load i32, i32* %23, align 4
  %310 = load i32, i32* @EAGAIN, align 4
  %311 = sub nsw i32 0, %310
  %312 = icmp eq i32 %309, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %304
  %314 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %315 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %314, i32 0, i32 1
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = call i32 @spin_unlock(i32* %320)
  br label %79

322:                                              ; preds = %304
  %323 = load i32, i32* %23, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  br label %379

326:                                              ; preds = %322
  %327 = load i32, i32* %17, align 4
  %328 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %329 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %18, align 4
  %331 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %332 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %331, i32 0, i32 4
  store i32 %330, i32* %332, align 8
  %333 = load i32, i32* %21, align 4
  %334 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %335 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* %10, align 4
  %337 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %338 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %341 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %340, i32 0, i32 2
  store i32 %339, i32* %341, align 8
  %342 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %343 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %342, i32 0, i32 6
  %344 = call i32 @kref_init(i32* %343)
  %345 = load i8*, i8** @jiffies, align 8
  %346 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %347 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %346, i32 0, i32 5
  store i8* %345, i8** %347, align 8
  %348 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %349 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %350 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %349, i32 0, i32 1
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = load i32, i32* %18, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 1
  %356 = call i32 @rsb_insert(%struct.dlm_rsb* %348, i32* %355)
  store i32 %356, i32* %23, align 4
  %357 = load i32, i32* %23, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %370

359:                                              ; preds = %326
  %360 = load %struct.dlm_rsb*, %struct.dlm_rsb** %16, align 8
  %361 = call i32 @dlm_free_rsb(%struct.dlm_rsb* %360)
  %362 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %363 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %362, i32 0, i32 1
  %364 = load %struct.TYPE_2__*, %struct.TYPE_2__** %363, align 8
  %365 = load i32, i32* %18, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 0
  %369 = call i32 @spin_unlock(i32* %368)
  br label %79

370:                                              ; preds = %326
  %371 = load i32*, i32** %15, align 8
  %372 = icmp ne i32* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i32, i32* @DLM_LU_ADD, align 4
  %375 = load i32*, i32** %15, align 8
  store i32 %374, i32* %375, align 4
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32, i32* %10, align 4
  %378 = load i32*, i32** %14, align 8
  store i32 %377, i32* %378, align 4
  store i32 0, i32* %23, align 4
  br label %379

379:                                              ; preds = %376, %325
  %380 = load %struct.dlm_ls*, %struct.dlm_ls** %9, align 8
  %381 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %380, i32 0, i32 1
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = load i32, i32* %18, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = call i32 @spin_unlock(i32* %386)
  %388 = load i32, i32* %23, align 4
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %379, %303, %84, %65, %42, %35
  %390 = load i32, i32* %8, align 4
  ret i32 %390
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, ...) #1

declare dso_local i32 @jhash(i8*, i32, i32) #1

declare dso_local i32 @dlm_hash2nodeid(%struct.dlm_ls*, i32) #1

declare dso_local i32 @pre_rsb_struct(%struct.dlm_ls*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_search_rsb_tree(i32*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i64 @dlm_is_removed(%struct.dlm_ls*, i32) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @dlm_dump_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @log_limit(%struct.dlm_ls*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @get_rsb_struct(%struct.dlm_ls*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rsb_insert(%struct.dlm_rsb*, i32*) #1

declare dso_local i32 @dlm_free_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
