; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_dvi_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_get_dvi_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VIA_DVP0 = common dso_local global i32 0, align 4
@VIA_LDVP0 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_CLE266 = common dso_local global i32 0, align 4
@VIA_LDVP1 = common dso_local global i32 0, align 4
@VIA_DVP1 = common dso_local global i32 0, align 4
@VIA_LVDS2 = common dso_local global i32 0, align 4
@VIA_LVDS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_dvi_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dvi_devices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %49 [
    i32 130, label %5
    i32 129, label %9
    i32 132, label %21
    i32 131, label %34
    i32 128, label %47
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @VIA_DVP0, align 4
  %7 = load i32, i32* @VIA_LDVP0, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UNICHROME_CLE266, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @VIA_LDVP1, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %9
  %20 = load i32, i32* @VIA_DVP1, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UNICHROME_CLE266, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load i32, i32* @VIA_LVDS2, align 4
  %32 = load i32, i32* @VIA_DVP0, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UNICHROME_CLE266, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @VIA_DVP1, align 4
  %45 = load i32, i32* @VIA_LVDS1, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @VIA_LVDS1, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %43, %42, %30, %29, %19, %17, %5
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
