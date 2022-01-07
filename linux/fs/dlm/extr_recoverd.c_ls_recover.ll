; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_ls_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_ls_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i32, i32, i32, i64 }
%struct.dlm_recover = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"dlm_recover %llu\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dlm_recover_members error %d\00", align 1
@DLM_RS_NODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"dlm_recover_members_wait error %d\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"dlm_recover_directory error %d\00", align 1
@DLM_RS_DIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"dlm_recover_directory_wait error %d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"dlm_recover_directory %u out %u messages\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"dlm_recover_masters error %d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"dlm_recover_locks error %d\00", align 1
@DLM_RS_LOCKS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"dlm_recover_locks_wait error %d\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"dlm_recover_locks %u in\00", align 1
@DLM_RS_DONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"dlm_recover_done_wait error %d\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"enable_locking error %d\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"dlm_process_requestqueue error %d\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"dlm_recover_waiters_post error %d\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"dlm_recover %llu generation %u done: %u ms\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"dlm_recover %llu error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_recover*)* @ls_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_recover(%struct.dlm_ls* %0, %struct.dlm_recover* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_recover*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_recover* %1, %struct.dlm_recover** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %11 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %18 = call i32 @dlm_callback_suspend(%struct.dlm_ls* %17)
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %20 = call i32 @dlm_clear_toss(%struct.dlm_ls* %19)
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %22 = call i32 @dlm_create_root_list(%struct.dlm_ls* %21)
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %24 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %25 = call i32 @dlm_recover_members(%struct.dlm_ls* %23, %struct.dlm_recover* %24, i32* %8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %234

33:                                               ; preds = %2
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %35 = call i32 @dlm_recover_dir_nodeid(%struct.dlm_ls* %34)
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 1
  store i32 0, i32* %39, align 8
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %43 = load i32, i32* @DLM_RS_NODES, align 4
  %44 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %42, i32 %43)
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = call i32 @dlm_recover_members_wait(%struct.dlm_ls* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %234

54:                                               ; preds = %33
  %55 = load i64, i64* @jiffies, align 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %57 = call i32 @dlm_recover_directory(%struct.dlm_ls* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %234

65:                                               ; preds = %54
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %67 = load i32, i32* @DLM_RS_DIR, align 4
  %68 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %66, i32 %67)
  %69 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %70 = call i32 @dlm_recover_directory_wait(%struct.dlm_ls* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  br label %234

78:                                               ; preds = %65
  %79 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %81 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %84 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %82, i32 %85)
  %87 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %88 = call i32 @dlm_recover_waiters_pre(%struct.dlm_ls* %87)
  %89 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %90 = call i32 @dlm_recovery_stopped(%struct.dlm_ls* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %234

94:                                               ; preds = %78
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %99 = call i64 @dlm_no_directory(%struct.dlm_ls* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %97, %94
  %102 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %103 = call i32 @dlm_recover_purge(%struct.dlm_ls* %102)
  %104 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %105 = call i32 @dlm_recover_masters(%struct.dlm_ls* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %111)
  br label %234

113:                                              ; preds = %101
  %114 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %115 = call i32 @dlm_recover_locks(%struct.dlm_ls* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %121)
  br label %234

123:                                              ; preds = %113
  %124 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %125 = load i32, i32* @DLM_RS_LOCKS, align 4
  %126 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %124, i32 %125)
  %127 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %128 = call i32 @dlm_recover_locks_wait(%struct.dlm_ls* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %134)
  br label %234

136:                                              ; preds = %123
  %137 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %138 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %139 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %140)
  %142 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %143 = call i32 @dlm_recover_rsbs(%struct.dlm_ls* %142)
  br label %158

144:                                              ; preds = %97
  %145 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %146 = load i32, i32* @DLM_RS_LOCKS, align 4
  %147 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %145, i32 %146)
  %148 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %149 = call i32 @dlm_recover_locks_wait(%struct.dlm_ls* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %155)
  br label %234

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %160 = call i32 @dlm_release_root_list(%struct.dlm_ls* %159)
  %161 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %162 = call i32 @dlm_purge_requestqueue(%struct.dlm_ls* %161)
  %163 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %164 = load i32, i32* @DLM_RS_DONE, align 4
  %165 = call i32 @dlm_set_recover_status(%struct.dlm_ls* %163, i32 %164)
  %166 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %167 = call i32 @dlm_recover_done_wait(%struct.dlm_ls* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %158
  %171 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %173)
  br label %234

175:                                              ; preds = %158
  %176 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %177 = call i32 @dlm_clear_members_gone(%struct.dlm_ls* %176)
  %178 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %179 = call i32 @dlm_adjust_timeouts(%struct.dlm_ls* %178)
  %180 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %181 = call i32 @dlm_callback_resume(%struct.dlm_ls* %180)
  %182 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %183 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %184 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @enable_locking(%struct.dlm_ls* %182, i64 %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %175
  %190 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i64 %192)
  br label %234

194:                                              ; preds = %175
  %195 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %196 = call i32 @dlm_process_requestqueue(%struct.dlm_ls* %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64 %202)
  br label %234

204:                                              ; preds = %194
  %205 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %206 = call i32 @dlm_recover_waiters_post(%struct.dlm_ls* %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %210, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i64 %212)
  br label %234

214:                                              ; preds = %204
  %215 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %216 = call i32 @dlm_recover_grant(%struct.dlm_ls* %215)
  %217 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %218 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %219 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %222 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i64, i64* @jiffies, align 8
  %225 = load i64, i64* %6, align 8
  %226 = sub i64 %224, %225
  %227 = call i32 @jiffies_to_msecs(i64 %226)
  %228 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %217, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i64 %220, i32 %223, i32 %227)
  %229 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %230 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %229, i32 0, i32 2
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %233 = call i32 @dlm_lsop_recover_done(%struct.dlm_ls* %232)
  store i32 0, i32* %3, align 4
  br label %247

234:                                              ; preds = %209, %199, %189, %170, %152, %131, %118, %108, %93, %73, %60, %49, %28
  %235 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %236 = call i32 @dlm_release_root_list(%struct.dlm_ls* %235)
  %237 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %238 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %239 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 (%struct.dlm_ls*, i8*, i64, ...) @log_rinfo(%struct.dlm_ls* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i64 %240, i32 %241)
  %243 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %244 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %243, i32 0, i32 2
  %245 = call i32 @mutex_unlock(i32* %244)
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %234, %214
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @log_rinfo(%struct.dlm_ls*, i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dlm_callback_suspend(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_clear_toss(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_create_root_list(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_members(%struct.dlm_ls*, %struct.dlm_recover*, i32*) #1

declare dso_local i32 @dlm_recover_dir_nodeid(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_set_recover_status(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_recover_members_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_directory(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_directory_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_waiters_pre(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i64 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_purge(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_masters(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_locks(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_locks_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_rsbs(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_release_root_list(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_purge_requestqueue(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_done_wait(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_clear_members_gone(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_adjust_timeouts(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_callback_resume(%struct.dlm_ls*) #1

declare dso_local i32 @enable_locking(%struct.dlm_ls*, i64) #1

declare dso_local i32 @dlm_process_requestqueue(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_waiters_post(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recover_grant(%struct.dlm_ls*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dlm_lsop_recover_done(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
