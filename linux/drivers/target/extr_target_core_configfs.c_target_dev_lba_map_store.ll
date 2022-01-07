; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_lba_map_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_lba_map_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { i32 }
%struct.t10_alua_lba_map = type { i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%lu %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid line %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid line %d, missing end lba\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Invalid line %d, missing state definitions\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%d:%c\00", align 1
@ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_ACTIVE_NON_OPTIMIZED = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_STANDBY = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid ALUA state '%c'\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Invalid target descriptor %d:%c at line %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Only %d from %d port groups definitions at line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @target_dev_lba_map_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_dev_lba_map_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca %struct.t10_alua_lba_map*, align 8
  %10 = alloca %struct.list_head, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load %struct.config_item*, %struct.config_item** %5, align 8
  %26 = call %struct.se_device* @to_device(%struct.config_item* %25)
  store %struct.se_device* %26, %struct.se_device** %8, align 8
  store %struct.t10_alua_lba_map* null, %struct.t10_alua_lba_map** %9, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 -1, i64* %21, align 8
  store i64 -1, i64* %22, align 8
  store i64 -1, i64* %23, align 8
  store i64 -1, i64* %24, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kstrdup(i8* %27, i32 %28)
  store i8* %29, i8** %11, align 8
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %187

35:                                               ; preds = %3
  %36 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  br label %37

37:                                               ; preds = %167, %57, %44, %35
  %38 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %170

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %37

45:                                               ; preds = %40
  %46 = load i32, i32* %18, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %23, i64* %24)
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %18, align 4
  %54 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %17, align 4
  br label %170

57:                                               ; preds = %48
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %37

60:                                               ; preds = %45
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 (i8*, i8*, ...) @sscanf(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64* %21, i64* %22)
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %18, align 4
  %66 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %17, align 4
  br label %170

69:                                               ; preds = %60
  %70 = load i8*, i8** %13, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 32)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %18, align 4
  %76 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %170

79:                                               ; preds = %69
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 32)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %18, align 4
  %88 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %170

91:                                               ; preds = %79
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %13, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = call %struct.t10_alua_lba_map* @core_alua_allocate_lba_map(%struct.list_head* %10, i64 %94, i64 %95)
  store %struct.t10_alua_lba_map* %96, %struct.t10_alua_lba_map** %9, align 8
  %97 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %9, align 8
  %98 = call i64 @IS_ERR(%struct.t10_alua_lba_map* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %9, align 8
  %102 = call i32 @PTR_ERR(%struct.t10_alua_lba_map* %101)
  store i32 %102, i32* %17, align 4
  br label %170

103:                                              ; preds = %91
  store i32 0, i32* %16, align 4
  br label %104

104:                                              ; preds = %149, %103
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 (i8*, i8*, ...) @sscanf(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %19, i8* %14)
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %150

108:                                              ; preds = %104
  %109 = load i8, i8* %14, align 1
  %110 = sext i8 %109 to i32
  switch i32 %110, label %119 [
    i32 79, label %111
    i32 65, label %113
    i32 83, label %115
    i32 85, label %117
  ]

111:                                              ; preds = %108
  %112 = load i32, i32* @ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED, align 4
  store i32 %112, i32* %20, align 4
  br label %125

113:                                              ; preds = %108
  %114 = load i32, i32* @ALUA_ACCESS_STATE_ACTIVE_NON_OPTIMIZED, align 4
  store i32 %114, i32* %20, align 4
  br label %125

115:                                              ; preds = %108
  %116 = load i32, i32* @ALUA_ACCESS_STATE_STANDBY, align 4
  store i32 %116, i32* %20, align 4
  br label %125

117:                                              ; preds = %108
  %118 = load i32, i32* @ALUA_ACCESS_STATE_UNAVAILABLE, align 4
  store i32 %118, i32* %20, align 4
  br label %125

119:                                              ; preds = %108
  %120 = load i8, i8* %14, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %17, align 4
  br label %171

125:                                              ; preds = %117, %115, %113, %111
  %126 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %9, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @core_alua_allocate_lba_map_mem(%struct.t10_alua_lba_map* %126, i32 %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* %19, align 4
  %134 = load i8, i8* %14, align 1
  %135 = sext i8 %134 to i32
  %136 = load i32, i32* %18, align 4
  %137 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %133, i32 %135, i32 %136)
  br label %150

138:                                              ; preds = %125
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = call i8* @strchr(i8* %141, i8 signext 32)
  store i8* %142, i8** %13, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %13, align 8
  br label %149

148:                                              ; preds = %138
  br label %150

149:                                              ; preds = %145
  br label %104

150:                                              ; preds = %148, %132, %104
  %151 = load i32, i32* %15, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %15, align 4
  br label %167

155:                                              ; preds = %150
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %17, align 4
  br label %170

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %18, align 4
  br label %37

170:                                              ; preds = %159, %100, %86, %74, %64, %52, %37
  br label %171

171:                                              ; preds = %170, %119
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = call i32 @core_alua_free_lba_map(%struct.list_head* %10)
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %7, align 8
  br label %183

178:                                              ; preds = %171
  %179 = load %struct.se_device*, %struct.se_device** %8, align 8
  %180 = load i64, i64* %23, align 8
  %181 = load i64, i64* %24, align 8
  %182 = call i32 @core_alua_set_lba_map(%struct.se_device* %179, %struct.list_head* %10, i64 %180, i64 %181)
  br label %183

183:                                              ; preds = %178, %174
  %184 = load i8*, i8** %12, align 8
  %185 = call i32 @kfree(i8* %184)
  %186 = load i64, i64* %7, align 8
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %183, %32
  %188 = load i64, i64* %4, align 8
  ret i64 %188
}

declare dso_local %struct.se_device* @to_device(%struct.config_item*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.t10_alua_lba_map* @core_alua_allocate_lba_map(%struct.list_head*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.t10_alua_lba_map*) #1

declare dso_local i32 @PTR_ERR(%struct.t10_alua_lba_map*) #1

declare dso_local i32 @core_alua_allocate_lba_map_mem(%struct.t10_alua_lba_map*, i32, i32) #1

declare dso_local i32 @core_alua_free_lba_map(%struct.list_head*) #1

declare dso_local i32 @core_alua_set_lba_map(%struct.se_device*, %struct.list_head*, i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
