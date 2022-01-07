; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_lwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_lwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i64 }

@VGA_CRTC_OFFSET = common dso_local global i32 0, align 4
@TGUI9440 = common dso_local global i64 0, align 8
@CYBER9320 = common dso_local global i64 0, align 8
@AddColReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32)* @set_lwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lwidth(%struct.tridentfb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.tridentfb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %6 = load i32, i32* @VGA_CRTC_OFFSET, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  %9 = call i32 @write3X4(%struct.tridentfb_par* %5, i32 %6, i32 %8)
  %10 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %11 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TGUI9440, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %17 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CYBER9320, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15, %2
  %22 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %23 = load i32, i32* @AddColReg, align 4
  %24 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %25 = load i32, i32* @AddColReg, align 4
  %26 = call i32 @read3X4(%struct.tridentfb_par* %24, i32 %25)
  %27 = and i32 %26, 239
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 256
  %30 = ashr i32 %29, 4
  %31 = or i32 %27, %30
  %32 = call i32 @write3X4(%struct.tridentfb_par* %22, i32 %23, i32 %31)
  br label %45

33:                                               ; preds = %15
  %34 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %35 = load i32, i32* @AddColReg, align 4
  %36 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %37 = load i32, i32* @AddColReg, align 4
  %38 = call i32 @read3X4(%struct.tridentfb_par* %36, i32 %37)
  %39 = and i32 %38, 207
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 768
  %42 = ashr i32 %41, 4
  %43 = or i32 %39, %42
  %44 = call i32 @write3X4(%struct.tridentfb_par* %34, i32 %35, i32 %43)
  br label %45

45:                                               ; preds = %33, %21
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
