; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { i32, i32, i64, i64, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.clcd_fb*)* }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@CNTL_LCDPWR = common dso_local global i32 0, align 4
@CNTL_LCDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*)* @clcdfb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clcdfb_disable(%struct.clcd_fb* %0) #0 {
  %2 = alloca %struct.clcd_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %2, align 8
  %4 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %5 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %4, i32 0, i32 5
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %7, align 8
  %9 = icmp ne i32 (%struct.clcd_fb*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %12 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.clcd_fb*)*, i32 (%struct.clcd_fb*)** %14, align 8
  %16 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %17 = call i32 %15(%struct.clcd_fb* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %20 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %19, i32 0, i32 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %27 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %28 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %27, i32 0, i32 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  %34 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %35 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @backlight_update_status(%struct.TYPE_8__* %38)
  br label %40

40:                                               ; preds = %25, %18
  %41 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %42 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %45 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @CNTL_LCDPWR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %40
  %54 = load i32, i32* @CNTL_LCDPWR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %60 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %63 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @writel(i32 %58, i64 %65)
  %67 = call i32 @clcdfb_sleep(i32 20)
  br label %68

68:                                               ; preds = %53, %40
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @CNTL_LCDEN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32, i32* @CNTL_LCDEN, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %80 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %83 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = call i32 @writel(i32 %78, i64 %85)
  br label %87

87:                                               ; preds = %73, %68
  %88 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %89 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %94 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %96 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @clk_disable(i32 %97)
  br label %99

99:                                               ; preds = %92, %87
  ret void
}

declare dso_local i32 @backlight_update_status(%struct.TYPE_8__*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clcdfb_sleep(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
