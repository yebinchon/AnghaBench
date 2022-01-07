; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ccw.c_ccw_update_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ccw.c_ccw_update_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FBCON_ATTRIBUTE_UNDERLINE = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_BOLD = common dso_local global i32 0, align 4
@FBCON_ATTRIBUTE_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.vc_data*)* @ccw_update_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_update_attr(i32* %0, i32* %1, i32 %2, %struct.vc_data* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vc_data* %3, %struct.vc_data** %8, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 10
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 2
  store i32 %23, i32* %11, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 7
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %12, align 4
  %30 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 8
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 255, %35
  %37 = xor i32 %36, -1
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 8, %41
  %43 = load i32, i32* %15, align 4
  %44 = shl i32 %43, %42
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %16, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %49, %45
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %129, %52
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %132

60:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %125, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @FBCON_ATTRIBUTE_UNDERLINE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 2
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %84, %81
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @FBCON_ATTRIBUTE_BOLD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %103
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %102, %99, %94
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FBCON_ATTRIBUTE_REVERSE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %14, align 4
  %118 = xor i32 %117, -1
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %5, align 8
  store i32 %122, i32* %123, align 4
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %61

128:                                              ; preds = %61
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %53

132:                                              ; preds = %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
