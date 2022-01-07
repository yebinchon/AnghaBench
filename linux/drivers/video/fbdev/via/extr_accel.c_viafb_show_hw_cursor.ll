; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_accel.c_viafb_show_hw_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_accel.c_viafb_show_hw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.viafb_par* }
%struct.viafb_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@VIA_REG_CURSOR_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_show_hw_cursor(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.viafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.viafb_par*, %struct.viafb_par** %9, align 8
  store %struct.viafb_par* %10, %struct.viafb_par** %5, align 8
  %11 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %12 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %15 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VIA_REG_CURSOR_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 131, label %28
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -2
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %2, %28, %25
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %37 [
    i32 128, label %33
    i32 129, label %36
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, -2147483648
  store i32 %35, i32* %6, align 4
  br label %40

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %31, %36
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 2147483647
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.viafb_par*, %struct.viafb_par** %5, align 8
  %43 = getelementptr inbounds %struct.viafb_par, %struct.viafb_par* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VIA_REG_CURSOR_MODE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %41, i64 %50)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
