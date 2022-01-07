; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mb862xxfb_par* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mb862xxfb_par = type { i32* }

@disp = common dso_local global i32 0, align 4
@GC_L0PAL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @mb862xxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xxfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.mb862xxfb_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %17, align 8
  store %struct.mb862xxfb_par* %18, %struct.mb862xxfb_par** %14, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %78 [
    i32 128, label %23
    i32 129, label %54
  ]

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = call i32 @chan_to_field(i32 %27, i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i32 @chan_to_field(i32 %32, i32* %35)
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @chan_to_field(i32 %39, i32* %42)
  %44 = load i32, i32* %15, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %14, align 8
  %48 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %26, %23
  br label %79

54:                                               ; preds = %6
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %55, 256
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = lshr i32 %58, 8
  %60 = shl i32 %59, 16
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = lshr i32 %61, 8
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 8
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* @disp, align 4
  %71 = load i32, i32* @GC_L0PAL0, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %72, 4
  %74 = add i32 %71, %73
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @outreg(i32 %70, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %57, %54
  br label %79

78:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %80

79:                                               ; preds = %77, %53
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @outreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
