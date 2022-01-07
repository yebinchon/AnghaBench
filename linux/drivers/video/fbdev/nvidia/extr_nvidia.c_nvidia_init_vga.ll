; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_init_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_init_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { %struct._riva_hw_state }
%struct._riva_hw_state = type { i32*, i32*, i32*, i32*, i32 }

@NUM_CRT_REGS = common dso_local global i32 0, align 4
@NUM_GRC_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @nvidia_init_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvidia_init_vga(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca %struct._riva_hw_state*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  store %struct.nvidia_par* %8, %struct.nvidia_par** %3, align 8
  %9 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %10 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %9, i32 0, i32 0
  store %struct._riva_hw_state* %10, %struct._riva_hw_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %17 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %27 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 16
  store i32 65, i32* %29, align 4
  %30 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %31 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 17
  store i32 255, i32* %33, align 4
  %34 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %35 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 18
  store i32 15, i32* %37, align 4
  %38 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %39 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 19
  store i32 0, i32* %41, align 4
  %42 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %43 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 20
  store i32 0, i32* %45, align 4
  %46 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %47 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @NUM_CRT_REGS, align 4
  %50 = call i32 @memset(i32* %48, i32 0, i32 %49)
  %51 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %52 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 10
  store i32 32, i32* %54, align 4
  %55 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %56 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 23
  store i32 227, i32* %58, align 4
  %59 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %60 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 24
  store i32 255, i32* %62, align 4
  %63 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %64 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 40
  store i32 64, i32* %66, align 4
  %67 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %68 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @NUM_GRC_REGS, align 4
  %71 = call i32 @memset(i32* %69, i32 0, i32 %70)
  %72 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %73 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  store i32 64, i32* %75, align 4
  %76 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %77 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  store i32 5, i32* %79, align 4
  %80 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %81 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  store i32 15, i32* %83, align 4
  %84 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %85 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32 255, i32* %87, align 4
  %88 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %89 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 3, i32* %91, align 4
  %92 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %93 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 1, i32* %95, align 4
  %96 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %97 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 15, i32* %99, align 4
  %100 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %101 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 0, i32* %103, align 4
  %104 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %105 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 14, i32* %107, align 4
  %108 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %109 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %108, i32 0, i32 4
  store i32 235, i32* %109, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
