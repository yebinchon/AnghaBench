; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_unify_unimap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_unify_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.uni_pagedir** }
%struct.uni_pagedir = type { i64, i32, i32*** }
%struct.vc_data = type { %struct.uni_pagedir** }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.uni_pagedir*)* @con_unify_unimap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_unify_unimap(%struct.vc_data* %0, %struct.uni_pagedir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.uni_pagedir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_pagedir*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.uni_pagedir* %1, %struct.uni_pagedir** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %155, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %158

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vc_cons_allocated(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %155

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %28, align 8
  %30 = load %struct.uni_pagedir*, %struct.uni_pagedir** %29, align 8
  store %struct.uni_pagedir* %30, %struct.uni_pagedir** %9, align 8
  %31 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %32 = icmp ne %struct.uni_pagedir* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %35 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %36 = icmp eq %struct.uni_pagedir* %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %39 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %42 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %33, %21
  br label %155

46:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %135, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 32
  br i1 %49, label %50, label %138

50:                                               ; preds = %47
  %51 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %52 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %51, i32 0, i32 2
  %53 = load i32***, i32**** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %53, i64 %55
  %57 = load i32**, i32*** %56, align 8
  store i32** %57, i32*** %10, align 8
  %58 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %59 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %58, i32 0, i32 2
  %60 = load i32***, i32**** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32**, i32*** %60, i64 %62
  %64 = load i32**, i32*** %63, align 8
  store i32** %64, i32*** %11, align 8
  %65 = load i32**, i32*** %10, align 8
  %66 = icmp ne i32** %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %50
  %68 = load i32**, i32*** %11, align 8
  %69 = icmp ne i32** %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %135

71:                                               ; preds = %67, %50
  %72 = load i32**, i32*** %10, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32**, i32*** %11, align 8
  %76 = icmp ne i32** %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74, %71
  br label %138

78:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %127, %78
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %82, label %130

82:                                               ; preds = %79
  %83 = load i32**, i32*** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load i32**, i32*** %11, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %127

97:                                               ; preds = %89, %82
  %98 = load i32**, i32*** %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32**, i32*** %11, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %104, %97
  br label %130

112:                                              ; preds = %104
  %113 = load i32**, i32*** %10, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32**, i32*** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @memcmp(i32* %117, i32* %122, i32 256)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %130

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %96
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %79

130:                                              ; preds = %125, %111, %79
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %138

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %70
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %47

138:                                              ; preds = %133, %77, %47
  %139 = load i32, i32* %7, align 4
  %140 = icmp eq i32 %139, 32
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %143 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %147 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %148 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %147, i32 0, i32 0
  %149 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %148, align 8
  store %struct.uni_pagedir* %146, %struct.uni_pagedir** %149, align 8
  %150 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %151 = call i32 @con_release_unimap(%struct.uni_pagedir* %150)
  %152 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %153 = call i32 @kfree(%struct.uni_pagedir* %152)
  store i32 1, i32* %3, align 4
  br label %159

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %45, %20
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %12

158:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %141
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

declare dso_local i32 @kfree(%struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
