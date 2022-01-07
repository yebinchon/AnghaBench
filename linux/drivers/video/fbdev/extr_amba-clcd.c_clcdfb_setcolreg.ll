; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_amba-clcd.c_clcdfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.clcd_fb = type { i32*, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@CLCD_PALETTE = common dso_local global i32 0, align 4
@CNTL_BEBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @clcdfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.clcd_fb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %19 = call %struct.clcd_fb* @to_clcd(%struct.fb_info* %18)
  store %struct.clcd_fb* %19, %struct.clcd_fb** %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %56

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %25 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = call i32 @convert_bitfield(i32 %23, i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %31 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i32 @convert_bitfield(i32 %29, i32* %33)
  %35 = or i32 %28, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %38 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @convert_bitfield(i32 %36, i32* %40)
  %42 = or i32 %35, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %45 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @convert_bitfield(i32 %43, i32* %47)
  %49 = or i32 %42, %48
  %50 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %51 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %22, %6
  %57 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %58 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %65, 256
  br i1 %66, label %67, label %123

67:                                               ; preds = %64
  %68 = load i32, i32* @CLCD_PALETTE, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul i32 %69, 2
  %71 = and i32 %70, -4
  %72 = add i32 %68, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = lshr i32 %73, 11
  %75 = and i32 %74, 31
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %9, align 4
  %77 = lshr i32 %76, 6
  %78 = and i32 %77, 992
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %10, align 4
  %82 = lshr i32 %81, 1
  %83 = and i32 %82, 31744
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %17, align 4
  %86 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %87 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CNTL_BEBO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %67
  %93 = load i32, i32* %7, align 4
  %94 = xor i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %67
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %17, align 4
  %101 = shl i32 %100, 16
  store i32 %101, i32* %17, align 4
  store i32 65535, i32* %16, align 4
  br label %103

102:                                              ; preds = %95
  store i32 -65536, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %105 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = call i32 @readl(i64 %109)
  %111 = load i32, i32* %16, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %17, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.clcd_fb*, %struct.clcd_fb** %13, align 8
  %117 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = call i32 @writel(i32 %115, i64 %121)
  br label %123

123:                                              ; preds = %103, %64, %56
  %124 = load i32, i32* %7, align 4
  %125 = icmp ugt i32 %124, 255
  %126 = zext i1 %125 to i32
  ret i32 %126
}

declare dso_local %struct.clcd_fb* @to_clcd(%struct.fb_info*) #1

declare dso_local i32 @convert_bitfield(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
