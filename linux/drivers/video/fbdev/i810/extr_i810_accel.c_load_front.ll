; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_load_front.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_accel.c_load_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.i810fb_par* }
%struct.i810fb_par = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRING_PAD = common dso_local global i64 0, align 8
@PARSER = common dso_local global i32 0, align 4
@FLUSH = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@FRONT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fb_info*)* @load_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_front(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.i810fb_par*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.i810fb_par*, %struct.i810fb_par** %7, align 8
  store %struct.i810fb_par* %8, %struct.i810fb_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = load i64, i64* @IRING_PAD, align 8
  %11 = add nsw i64 8, %10
  %12 = call i64 @begin_iring(%struct.fb_info* %9, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %51

15:                                               ; preds = %2
  %16 = load i32, i32* @PARSER, align 4
  %17 = load i32, i32* @FLUSH, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @PUT_RING(i32 %18)
  %20 = load i32, i32* @NOP, align 4
  %21 = call i32 @PUT_RING(i32 %20)
  %22 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %23 = call i32 @end_iring(%struct.i810fb_par* %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = load i64, i64* @IRING_PAD, align 8
  %26 = add nsw i64 8, %25
  %27 = call i64 @begin_iring(%struct.fb_info* %24, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %51

30:                                               ; preds = %15
  %31 = load i32, i32* @PARSER, align 4
  %32 = load i32, i32* @FRONT_BUFFER, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %35 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 3
  %38 = shl i32 %37, 8
  %39 = or i32 %33, %38
  %40 = call i32 @PUT_RING(i32 %39)
  %41 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %42 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 12
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @PUT_RING(i32 %47)
  %49 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %50 = call i32 @end_iring(%struct.i810fb_par* %49)
  br label %51

51:                                               ; preds = %30, %29, %14
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
