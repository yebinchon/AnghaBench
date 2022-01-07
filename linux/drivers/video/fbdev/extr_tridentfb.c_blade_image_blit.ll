; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_blade_image_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_blade_image_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i64 }

@COLOR = common dso_local global i32 0, align 4
@BGCOLOR = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@DST1 = common dso_local global i32 0, align 4
@DST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i8*, i32, i32, i32, i32, i32, i32)* @blade_image_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blade_image_blit(%struct.tridentfb_par* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.tridentfb_par*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  %19 = add nsw i32 %18, 31
  %20 = ashr i32 %19, 5
  %21 = load i32, i32* %14, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %24 = load i32, i32* @COLOR, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @writemmr(%struct.tridentfb_par* %23, i32 %24, i32 %25)
  %27 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %28 = load i32, i32* @BGCOLOR, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @writemmr(%struct.tridentfb_par* %27, i32 %28, i32 %29)
  %31 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %32 = load i32, i32* @CMD, align 4
  %33 = call i32 @writemmr(%struct.tridentfb_par* %31, i32 %32, i32 -1609039872)
  %34 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %35 = load i32, i32* @DST1, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @point(i32 %36, i32 %37)
  %39 = call i32 @writemmr(%struct.tridentfb_par* %34, i32 %35, i32 %38)
  %40 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %41 = load i32, i32* @DST2, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @point(i32 %45, i32 %49)
  %51 = call i32 @writemmr(%struct.tridentfb_par* %40, i32 %41, i32 %50)
  %52 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  %53 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 65536
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @iowrite32_rep(i64 %55, i8* %56, i32 %57)
  ret void
}

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @point(i32, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
