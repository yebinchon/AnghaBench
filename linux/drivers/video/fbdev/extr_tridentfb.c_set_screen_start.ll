; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_screen_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_screen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@VGA_CRTC_START_LO = common dso_local global i32 0, align 4
@VGA_CRTC_START_HI = common dso_local global i32 0, align 4
@CRTCModuleTest = common dso_local global i32 0, align 4
@CRTHiOrd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32)* @set_screen_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_screen_start(%struct.tridentfb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.tridentfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %7 = load i32, i32* @VGA_CRTC_START_LO, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  %10 = call i32 @write3X4(%struct.tridentfb_par* %6, i32 %7, i32 %9)
  %11 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %12 = load i32, i32* @VGA_CRTC_START_HI, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 65280
  %15 = ashr i32 %14, 8
  %16 = call i32 @write3X4(%struct.tridentfb_par* %11, i32 %12, i32 %15)
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %18 = load i32, i32* @CRTCModuleTest, align 4
  %19 = call i32 @read3X4(%struct.tridentfb_par* %17, i32 %18)
  %20 = and i32 %19, 223
  store i32 %20, i32* %5, align 4
  %21 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %22 = load i32, i32* @CRTCModuleTest, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 65536
  %26 = ashr i32 %25, 11
  %27 = or i32 %23, %26
  %28 = call i32 @write3X4(%struct.tridentfb_par* %21, i32 %22, i32 %27)
  %29 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %30 = load i32, i32* @CRTHiOrd, align 4
  %31 = call i32 @read3X4(%struct.tridentfb_par* %29, i32 %30)
  %32 = and i32 %31, 248
  store i32 %32, i32* %5, align 4
  %33 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %34 = load i32, i32* @CRTHiOrd, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 917504
  %38 = ashr i32 %37, 17
  %39 = or i32 %35, %38
  %40 = call i32 @write3X4(%struct.tridentfb_par* %33, i32 %34, i32 %39)
  ret void
}

declare dso_local i32 @write3X4(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @read3X4(%struct.tridentfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
