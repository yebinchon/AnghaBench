; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.atmel_lcdfb_info* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.atmel_lcdfb_info = type { %struct.TYPE_6__*, %struct.atmel_lcdfb_pdata }
%struct.TYPE_6__ = type { i32 }
%struct.atmel_lcdfb_pdata = type { i32 }

@ATMEL_LCDC_WIRING_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @atmel_lcdfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lcdfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.atmel_lcdfb_info*, align 8
  %14 = alloca %struct.atmel_lcdfb_pdata*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 3
  %20 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %19, align 8
  store %struct.atmel_lcdfb_info* %20, %struct.atmel_lcdfb_info** %13, align 8
  %21 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %22 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %21, i32 0, i32 1
  store %struct.atmel_lcdfb_pdata* %22, %struct.atmel_lcdfb_pdata** %14, align 8
  store i32 1, i32* %17, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = mul i32 19595, %29
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 38470, %31
  %33 = add i32 %30, %32
  %34 = load i32, i32* %10, align 4
  %35 = mul i32 7471, %34
  %36 = add i32 %33, %35
  %37 = lshr i32 %36, 16
  store i32 %37, i32* %10, align 4
  store i32 %37, i32* %9, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %6
  %39 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %150 [
    i32 128, label %43
    i32 129, label %75
    i32 130, label %136
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ult i32 %44, 16
  br i1 %45, label %46, label %74

46:                                               ; preds = %43
  %47 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %16, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = call i32 @chan_to_field(i32 %50, i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = call i32 @chan_to_field(i32 %55, i32* %58)
  %60 = load i32, i32* %15, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @chan_to_field(i32 %62, i32* %65)
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %46, %43
  br label %150

75:                                               ; preds = %38
  %76 = load i32, i32* %7, align 4
  %77 = icmp ult i32 %76, 256
  br i1 %77, label %78, label %135

78:                                               ; preds = %75
  %79 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %80 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = lshr i32 %86, 11
  %88 = and i32 %87, 31
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %9, align 4
  %90 = lshr i32 %89, 6
  %91 = and i32 %90, 992
  %92 = load i32, i32* %15, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  %95 = lshr i32 %94, 1
  %96 = and i32 %95, 31744
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %129

99:                                               ; preds = %78
  %100 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %14, align 8
  %101 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATMEL_LCDC_WIRING_RGB, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = lshr i32 %106, 11
  %108 = and i32 %107, 31
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %8, align 4
  %110 = lshr i32 %109, 0
  %111 = and i32 %110, 63488
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %123

114:                                              ; preds = %99
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %115, 11
  %117 = and i32 %116, 31
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = lshr i32 %118, 0
  %120 = and i32 %119, 63488
  %121 = load i32, i32* %15, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %114, %105
  %124 = load i32, i32* %9, align 4
  %125 = lshr i32 %124, 5
  %126 = and i32 %125, 2016
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %123, %85
  %130 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @ATMEL_LCDC_LUT(i32 %131)
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %130, i32 %132, i32 %133)
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %129, %75
  br label %150

136:                                              ; preds = %38
  %137 = load i32, i32* %7, align 4
  %138 = icmp ult i32 %137, 2
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 31
  store i32 %143, i32* %15, align 4
  %144 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @ATMEL_LCDC_LUT(i32 %145)
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %144, i32 %146, i32 %147)
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %139, %136
  br label %150

150:                                              ; preds = %38, %149, %135, %74
  %151 = load i32, i32* %17, align 4
  ret i32 %151
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

declare dso_local i32 @ATMEL_LCDC_LUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
