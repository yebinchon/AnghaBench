; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_fabric_tf_ops_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_fabric_tf_ops_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_core_fabric_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@TARGET_FABRIC_NAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Passed alias: %s exceeds TARGET_FABRIC_NAME_SIZE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Missing tfo->fabric_name\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Passed name: %s exceeds TARGET_FABRIC_NAME_SIZE\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Missing tfo->tpg_get_wwn()\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Missing tfo->tpg_get_tag()\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Missing tfo->tpg_check_demo_mode()\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Missing tfo->tpg_check_demo_mode_cache()\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Missing tfo->tpg_check_demo_mode_write_protect()\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Missing tfo->tpg_check_prod_mode_write_protect()\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Missing tfo->tpg_get_inst_index()\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Missing tfo->release_cmd()\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Missing tfo->sess_get_index()\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Missing tfo->write_pending()\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Missing tfo->set_default_node_attributes()\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Missing tfo->get_cmd_state()\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Missing tfo->queue_data_in()\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Missing tfo->queue_status()\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Missing tfo->queue_tm_rsp()\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Missing tfo->aborted_task()\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Missing tfo->check_stop_free()\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_make_wwn()\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_drop_wwn()\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_make_tpg()\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_drop_tpg()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_core_fabric_ops*)* @target_fabric_tf_ops_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_fabric_tf_ops_check(%struct.target_core_fabric_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_core_fabric_ops*, align 8
  store %struct.target_core_fabric_ops* %0, %struct.target_core_fabric_ops** %3, align 8
  %4 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %5 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %4, i32 0, i32 22
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %10 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %9, i32 0, i32 22
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @strlen(i64 %11)
  %13 = load i64, i64* @TARGET_FABRIC_NAME_SIZE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %17 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %16, i32 0, i32 22
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %236

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %25 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %24, i32 0, i32 21
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %236

32:                                               ; preds = %23
  %33 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %34 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %33, i32 0, i32 21
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @strlen(i64 %35)
  %37 = load i64, i64* @TARGET_FABRIC_NAME_SIZE, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %41 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %40, i32 0, i32 21
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %236

46:                                               ; preds = %32
  %47 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %48 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %47, i32 0, i32 20
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %236

55:                                               ; preds = %46
  %56 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %57 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %56, i32 0, i32 19
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %236

64:                                               ; preds = %55
  %65 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %66 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %65, i32 0, i32 18
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %236

73:                                               ; preds = %64
  %74 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %75 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %74, i32 0, i32 17
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %236

82:                                               ; preds = %73
  %83 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %84 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %236

91:                                               ; preds = %82
  %92 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %93 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %236

100:                                              ; preds = %91
  %101 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %102 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %236

109:                                              ; preds = %100
  %110 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %111 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %236

118:                                              ; preds = %109
  %119 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %120 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %236

127:                                              ; preds = %118
  %128 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %129 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %236

136:                                              ; preds = %127
  %137 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %138 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %236

145:                                              ; preds = %136
  %146 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %147 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %236

154:                                              ; preds = %145
  %155 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %156 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %236

163:                                              ; preds = %154
  %164 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %165 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %236

172:                                              ; preds = %163
  %173 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %174 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %236

181:                                              ; preds = %172
  %182 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %183 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %181
  %187 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %236

190:                                              ; preds = %181
  %191 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %192 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  %196 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %236

199:                                              ; preds = %190
  %200 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %201 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199
  %205 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %236

208:                                              ; preds = %199
  %209 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %210 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %236

217:                                              ; preds = %208
  %218 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %219 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  %223 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %236

226:                                              ; preds = %217
  %227 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %3, align 8
  %228 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %226
  %232 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %2, align 4
  br label %236

235:                                              ; preds = %226
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %235, %231, %222, %213, %204, %195, %186, %177, %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78, %69, %60, %51, %39, %28, %15
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
