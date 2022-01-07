; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i64 }

@PIPE_A = common dso_local global i64 0, align 8
@PALETTE_A = common dso_local global i64 0, align 8
@PALETTE_B = common dso_local global i64 0, align 8
@PALETTE_8_RED_SHIFT = common dso_local global i32 0, align 4
@PALETTE_8_GREEN_SHIFT = common dso_local global i32 0, align 4
@PALETTE_8_BLUE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfbhw_setcolreg(%struct.intelfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.intelfb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %15 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PIPE_A, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i64, i64* @PALETTE_A, align 8
  br label %23

21:                                               ; preds = %6
  %22 = load i64, i64* @PALETTE_B, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PALETTE_8_RED_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PALETTE_8_GREEN_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @PALETTE_8_BLUE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = call i32 @OUTREG(i64 %29, i32 %40)
  ret void
}

declare dso_local i32 @OUTREG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
