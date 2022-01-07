; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @tgafb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %19 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %22 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %2
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %48, %2
  br label %146

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %12, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %78, %79
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %88, %89
  %91 = load i64, i64* %12, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81
  br label %146

94:                                               ; preds = %87
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = and i64 %99, 63
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %14, align 8
  %105 = lshr i64 %104, 3
  %106 = mul i64 %103, %105
  %107 = load i64, i64* %13, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load i64, i64* %14, align 8
  %111 = icmp eq i64 %110, 8
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @copyarea_line_8bpp(%struct.fb_info* %113, i64 %114, i64 %115, i64 %116, i64 %117)
  br label %126

119:                                              ; preds = %109
  %120 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @copyarea_line_32bpp(%struct.fb_info* %120, i64 %121, i64 %122, i64 %123, i64 %124)
  br label %126

126:                                              ; preds = %119, %112
  br label %146

127:                                              ; preds = %102, %94
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %128, 32
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %132 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %133 = call i32 @cfb_copyarea(%struct.fb_info* %131, %struct.fb_copyarea* %132)
  br label %145

134:                                              ; preds = %127
  %135 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %144 = call i32 @copyarea_8bpp(%struct.fb_info* %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, %struct.fb_copyarea* %143)
  br label %145

145:                                              ; preds = %134, %130
  br label %146

146:                                              ; preds = %60, %93, %145, %126
  ret void
}

declare dso_local i32 @copyarea_line_8bpp(%struct.fb_info*, i64, i64, i64, i64) #1

declare dso_local i32 @copyarea_line_32bpp(%struct.fb_info*, i64, i64, i64, i64) #1

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @copyarea_8bpp(%struct.fb_info*, i64, i64, i64, i64, i64, i64, i64, %struct.fb_copyarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
