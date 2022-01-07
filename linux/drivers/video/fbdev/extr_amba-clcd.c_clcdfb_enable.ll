; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 (%struct.clcd_fb*)* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CNTL_LCDEN = common dso_local global i32 0, align 4
@CNTL_LCDPWR = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*, i32)* @clcdfb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdfb_enable(%struct.clcd_fb* %0, i32 %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %6 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %11 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %13 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_enable(i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @CNTL_LCDEN, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %22 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %25 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @writel(i32 %20, i64 %27)
  %29 = call i32 @clcdfb_sleep(i32 20)
  %30 = load i32, i32* @CNTL_LCDPWR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %35 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %38 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @writel(i32 %33, i64 %40)
  %42 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %43 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %16
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %50 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %51 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  %57 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %58 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @backlight_update_status(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %48, %16
  %64 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %65 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %67, align 8
  %69 = icmp ne i32 (%struct.clcd_fb*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %72 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %74, align 8
  %76 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %77 = call i32 %75(%struct.clcd_fb* %76)
  br label %78

78:                                               ; preds = %70, %63
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clcdfb_sleep(i32) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
