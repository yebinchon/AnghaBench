; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_mbxfb_ioctl_planeorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_mbxfb_ioctl_planeorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbxfb_planeorder = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GSCADR = common dso_local global i32 0, align 4
@VSCADR = common dso_local global i32 0, align 4
@GSCADR_BLEND_POS = common dso_local global i32 0, align 4
@VSCADR_BLEND_POS = common dso_local global i32 0, align 4
@GSCADR_BLEND_GFX = common dso_local global i64 0, align 8
@VSCADR_BLEND_GFX = common dso_local global i64 0, align 8
@GSCADR_BLEND_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbxfb_planeorder*)* @mbxfb_ioctl_planeorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_ioctl_planeorder(%struct.mbxfb_planeorder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbxfb_planeorder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mbxfb_planeorder* %0, %struct.mbxfb_planeorder** %3, align 8
  %6 = load %struct.mbxfb_planeorder*, %struct.mbxfb_planeorder** %3, align 8
  %7 = getelementptr inbounds %struct.mbxfb_planeorder, %struct.mbxfb_planeorder* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mbxfb_planeorder*, %struct.mbxfb_planeorder** %3, align 8
  %10 = getelementptr inbounds %struct.mbxfb_planeorder, %struct.mbxfb_planeorder* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load i32, i32* @GSCADR, align 4
  %18 = call i64 @readl(i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* @VSCADR, align 4
  %20 = call i64 @readl(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* @GSCADR_BLEND_POS, align 4
  %22 = call i64 @FMsk(i32 %21)
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load i32, i32* @VSCADR_BLEND_POS, align 4
  %27 = call i64 @FMsk(i32 %26)
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load %struct.mbxfb_planeorder*, %struct.mbxfb_planeorder** %3, align 8
  %32 = getelementptr inbounds %struct.mbxfb_planeorder, %struct.mbxfb_planeorder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %16
  %35 = load i64, i64* @GSCADR_BLEND_GFX, align 8
  %36 = load i64, i64* %4, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %45

38:                                               ; preds = %16
  %39 = load i64, i64* @VSCADR_BLEND_GFX, align 8
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %45

42:                                               ; preds = %16
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %38, %34
  %46 = load %struct.mbxfb_planeorder*, %struct.mbxfb_planeorder** %3, align 8
  %47 = getelementptr inbounds %struct.mbxfb_planeorder, %struct.mbxfb_planeorder* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %57 [
    i32 129, label %49
    i32 128, label %53
  ]

49:                                               ; preds = %45
  %50 = load i64, i64* @GSCADR_BLEND_VID, align 8
  %51 = load i64, i64* %4, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %60

53:                                               ; preds = %45
  %54 = load i64, i64* @GSCADR_BLEND_VID, align 8
  %55 = load i64, i64* %5, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %53, %49
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* @VSCADR, align 4
  %63 = call i32 @write_reg_dly(i64 %61, i32 %62)
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* @GSCADR, align 4
  %66 = call i32 @write_reg_dly(i64 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %57, %42, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @FMsk(i32) #1

declare dso_local i32 @write_reg_dly(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
