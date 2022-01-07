; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_parse_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_parse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32, i32, i64, i64, i64 }
%struct.gb_audio_topology = type { i32 }
%struct.gb_audio_control = type { i32 }
%struct.gb_audio_widget = type { i32 }
%struct.gb_audio_route = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%d: Error in parsing topology header\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%d: Error in parsing controls data\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Control parsing finished\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d: Error in parsing widgets data\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Widget parsing finished\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%d: Error in parsing routes data\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Route parsing finished\0A\00", align 1
@GBCODEC_JACK_MASK = common dso_local global i32 0, align 4
@GBCODEC_JACK_BUTTON_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gbaudio_tplg_parse_data(%struct.gbaudio_module_info* %0, %struct.gb_audio_topology* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca %struct.gb_audio_topology*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_audio_control*, align 8
  %8 = alloca %struct.gb_audio_widget*, align 8
  %9 = alloca %struct.gb_audio_route*, align 8
  %10 = alloca i32, align 4
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store %struct.gb_audio_topology* %1, %struct.gb_audio_topology** %5, align 8
  %11 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %5, align 8
  %12 = icmp ne %struct.gb_audio_topology* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %112

16:                                               ; preds = %2
  %17 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %18 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %5, align 8
  %19 = call i32 @gbaudio_tplg_process_header(%struct.gbaudio_module_info* %17, %struct.gb_audio_topology* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %24 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %16
  %30 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %31 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.gb_audio_control*
  store %struct.gb_audio_control* %33, %struct.gb_audio_control** %7, align 8
  %34 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %35 = load %struct.gb_audio_control*, %struct.gb_audio_control** %7, align 8
  %36 = call i32 @gbaudio_tplg_process_kcontrols(%struct.gbaudio_module_info* %34, %struct.gb_audio_control* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %41 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %112

46:                                               ; preds = %29
  %47 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %48 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %52 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.gb_audio_widget*
  store %struct.gb_audio_widget* %54, %struct.gb_audio_widget** %8, align 8
  %55 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %56 = load %struct.gb_audio_widget*, %struct.gb_audio_widget** %8, align 8
  %57 = call i32 @gbaudio_tplg_process_widgets(%struct.gbaudio_module_info* %55, %struct.gb_audio_widget* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %62 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %112

67:                                               ; preds = %46
  %68 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %69 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %73 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.gb_audio_route*
  store %struct.gb_audio_route* %75, %struct.gb_audio_route** %9, align 8
  %76 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %77 = load %struct.gb_audio_route*, %struct.gb_audio_route** %9, align 8
  %78 = call i32 @gbaudio_tplg_process_routes(%struct.gbaudio_module_info* %76, %struct.gb_audio_route* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %83 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %112

88:                                               ; preds = %67
  %89 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %90 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %5, align 8
  %94 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @GBCODEC_JACK_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %104 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @GBCODEC_JACK_BUTTON_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %109 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %88
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %81, %60, %39, %22, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @gbaudio_tplg_process_header(%struct.gbaudio_module_info*, %struct.gb_audio_topology*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gbaudio_tplg_process_kcontrols(%struct.gbaudio_module_info*, %struct.gb_audio_control*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @gbaudio_tplg_process_widgets(%struct.gbaudio_module_info*, %struct.gb_audio_widget*) #1

declare dso_local i32 @gbaudio_tplg_process_routes(%struct.gbaudio_module_info*, %struct.gb_audio_route*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
