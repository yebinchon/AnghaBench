; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_color_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_color_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { i32 }

@IRING_PAD = common dso_local global i64 0, align 8
@BLIT = common dso_local global i32 0, align 4
@COLOR_BLT = common dso_local global i32 0, align 4
@SOLIDPATTERN = common dso_local global i32 0, align 4
@DYN_COLOR_EN = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, %struct.fb_info*)* @color_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_blit(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.fb_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fb_info*, align 8
  %17 = alloca %struct.i810fb_par*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.fb_info* %7, %struct.fb_info** %16, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = load %struct.i810fb_par*, %struct.i810fb_par** %19, align 8
  store %struct.i810fb_par* %20, %struct.i810fb_par** %17, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %16, align 8
  %22 = load i64, i64* @IRING_PAD, align 8
  %23 = add nsw i64 24, %22
  %24 = call i64 @begin_iring(%struct.fb_info* %21, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %57

27:                                               ; preds = %8
  %28 = load i32, i32* @BLIT, align 4
  %29 = load i32, i32* @COLOR_BLT, align 4
  %30 = or i32 %28, %29
  %31 = or i32 %30, 3
  %32 = call i32 @PUT_RING(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SOLIDPATTERN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DYN_COLOR_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %15, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @PUT_RING(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @PUT_RING(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @PUT_RING(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @PUT_RING(i32 %51)
  %53 = load i32, i32* @NOP, align 4
  %54 = call i32 @PUT_RING(i32 %53)
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %17, align 8
  %56 = call i32 @end_iring(%struct.i810fb_par* %55)
  br label %57

57:                                               ; preds = %27, %26
  ret void
}

declare dso_local i64 @begin_iring(%struct.fb_info*, i64) #1

declare dso_local i32 @PUT_RING(i32) #1

declare dso_local i32 @end_iring(%struct.i810fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
