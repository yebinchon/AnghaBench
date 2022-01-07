; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_btemp = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab8500_btemp_get_temp(%struct.ab8500_btemp* %0) #0 {
  %2 = alloca %struct.ab8500_btemp*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_btemp* %0, %struct.ab8500_btemp** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @is_ab8500_3p3_or_earlier(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %11 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 10
  store i32 %13, i32* %3, align 4
  br label %123

14:                                               ; preds = %1
  %15 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %16 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %23 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %29 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 10
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %35 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 10
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %27
  br label %122

39:                                               ; preds = %14
  %40 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %41 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %48 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %54 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 10
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %45
  %59 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %60 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 10
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %52
  br label %121

64:                                               ; preds = %39
  %65 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %66 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %73 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %71, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %79 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 10
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %70
  %84 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %85 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 10
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %77
  br label %120

89:                                               ; preds = %64
  %90 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %91 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %98 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %104 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 10
  store i32 %107, i32* %3, align 4
  br label %113

108:                                              ; preds = %95
  %109 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %110 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 10
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %102
  br label %119

114:                                              ; preds = %89
  %115 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %2, align 8
  %116 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 10
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %113
  br label %120

120:                                              ; preds = %119, %88
  br label %121

121:                                              ; preds = %120, %63
  br label %122

122:                                              ; preds = %121, %38
  br label %123

123:                                              ; preds = %122, %9
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @is_ab8500_3p3_or_earlier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
