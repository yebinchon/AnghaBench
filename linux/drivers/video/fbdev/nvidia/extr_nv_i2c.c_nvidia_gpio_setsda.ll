; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_i2c.c_nvidia_gpio_setsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_i2c.c_nvidia_gpio_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_i2c_chan = type { i64, %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nvidia_gpio_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvidia_gpio_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvidia_i2c_chan*, align 8
  %6 = alloca %struct.nvidia_par*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.nvidia_i2c_chan*
  store %struct.nvidia_i2c_chan* %9, %struct.nvidia_i2c_chan** %5, align 8
  %10 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %5, align 8
  %11 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %10, i32 0, i32 1
  %12 = load %struct.nvidia_par*, %struct.nvidia_par** %11, align 8
  store %struct.nvidia_par* %12, %struct.nvidia_par** %6, align 8
  %13 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %14 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %5, align 8
  %15 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @NVReadCrtc(%struct.nvidia_par* %13, i64 %17)
  %19 = and i32 %18, 240
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 16
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -17
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  %30 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %5, align 8
  %31 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 1
  %36 = call i32 @NVWriteCrtc(%struct.nvidia_par* %29, i64 %33, i32 %35)
  ret void
}

declare dso_local i32 @NVReadCrtc(%struct.nvidia_par*, i64) #1

declare dso_local i32 @NVWriteCrtc(%struct.nvidia_par*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
