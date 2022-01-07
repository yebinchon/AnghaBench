; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_calc_hsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_calc_hsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.w100fb_par = type { i64, i64, %struct.TYPE_6__*, %struct.w100_mode* }
%struct.TYPE_6__ = type { i64 }
%struct.w100_mode = type { i64, i32, i32 }
%union.crtc_ss_u = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@CLK_SRC_XTAL = common dso_local global i64 0, align 8
@w100_pwr_state = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@remapped_regs = common dso_local global i64 0, align 8
@mmCRTC_SS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @calc_hsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_hsync(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.w100_mode*, align 8
  %5 = alloca %union.crtc_ss_u, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %6 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %7 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %6, i32 0, i32 3
  %8 = load %struct.w100_mode*, %struct.w100_mode** %7, align 8
  store %struct.w100_mode* %8, %struct.w100_mode** %4, align 8
  %9 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %10 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLK_SRC_XTAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %16 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %22 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %27 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %32 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %25, %20
  %35 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %36 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  %40 = mul nsw i32 %39, 100000
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %38, %14
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @w100_pwr_state, i32 0, i32 0, i32 0, i32 0), align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %3, align 8
  %47 = udiv i64 %46, %45
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* @remapped_regs, align 8
  %49 = load i64, i64* @mmCRTC_SS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @readl(i64 %50)
  %52 = bitcast %union.crtc_ss_u* %5 to i64*
  store i64 %51, i64* %52, align 8
  %53 = bitcast %union.crtc_ss_u* %5 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %42
  %57 = load i64, i64* %3, align 8
  %58 = bitcast %union.crtc_ss_u* %5 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = bitcast %union.crtc_ss_u* %5 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = udiv i64 %57, %64
  %66 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %67 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %71

68:                                               ; preds = %42
  %69 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %70 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %56
  ret void
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
