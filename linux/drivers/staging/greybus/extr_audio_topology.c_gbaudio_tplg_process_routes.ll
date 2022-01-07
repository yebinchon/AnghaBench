; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_process_routes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_process_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, %struct.snd_soc_dapm_route*, i32 }
%struct.snd_soc_dapm_route = type { i8*, i8*, i8* }
%struct.gb_audio_route = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d:%d:%d:%d - Invalid sink\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%d:%d:%d:%d - Invalid source\0A\00", align 1
@GBAUDIO_INVALID_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%d:%d:%d:%d - Invalid control\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Route {%s, %s, %s}\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.gb_audio_route*)* @gbaudio_tplg_process_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_tplg_process_routes(%struct.gbaudio_module_info* %0, %struct.gb_audio_route* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca %struct.gb_audio_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_route*, align 8
  %9 = alloca %struct.gb_audio_route*, align 8
  %10 = alloca i64, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store %struct.gb_audio_route* %1, %struct.gb_audio_route** %5, align 8
  %11 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %12 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 24, %14
  store i64 %15, i64* %10, align 8
  %16 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %17 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_soc_dapm_route* @devm_kzalloc(i32 %18, i64 %19, i32 %20)
  store %struct.snd_soc_dapm_route* %21, %struct.snd_soc_dapm_route** %8, align 8
  %22 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %23 = icmp ne %struct.snd_soc_dapm_route* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %179

27:                                               ; preds = %2
  %28 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %29 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %30 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %29, i32 0, i32 1
  store %struct.snd_soc_dapm_route* %28, %struct.snd_soc_dapm_route** %30, align 8
  %31 = load %struct.gb_audio_route*, %struct.gb_audio_route** %5, align 8
  store %struct.gb_audio_route* %31, %struct.gb_audio_route** %9, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %166, %27
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %35 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %169

38:                                               ; preds = %32
  %39 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %40 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %41 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @gbaudio_map_widgetid(%struct.gbaudio_module_info* %39, i32 %42)
  %44 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %38
  %51 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %52 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %55 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %58 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %61 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %64 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i64 %62, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %170

69:                                               ; preds = %38
  %70 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %71 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %72 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @gbaudio_map_widgetid(%struct.gbaudio_module_info* %70, i32 %73)
  %75 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %69
  %82 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %83 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %86 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %89 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %92 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %95 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i64 %93, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %170

100:                                              ; preds = %69
  %101 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %102 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %103 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %106 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @gbaudio_map_controlid(%struct.gbaudio_module_info* %101, i64 %104, i32 %107)
  %109 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %110 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %112 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @GBAUDIO_INVALID_ID, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %100
  %117 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %118 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %116
  %122 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %123 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %126 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %129 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %132 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %135 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130, i64 %133, i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %7, align 4
  br label %170

140:                                              ; preds = %116, %100
  %141 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %142 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %145 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %148 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %153 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  br label %156

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i8* [ %154, %151 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %155 ]
  %158 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %159 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @dev_dbg(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %146, i8* %157, i8* %160)
  %162 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %8, align 8
  %163 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %162, i32 1
  store %struct.snd_soc_dapm_route* %163, %struct.snd_soc_dapm_route** %8, align 8
  %164 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %165 = getelementptr inbounds %struct.gb_audio_route, %struct.gb_audio_route* %164, i32 1
  store %struct.gb_audio_route* %165, %struct.gb_audio_route** %9, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %32

169:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %179

170:                                              ; preds = %121, %81, %50
  %171 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %172 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %175 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %174, i32 0, i32 1
  %176 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %175, align 8
  %177 = call i32 @devm_kfree(i32 %173, %struct.snd_soc_dapm_route* %176)
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %170, %169, %24
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.snd_soc_dapm_route* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i8* @gbaudio_map_widgetid(%struct.gbaudio_module_info*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i8* @gbaudio_map_controlid(%struct.gbaudio_module_info*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @devm_kfree(i32, %struct.snd_soc_dapm_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
