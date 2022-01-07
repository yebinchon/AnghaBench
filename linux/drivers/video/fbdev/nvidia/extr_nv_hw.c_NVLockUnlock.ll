; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVLockUnlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_NVLockUnlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NVLockUnlock(%struct.nvidia_par* %0, i32 %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %7 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @VGA_WR08(i32 %8, i32 980, i32 31)
  %10 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %11 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 153, i32 87
  %17 = call i32 @VGA_WR08(i32 %12, i32 981, i32 %16)
  %18 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %19 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @VGA_WR08(i32 %20, i32 980, i32 17)
  %22 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %23 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @VGA_RD08(i32 %24, i32 981)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 128
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, -129
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %36 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @VGA_WR08(i32 %37, i32 981, i32 %38)
  ret void
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i32 @VGA_RD08(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
