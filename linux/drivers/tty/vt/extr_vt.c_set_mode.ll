; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EPdec = common dso_local global i64 0, align 8
@decckm = common dso_local global i32 0, align 4
@decarm = common dso_local global i32 0, align 4
@lnm = common dso_local global i32 0, align 4
@deccolm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %128, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %131

12:                                               ; preds = %6
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EPdec, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %12
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %97 [
    i32 1, label %26
    i32 3, label %38
    i32 5, label %39
    i32 6, label %57
    i32 7, label %63
    i32 8, label %67
    i32 9, label %79
    i32 25, label %86
    i32 1000, label %90
  ]

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %31 = load i32, i32* @decckm, align 4
  %32 = call i32 @set_kbd(%struct.vc_data* %30, i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = load i32, i32* @decckm, align 4
  %36 = call i32 @clr_kbd(%struct.vc_data* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %97

38:                                               ; preds = %18
  br label %97

39:                                               ; preds = %18
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @invert_screen(%struct.vc_data* %49, i32 0, i32 %52, i32 0)
  %54 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %55 = call i32 @update_attr(%struct.vc_data* %54)
  br label %56

56:                                               ; preds = %45, %39
  br label %97

57:                                               ; preds = %18
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = call i32 @gotoxay(%struct.vc_data* %61, i32 0, i32 0)
  br label %97

63:                                               ; preds = %18
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  br label %97

67:                                               ; preds = %18
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = load i32, i32* @decarm, align 4
  %73 = call i32 @set_kbd(%struct.vc_data* %71, i32 %72)
  br label %78

74:                                               ; preds = %67
  %75 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %76 = load i32, i32* @decarm, align 4
  %77 = call i32 @clr_kbd(%struct.vc_data* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %97

79:                                               ; preds = %18
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  br label %97

86:                                               ; preds = %18
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  br label %97

90:                                               ; preds = %18
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 2, i32 0
  %95 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %18, %90, %86, %79, %78, %63, %57, %56, %38, %37
  br label %127

98:                                               ; preds = %12
  %99 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %126 [
    i32 3, label %106
    i32 4, label %110
    i32 20, label %114
  ]

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %109 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  br label %126

110:                                              ; preds = %98
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %113 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  br label %126

114:                                              ; preds = %98
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %119 = load i32, i32* @lnm, align 4
  %120 = call i32 @set_kbd(%struct.vc_data* %118, i32 %119)
  br label %125

121:                                              ; preds = %114
  %122 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %123 = load i32, i32* @lnm, align 4
  %124 = call i32 @clr_kbd(%struct.vc_data* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %98, %125, %110, %106
  br label %127

127:                                              ; preds = %126, %97
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %6

131:                                              ; preds = %6
  ret void
}

declare dso_local i32 @set_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @clr_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @invert_screen(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @gotoxay(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
