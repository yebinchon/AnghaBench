; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tgui_init_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tgui_init_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32, i32)* @tgui_init_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgui_init_accel(%struct.tridentfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tridentfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 24
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 3, %10 ], [ %13, %11 ]
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %18 = call i32 @writemmr(%struct.tridentfb_par* %17, i32 8520, i32 0)
  %19 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %20 = call i32 @point(i32 4095, i32 2047)
  %21 = call i32 @writemmr(%struct.tridentfb_par* %19, i32 8524, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 8
  switch i32 %25, label %45 [
    i32 8192, label %26
    i32 512, label %26
    i32 1024, label %30
    i32 2048, label %35
    i32 4096, label %40
  ]

26:                                               ; preds = %14, %14
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  br label %45

30:                                               ; preds = %14
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 4
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  br label %45

35:                                               ; preds = %14
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 8
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  br label %45

40:                                               ; preds = %14
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 12
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  br label %45

45:                                               ; preds = %14, %40, %35, %30, %26
  %46 = load i8, i8* %7, align 1
  %47 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %48 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 8482
  %51 = call i32 @fb_writew(i8 zeroext %46, i64 %50)
  ret void
}

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @point(i32, i32) #1

declare dso_local i32 @fb_writew(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
