; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@VGA_SAVE_CMAP = common dso_local global i32 0, align 4
@VGA_SAVE_FONTS = common dso_local global i32 0, align 4
@VGA_SAVE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @savagefb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.savagefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  store %struct.savagefb_par* %8, %struct.savagefb_par** %5, align 8
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %10 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %13 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %2
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %18 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %17, i32 0, i32 3
  %19 = call i32 @memset(%struct.TYPE_5__* %18, i32 0, i32 16)
  %20 = load i32, i32* @VGA_SAVE_CMAP, align 4
  %21 = load i32, i32* @VGA_SAVE_FONTS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VGA_SAVE_MODE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %26 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %29 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 32768
  %33 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %34 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %37 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %36, i32 0, i32 3
  %38 = call i32 @save_vga(%struct.TYPE_5__* %37)
  %39 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %40 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %41 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %40, i32 0, i32 2
  %42 = call i32 @savage_get_default_par(%struct.savagefb_par* %39, i32* %41)
  br label %43

43:                                               ; preds = %16, %2
  %44 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %45 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %49 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @save_vga(%struct.TYPE_5__*) #1

declare dso_local i32 @savage_get_default_par(%struct.savagefb_par*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
