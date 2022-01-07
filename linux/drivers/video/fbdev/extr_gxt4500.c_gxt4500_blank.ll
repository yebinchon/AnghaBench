; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.gxt4500_par* }
%struct.gxt4500_par = type { i32 }

@SYNC_CTL = common dso_local global i32 0, align 4
@SYNC_CTL_SYNC_OFF = common dso_local global i32 0, align 4
@SYNC_CTL_HSYNC_OFF = common dso_local global i32 0, align 4
@SYNC_CTL_VSYNC_OFF = common dso_local global i32 0, align 4
@DISP_CTL = common dso_local global i32 0, align 4
@DISP_CTL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @gxt4500_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxt4500_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.gxt4500_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.gxt4500_par*, %struct.gxt4500_par** %9, align 8
  store %struct.gxt4500_par* %10, %struct.gxt4500_par** %5, align 8
  %11 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %12 = load i32, i32* @SYNC_CTL, align 4
  %13 = call i32 @readreg(%struct.gxt4500_par* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SYNC_CTL_SYNC_OFF, align 4
  %15 = load i32, i32* @SYNC_CTL_HSYNC_OFF, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SYNC_CTL_VSYNC_OFF, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %23 = load i32, i32* @DISP_CTL, align 4
  %24 = call i32 @readreg(%struct.gxt4500_par* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @DISP_CTL_OFF, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %46 [
    i32 129, label %29
    i32 130, label %34
    i32 131, label %38
    i32 128, label %42
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @DISP_CTL_OFF, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* @SYNC_CTL_SYNC_OFF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load i32, i32* @SYNC_CTL_HSYNC_OFF, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %47

42:                                               ; preds = %2
  %43 = load i32, i32* @SYNC_CTL_VSYNC_OFF, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %42, %38, %34, %29
  %48 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %49 = load i32, i32* @SYNC_CTL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @writereg(%struct.gxt4500_par* %48, i32 %49, i32 %50)
  %52 = load %struct.gxt4500_par*, %struct.gxt4500_par** %5, align 8
  %53 = load i32, i32* @DISP_CTL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @writereg(%struct.gxt4500_par* %52, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local i32 @readreg(%struct.gxt4500_par*, i32) #1

declare dso_local i32 @writereg(%struct.gxt4500_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
