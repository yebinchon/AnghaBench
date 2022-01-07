; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100_mode = type { i32, i32 }
%struct.w100fb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.w100_mode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w100_mode* (%struct.w100fb_par*, i32*, i32*, i32)* @w100fb_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w100_mode* @w100fb_get_mode(%struct.w100fb_par* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.w100fb_par*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.w100_mode*, align 8
  %10 = alloca %struct.w100_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.w100fb_par* %0, %struct.w100fb_par** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.w100_mode* null, %struct.w100_mode** %9, align 8
  %14 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %15 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.w100_mode*, %struct.w100_mode** %17, align 8
  store %struct.w100_mode* %18, %struct.w100_mode** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %139, %4
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %22 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %20, %25
  br i1 %26, label %27, label %142

27:                                               ; preds = %19
  %28 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %28, i64 %30
  %32 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp uge i32 %33, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %27
  %38 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %38, i64 %40
  %42 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp uge i32 %43, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %37
  %48 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %48, i64 %50
  %52 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %47
  %57 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %57, i64 %59
  %61 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %56
  %66 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %66, i64 %68
  %70 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %72, i64 %74
  %76 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %78, i64 %80
  store %struct.w100_mode* %81, %struct.w100_mode** %9, align 8
  br label %138

82:                                               ; preds = %56, %47, %37, %27
  %83 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %83, i64 %85
  %87 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp uge i32 %88, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %82
  %93 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %93, i64 %95
  %97 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp uge i32 %98, %100
  br i1 %101, label %102, label %137

102:                                              ; preds = %92
  %103 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %103, i64 %105
  %107 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %102
  %112 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %112, i64 %114
  %116 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %111
  %121 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %121, i64 %123
  %125 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %127, i64 %129
  %131 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %12, align 4
  %133 = load %struct.w100_mode*, %struct.w100_mode** %10, align 8
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %133, i64 %135
  store %struct.w100_mode* %136, %struct.w100_mode** %9, align 8
  br label %137

137:                                              ; preds = %120, %111, %102, %92, %82
  br label %138

138:                                              ; preds = %137, %65
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %19

142:                                              ; preds = %19
  %143 = load %struct.w100_mode*, %struct.w100_mode** %9, align 8
  %144 = icmp ne %struct.w100_mode* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %145, %142
  %154 = load %struct.w100_mode*, %struct.w100_mode** %9, align 8
  ret %struct.w100_mode* %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
