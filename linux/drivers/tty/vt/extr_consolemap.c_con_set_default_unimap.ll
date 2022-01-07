; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_set_default_unimap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_consolemap.c_con_set_default_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_pagedir = type { i32 }
%struct.vc_data = type { %struct.uni_pagedir** }

@dflt = common dso_local global %struct.uni_pagedir* null, align 8
@dfont_unitable = common dso_local global i32* null, align 8
@dfont_unicount = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_set_default_unimap(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %11 = icmp ne %struct.uni_pagedir* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 0
  %15 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %14, align 8
  %16 = load %struct.uni_pagedir*, %struct.uni_pagedir** %15, align 8
  store %struct.uni_pagedir* %16, %struct.uni_pagedir** %9, align 8
  %17 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %18 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %19 = icmp eq %struct.uni_pagedir* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %117

21:                                               ; preds = %12
  %22 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %23 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.uni_pagedir*, %struct.uni_pagedir** @dflt, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %28, align 8
  store %struct.uni_pagedir* %26, %struct.uni_pagedir** %29, align 8
  %30 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %31 = icmp ne %struct.uni_pagedir* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %34 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %40 = call i32 @con_release_unimap(%struct.uni_pagedir* %39)
  %41 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %42 = call i32 @kfree(%struct.uni_pagedir* %41)
  br label %43

43:                                               ; preds = %38, %32, %21
  store i32 0, i32* %2, align 4
  br label %117

44:                                               ; preds = %1
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = call i32 @con_do_clear_unimap(%struct.vc_data* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %117

51:                                               ; preds = %44
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 0
  %54 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %53, align 8
  %55 = load %struct.uni_pagedir*, %struct.uni_pagedir** %54, align 8
  store %struct.uni_pagedir* %55, %struct.uni_pagedir** %9, align 8
  %56 = load i32*, i32** @dfont_unitable, align 8
  store i32* %56, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %85, %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load i32*, i32** @dfont_unicount, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %81, %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @con_insert_unipair(%struct.uni_pagedir* %70, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %90 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %91 = call i64 @con_unify_unimap(%struct.vc_data* %89, %struct.uni_pagedir* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 0
  %96 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %95, align 8
  %97 = load %struct.uni_pagedir*, %struct.uni_pagedir** %96, align 8
  store %struct.uni_pagedir* %97, %struct.uni_pagedir** @dflt, align 8
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %117

99:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %108, %99
  %101 = load i32, i32* %4, align 4
  %102 = icmp sle i32 %101, 3
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %105 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @set_inverse_transl(%struct.vc_data* %104, %struct.uni_pagedir* %105, i32 %106)
  br label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %100

111:                                              ; preds = %100
  %112 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %113 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %114 = call i32 @set_inverse_trans_unicode(%struct.vc_data* %112, %struct.uni_pagedir* %113)
  %115 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  store %struct.uni_pagedir* %115, %struct.uni_pagedir** @dflt, align 8
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %93, %49, %43, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

declare dso_local i32 @kfree(%struct.uni_pagedir*) #1

declare dso_local i32 @con_do_clear_unimap(%struct.vc_data*) #1

declare dso_local i32 @con_insert_unipair(%struct.uni_pagedir*, i32, i32) #1

declare dso_local i64 @con_unify_unimap(%struct.vc_data*, %struct.uni_pagedir*) #1

declare dso_local i32 @set_inverse_transl(%struct.vc_data*, %struct.uni_pagedir*, i32) #1

declare dso_local i32 @set_inverse_trans_unicode(%struct.vc_data*, %struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
