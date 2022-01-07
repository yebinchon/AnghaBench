; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_update_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_update_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssd1307fb_par = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ssd1307fb_array = type { i32* }

@SSD1307FB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssd1307fb_par*)* @ssd1307fb_update_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssd1307fb_update_display(%struct.ssd1307fb_par* %0) #0 {
  %2 = alloca %struct.ssd1307fb_par*, align 8
  %3 = alloca %struct.ssd1307fb_array*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ssd1307fb_par* %0, %struct.ssd1307fb_par** %2, align 8
  %14 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %15 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %20 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %26 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DIV_ROUND_UP(i32 %27, i32 8)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %30 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* @SSD1307FB_DATA, align 4
  %35 = call %struct.ssd1307fb_array* @ssd1307fb_alloc_array(i32 %33, i32 %34)
  store %struct.ssd1307fb_array* %35, %struct.ssd1307fb_array** %3, align 8
  %36 = load %struct.ssd1307fb_array*, %struct.ssd1307fb_array** %3, align 8
  %37 = icmp ne %struct.ssd1307fb_array* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %138

39:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %122, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %125

44:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %118, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %48 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %121

51:                                               ; preds = %45
  store i32 8, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %54 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul i32 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %56, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load %struct.ssd1307fb_array*, %struct.ssd1307fb_array** %3, align 8
  %61 = getelementptr inbounds %struct.ssd1307fb_array, %struct.ssd1307fb_array* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %51
  %70 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %71 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %77 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %78, 8
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %69, %51
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %114, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %117

85:                                               ; preds = %81
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 8, %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = mul i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = sdiv i32 %93, 8
  %95 = add i32 %92, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %86, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %8, align 4
  %101 = srem i32 %100, 8
  %102 = ashr i32 %99, %101
  %103 = and i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %104, %105
  %107 = load %struct.ssd1307fb_array*, %struct.ssd1307fb_array** %3, align 8
  %108 = getelementptr inbounds %struct.ssd1307fb_array, %struct.ssd1307fb_array* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %106
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %85
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %81

117:                                              ; preds = %81
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %45

121:                                              ; preds = %45
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %40

125:                                              ; preds = %40
  %126 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %127 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ssd1307fb_array*, %struct.ssd1307fb_array** %3, align 8
  %130 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %2, align 8
  %131 = getelementptr inbounds %struct.ssd1307fb_par, %struct.ssd1307fb_par* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %6, align 4
  %134 = mul i32 %132, %133
  %135 = call i32 @ssd1307fb_write_array(i32 %128, %struct.ssd1307fb_array* %129, i32 %134)
  %136 = load %struct.ssd1307fb_array*, %struct.ssd1307fb_array** %3, align 8
  %137 = call i32 @kfree(%struct.ssd1307fb_array* %136)
  br label %138

138:                                              ; preds = %125, %38
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.ssd1307fb_array* @ssd1307fb_alloc_array(i32, i32) #1

declare dso_local i32 @ssd1307fb_write_array(i32, %struct.ssd1307fb_array*, i32) #1

declare dso_local i32 @kfree(%struct.ssd1307fb_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
