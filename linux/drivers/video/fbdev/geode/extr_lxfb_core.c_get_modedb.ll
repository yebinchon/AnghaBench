; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_get_modedb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_get_modedb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }

@olpc_dcon_modedb = common dso_local global i64 0, align 8
@geode_modedb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_videomode**, i32*)* @get_modedb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_modedb(%struct.fb_videomode** %0, i32* %1) #0 {
  %3 = alloca %struct.fb_videomode**, align 8
  %4 = alloca i32*, align 8
  store %struct.fb_videomode** %0, %struct.fb_videomode*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i64 (...) @olpc_has_dcon()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i64, i64* @olpc_dcon_modedb, align 8
  %9 = inttoptr i64 %8 to %struct.fb_videomode*
  %10 = load %struct.fb_videomode**, %struct.fb_videomode*** %3, align 8
  store %struct.fb_videomode* %9, %struct.fb_videomode** %10, align 8
  %11 = load i64, i64* @olpc_dcon_modedb, align 8
  %12 = call i32 @ARRAY_SIZE(i64 %11)
  %13 = load i32*, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i64, i64* @geode_modedb, align 8
  %16 = inttoptr i64 %15 to %struct.fb_videomode*
  %17 = load %struct.fb_videomode**, %struct.fb_videomode*** %3, align 8
  store %struct.fb_videomode* %16, %struct.fb_videomode** %17, align 8
  %18 = load i64, i64* @geode_modedb, align 8
  %19 = call i32 @ARRAY_SIZE(i64 %18)
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %7
  ret void
}

declare dso_local i64 @olpc_has_dcon(...) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
