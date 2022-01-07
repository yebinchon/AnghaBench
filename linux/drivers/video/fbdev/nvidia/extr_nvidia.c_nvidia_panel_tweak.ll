; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_panel_tweak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_panel_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32 }
%struct._riva_hw_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvidia_par*, %struct._riva_hw_state*)* @nvidia_panel_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_panel_tweak(%struct.nvidia_par* %0, %struct._riva_hw_state* %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca %struct._riva_hw_state*, align 8
  %5 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store %struct._riva_hw_state* %1, %struct._riva_hw_state** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %7 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %12 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %16 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 808
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct._riva_hw_state*, %struct._riva_hw_state** %4, align 8
  %22 = getelementptr inbounds %struct._riva_hw_state, %struct._riva_hw_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20, %14
  %27 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %28 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 65520
  %31 = icmp eq i32 %30, 784
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
