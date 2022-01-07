; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_do_synth_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_do_synth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i64, i64 (%struct.spk_synth*)*, i32, %struct.TYPE_7__, i32, %struct.var_t*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.var_t = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SYNTH_CHECK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@synth = common dso_local global %struct.spk_synth* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"synth probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: device probe failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@synth_time_vars = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MAXVARS = common dso_local global i64 0, align 8
@spk_quiet_boot = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s found\0A\00", align 1
@speakup_kobj = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@synth_flags = common dso_local global i32 0, align 4
@speakup_event = common dso_local global i32 0, align 4
@speakup_task = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spk_synth*)* @do_synth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_synth_init(%struct.spk_synth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spk_synth*, align 8
  %4 = alloca %struct.var_t*, align 8
  store %struct.spk_synth* %0, %struct.spk_synth** %3, align 8
  %5 = call i32 (...) @synth_release()
  %6 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %7 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYNTH_CHECK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %145

14:                                               ; preds = %1
  %15 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  store %struct.spk_synth* %15, %struct.spk_synth** @synth, align 8
  %16 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %17 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  %18 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %20 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %19, i32 0, i32 1
  %21 = load i64 (%struct.spk_synth*)*, i64 (%struct.spk_synth*)** %20, align 8
  %22 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %23 = call i64 %21(%struct.spk_synth* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %27 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store %struct.spk_synth* null, %struct.spk_synth** @synth, align 8
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %145

32:                                               ; preds = %14
  %33 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %34 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %35, i32* %45, align 4
  %46 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %47 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %48, i32* %58, align 4
  %59 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %60 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %61, i32* %71, align 4
  %72 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %73 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @synth_time_vars, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %74, i32* %84, align 4
  %85 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %86 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @synth_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %90 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %89, i32 0, i32 5
  %91 = load %struct.var_t*, %struct.var_t** %90, align 8
  store %struct.var_t* %91, %struct.var_t** %4, align 8
  br label %92

92:                                               ; preds = %108, %32
  %93 = load %struct.var_t*, %struct.var_t** %4, align 8
  %94 = getelementptr inbounds %struct.var_t, %struct.var_t* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.var_t*, %struct.var_t** %4, align 8
  %99 = getelementptr inbounds %struct.var_t, %struct.var_t* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAXVARS, align 8
  %102 = icmp slt i64 %100, %101
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi i1 [ false, %92 ], [ %102, %97 ]
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = load %struct.var_t*, %struct.var_t** %4, align 8
  %107 = call i32 @speakup_register_var(%struct.var_t* %106)
  br label %108

108:                                              ; preds = %105
  %109 = load %struct.var_t*, %struct.var_t** %4, align 8
  %110 = getelementptr inbounds %struct.var_t, %struct.var_t* %109, i32 1
  store %struct.var_t* %110, %struct.var_t** %4, align 8
  br label %92

111:                                              ; preds = %103
  %112 = load i32, i32* @spk_quiet_boot, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %116 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @synth_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %121 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i32, i32* @speakup_kobj, align 4
  %127 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %128 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %127, i32 0, i32 3
  %129 = call i64 @sysfs_create_group(i32 %126, %struct.TYPE_7__* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %145

134:                                              ; preds = %125, %119
  %135 = load %struct.spk_synth*, %struct.spk_synth** @synth, align 8
  %136 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* @synth_flags, align 4
  %138 = call i32 @wake_up_interruptible_all(i32* @speakup_event)
  %139 = load i64, i64* @speakup_task, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i64, i64* @speakup_task, align 8
  %143 = call i32 @wake_up_process(i64 %142)
  br label %144

144:                                              ; preds = %141, %134
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %131, %25, %11
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @synth_release(...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @synth_printf(i8*, i32) #1

declare dso_local i32 @speakup_register_var(%struct.var_t*) #1

declare dso_local i64 @sysfs_create_group(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @wake_up_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
