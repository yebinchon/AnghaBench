; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_NVWriteAttr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_NVWriteAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i64, i64 }

@VGA_ATT_IW = common dso_local global i32 0, align 4
@VGA_ATT_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVWriteAttr(%struct.nvidia_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvidia_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %9 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %12 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 10
  %15 = call i32 @VGA_RD08(i32 %10, i64 %14)
  store volatile i32 %15, i32* %7, align 4
  %16 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %17 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -33
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %28 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VGA_ATT_IW, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VGA_WR08(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %34 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VGA_ATT_W, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @VGA_WR08(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @VGA_RD08(i32, i64) #1

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
