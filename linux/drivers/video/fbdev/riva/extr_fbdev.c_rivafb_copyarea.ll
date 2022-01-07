; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.riva_par* }
%struct.riva_par = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@Blt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @rivafb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rivafb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.riva_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.riva_par*, %struct.riva_par** %7, align 8
  store %struct.riva_par* %8, %struct.riva_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %18 = call i32 @cfb_copyarea(%struct.fb_info* %16, %struct.fb_copyarea* %17)
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %21 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %20, i32 0, i32 0
  %22 = load i32, i32* @Blt, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @RIVA_FIFO_FREE(%struct.TYPE_3__* %24, i32 %22, i32 3)
  %26 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %27 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %32 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %36 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = call i32 @NV_WR32(i32* %30, i32 0, i32 %38)
  %40 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %41 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %46 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = call i32 @NV_WR32(i32* %44, i32 0, i32 %52)
  %54 = call i32 (...) @mb()
  %55 = load %struct.riva_par*, %struct.riva_par** %5, align 8
  %56 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %61 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %65 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @NV_WR32(i32* %59, i32 0, i32 %67)
  %69 = call i32 (...) @mb()
  br label %70

70:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @RIVA_FIFO_FREE(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @NV_WR32(i32*, i32, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
