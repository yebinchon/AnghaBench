; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_PTTryState_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_PTTryState_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_ra_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_ra_info*)* @odm_PTTryState_8188E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_PTTryState_8188E(%struct.odm_ra_info* %0) #0 {
  %2 = alloca %struct.odm_ra_info*, align 8
  store %struct.odm_ra_info* %0, %struct.odm_ra_info** %2, align 8
  %3 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %4 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %6 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %44 [
    i32 3, label %8
    i32 2, label %17
    i32 1, label %26
    i32 0, label %35
  ]

8:                                                ; preds = %1
  %9 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %10 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 25
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %15 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %8
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %19 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 17
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %24 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %17
  br label %47

26:                                               ; preds = %1
  %27 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %28 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 10
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %33 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  br label %47

35:                                               ; preds = %1
  %36 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %37 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %42 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %47

44:                                               ; preds = %1
  %45 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %46 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %43, %34, %25, %16
  %48 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %49 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 48
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %54 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %53, i32 0, i32 4
  store i32 0, i32* %54, align 8
  br label %134

55:                                               ; preds = %47
  %56 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %57 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %128

60:                                               ; preds = %55
  %61 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %62 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 10
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %67 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %70 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 5
  %73 = icmp sgt i32 %68, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %65
  %75 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %76 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %79 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 5
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %92, label %83

83:                                               ; preds = %74
  %84 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %85 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %89 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %83, %74, %65, %60
  %93 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %94 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %99 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %98, i32 0, i32 4
  store i32 1, i32* %99, align 8
  br label %112

100:                                              ; preds = %92
  %101 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %102 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %107 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %106, i32 0, i32 4
  store i32 3, i32* %107, align 8
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %110 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %109, i32 0, i32 4
  store i32 5, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %97
  %113 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %114 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %117 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %119 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %118, i32 0, i32 5
  store i32 0, i32* %119, align 4
  br label %127

120:                                              ; preds = %83
  %121 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %122 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %121, i32 0, i32 8
  store i64 0, i64* %122, align 8
  %123 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %124 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %112
  br label %133

128:                                              ; preds = %55
  %129 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %130 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %129, i32 0, i32 4
  store i32 0, i32* %130, align 8
  %131 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %132 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %131, i32 0, i32 8
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %127
  br label %134

134:                                              ; preds = %133, %52
  %135 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %136 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %140 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %139, i32 0, i32 7
  store i64 %138, i64* %140, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
