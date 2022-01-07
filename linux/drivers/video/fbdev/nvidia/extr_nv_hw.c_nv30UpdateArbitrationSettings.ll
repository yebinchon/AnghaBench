; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv30UpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv30UpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*, i32*, i32*)* @nv30UpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv30UpdateArbitrationSettings(%struct.nvidia_par* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nvidia_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 2048, i32* %9, align 4
  store i32 512, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %10, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %16 = call i32 @nvGetClocks(%struct.nvidia_par* %15, i32* %7, i32* %8)
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = lshr i32 %18, 5
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %24, %3
  %21 = load i32, i32* %10, align 4
  %22 = lshr i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = lshr i32 %29, 3
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  ret void
}

declare dso_local i32 @nvGetClocks(%struct.nvidia_par*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
