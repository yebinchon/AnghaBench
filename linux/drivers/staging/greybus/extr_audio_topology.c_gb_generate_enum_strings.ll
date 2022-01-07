; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gb_generate_enum_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gb_generate_enum_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32 }
%struct.gb_audio_enumerated = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.gbaudio_module_info*, %struct.gb_audio_enumerated*)* @gb_generate_enum_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @gb_generate_enum_strings(%struct.gbaudio_module_info* %0, %struct.gb_audio_enumerated* %1) #0 {
  %3 = alloca %struct.gbaudio_module_info*, align 8
  %4 = alloca %struct.gb_audio_enumerated*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %3, align 8
  store %struct.gb_audio_enumerated* %1, %struct.gb_audio_enumerated** %4, align 8
  %9 = load %struct.gb_audio_enumerated*, %struct.gb_audio_enumerated** %4, align 8
  %10 = getelementptr inbounds %struct.gb_audio_enumerated, %struct.gb_audio_enumerated* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %14 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8** @devm_kcalloc(i32 %15, i32 %16, i32 8, i32 %17)
  store i8** %18, i8*** %5, align 8
  %19 = load %struct.gb_audio_enumerated*, %struct.gb_audio_enumerated** %4, align 8
  %20 = getelementptr inbounds %struct.gb_audio_enumerated, %struct.gb_audio_enumerated* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %43, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8* %27, i8** %31, align 8
  br label %32

32:                                               ; preds = %37, %26
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %32

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i8**, i8*** %5, align 8
  ret i8** %47
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8** @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
