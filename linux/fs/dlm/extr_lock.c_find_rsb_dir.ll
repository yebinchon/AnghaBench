; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_find_rsb_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_find_rsb_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dlm_rsb = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }

@R_RECEIVE_REQUEST = common dso_local global i32 0, align 4
@R_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"find_rsb toss from_other %d master %d dir %d %s\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"find_rsb toss from_dir %d master %d\00", align 1
@RSB_MASTER_UNCERTAIN = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"find_rsb new from_dir %d recreate %s\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"find_rsb new from_other %d dir %d our %d %s\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"find_rsb new from_other %d dir %d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*, i32, i64, i64, i32, i32, i32, %struct.dlm_rsb**)* @find_rsb_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rsb_dir(%struct.dlm_ls* %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, %struct.dlm_rsb** %8) #0 {
  %10 = alloca %struct.dlm_ls*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dlm_rsb**, align 8
  %19 = alloca %struct.dlm_rsb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.dlm_rsb** %8, %struct.dlm_rsb*** %18, align 8
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %19, align 8
  %26 = call i32 (...) @dlm_our_nodeid()
  store i32 %26, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* @R_RECEIVE_REQUEST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %9
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %23, align 4
  br label %37

36:                                               ; preds = %31
  store i32 1, i32* %22, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %45

38:                                               ; preds = %9
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @R_REQUEST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %21, align 4
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %21, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %22, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %48, %45
  store i32 1, i32* %24, align 4
  br label %59

59:                                               ; preds = %58, %54, %51
  br label %60

60:                                               ; preds = %208, %59
  %61 = load i32, i32* %24, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %65 = call i32 @pre_rsb_struct(%struct.dlm_ls* %64)
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %25, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %311

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %60
  %71 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %72 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %79 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @dlm_search_rsb_tree(i32* %83, i8* %84, i32 %85, %struct.dlm_rsb** %19)
  store i32 %86, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %70
  br label %94

90:                                               ; preds = %70
  %91 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %92 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %91, i32 0, i32 6
  %93 = call i32 @kref_get(i32* %92)
  store i32 0, i32* %25, align 4
  br label %303

94:                                               ; preds = %89
  %95 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %96 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @dlm_search_rsb_tree(i32* %100, i8* %101, i32 %102, %struct.dlm_rsb** %19)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %190

107:                                              ; preds = %94
  %108 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %109 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load i32, i32* %22, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %120 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %124 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.dlm_ls*, i8*, i32, i32, ...) @log_debug(%struct.dlm_ls* %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %122, i32 %125)
  %127 = load i32, i32* @ENOTBLK, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %25, align 4
  br label %303

129:                                              ; preds = %113, %107
  %130 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %131 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %129
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %142 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.dlm_ls*, i8*, i32, i32, ...) @log_error(%struct.dlm_ls* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %146 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %145)
  %147 = load i32, i32* %20, align 4
  %148 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %149 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %151 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %153 = load i32, i32* @RSB_MASTER_UNCERTAIN, align 4
  %154 = call i32 @rsb_clear_flag(%struct.dlm_rsb* %152, i32 %153)
  %155 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %156 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %155, i32 0, i32 8
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %138, %135, %129
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %162 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %20, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %168 = load i32, i32* @RSB_MASTER_UNCERTAIN, align 4
  %169 = call i32 @rsb_set_flag(%struct.dlm_rsb* %167, i32 %168)
  %170 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %171 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %170, i32 0, i32 8
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %166, %160, %157
  %173 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %174 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %173, i32 0, i32 7
  %175 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %176 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i64, i64* %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = call i32 @rb_erase(i32* %174, i32* %180)
  %182 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %183 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %184 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = call i32 @rsb_insert(%struct.dlm_rsb* %182, i32* %188)
  store i32 %189, i32* %25, align 4
  br label %303

190:                                              ; preds = %106
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* @EBADR, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load i32, i32* %24, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %303

199:                                              ; preds = %195, %190
  %200 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @get_rsb_struct(%struct.dlm_ls* %200, i8* %201, i32 %202, %struct.dlm_rsb** %19)
  store i32 %203, i32* %25, align 4
  %204 = load i32, i32* %25, align 4
  %205 = load i32, i32* @EAGAIN, align 4
  %206 = sub nsw i32 0, %205
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %210 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i64, i64* %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = call i32 @spin_unlock(i32* %214)
  br label %60

216:                                              ; preds = %199
  %217 = load i32, i32* %25, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %303

220:                                              ; preds = %216
  %221 = load i64, i64* %13, align 8
  %222 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %223 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %226 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %225, i32 0, i32 3
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %229 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %231 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %230, i32 0, i32 6
  %232 = call i32 @kref_init(i32* %231)
  %233 = load i32, i32* %23, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %220
  %236 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %239 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (%struct.dlm_ls*, i8*, i32, i32, ...) @log_debug(%struct.dlm_ls* %236, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %244 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %246 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %245, i32 0, i32 1
  store i32 0, i32* %246, align 4
  br label %294

247:                                              ; preds = %220
  %248 = load i32, i32* %22, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %247
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %20, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %250
  %255 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %20, align 4
  %259 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %260 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (%struct.dlm_ls*, i8*, i32, i32, ...) @log_error(%struct.dlm_ls* %255, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %256, i32 %257, i32 %258, i32 %261)
  %263 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %264 = call i32 @dlm_free_rsb(%struct.dlm_rsb* %263)
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %19, align 8
  %265 = load i32, i32* @ENOTBLK, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %25, align 4
  br label %303

267:                                              ; preds = %250, %247
  %268 = load i32, i32* %22, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %267
  %271 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %275 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (%struct.dlm_ls*, i8*, i32, i32, ...) @log_debug(%struct.dlm_ls* %271, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %273, i32 %276)
  br label %278

278:                                              ; preds = %270, %267
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %20, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = load i32, i32* %20, align 4
  %284 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %285 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %287 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %286, i32 0, i32 1
  store i32 0, i32* %287, align 4
  br label %293

288:                                              ; preds = %278
  %289 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %290 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %289, i32 0, i32 0
  store i32 0, i32* %290, align 8
  %291 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %292 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %291, i32 0, i32 1
  store i32 -1, i32* %292, align 4
  br label %293

293:                                              ; preds = %288, %282
  br label %294

294:                                              ; preds = %293, %235
  %295 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %296 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %297 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %296, i32 0, i32 0
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** %297, align 8
  %299 = load i64, i64* %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 1
  %302 = call i32 @rsb_insert(%struct.dlm_rsb* %295, i32* %301)
  store i32 %302, i32* %25, align 4
  br label %303

303:                                              ; preds = %294, %254, %219, %198, %172, %116, %90
  %304 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  %305 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %304, i32 0, i32 0
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = load i64, i64* %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = call i32 @spin_unlock(i32* %309)
  br label %311

311:                                              ; preds = %303, %68
  %312 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  %313 = load %struct.dlm_rsb**, %struct.dlm_rsb*** %18, align 8
  store %struct.dlm_rsb* %312, %struct.dlm_rsb** %313, align 8
  %314 = load i32, i32* %25, align 4
  ret i32 %314
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @pre_rsb_struct(%struct.dlm_ls*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_search_rsb_tree(i32*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32, ...) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i32, ...) #1

declare dso_local i32 @dlm_print_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @rsb_clear_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @rsb_insert(%struct.dlm_rsb*, i32*) #1

declare dso_local i32 @get_rsb_struct(%struct.dlm_ls*, i8*, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dlm_free_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
