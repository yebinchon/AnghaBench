; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_process_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_tplg_process_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.gb_audio_topology = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"DAI offset is 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"control offset is %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"widget offset is %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"route offset is %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.gb_audio_topology*)* @gbaudio_tplg_process_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_tplg_process_header(%struct.gbaudio_module_info* %0, %struct.gb_audio_topology* %1) #0 {
  %3 = alloca %struct.gbaudio_module_info*, align 8
  %4 = alloca %struct.gb_audio_topology*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %3, align 8
  store %struct.gb_audio_topology* %1, %struct.gb_audio_topology** %4, align 8
  %5 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %6 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %9 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %11 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %14 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %16 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %19 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %21 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %20, i32 0, i32 3
  %22 = ptrtoint i32* %21 to i64
  %23 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %24 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %26 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %29 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = getelementptr i8, i8* %31, i64 %27
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %35 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %37 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %40 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = getelementptr i8, i8* %42, i64 %38
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %46 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %48 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %4, align 8
  %51 = getelementptr inbounds %struct.gb_audio_topology, %struct.gb_audio_topology* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = getelementptr i8, i8* %53, i64 %49
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %57 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %59 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %62 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %66 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %69 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %73 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %76 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %80 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %83 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  ret i32 0
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
