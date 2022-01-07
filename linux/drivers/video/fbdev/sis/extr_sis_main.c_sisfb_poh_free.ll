; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_poh_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SIS_OH = type { i64, i64, %struct.SIS_OH* }
%struct.SIS_HEAP = type { %struct.SIS_OH, i32, %struct.SIS_OH }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SIS_OH* (%struct.SIS_HEAP*, i64)* @sisfb_poh_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SIS_OH* @sisfb_poh_free(%struct.SIS_HEAP* %0, i64 %1) #0 {
  %3 = alloca %struct.SIS_OH*, align 8
  %4 = alloca %struct.SIS_HEAP*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.SIS_OH*, align 8
  %7 = alloca %struct.SIS_OH*, align 8
  %8 = alloca %struct.SIS_OH*, align 8
  %9 = alloca %struct.SIS_OH*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.SIS_HEAP* %0, %struct.SIS_HEAP** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %14 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %14, i32 0, i32 2
  %16 = load %struct.SIS_OH*, %struct.SIS_OH** %15, align 8
  store %struct.SIS_OH* %16, %struct.SIS_OH** %7, align 8
  br label %17

17:                                               ; preds = %29, %2
  %18 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %19 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %20 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %19, i32 0, i32 2
  %21 = icmp ne %struct.SIS_OH* %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %24 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %31 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %30, i32 0, i32 2
  %32 = load %struct.SIS_OH*, %struct.SIS_OH** %31, align 8
  store %struct.SIS_OH* %32, %struct.SIS_OH** %7, align 8
  br label %17

33:                                               ; preds = %28, %17
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store %struct.SIS_OH* null, %struct.SIS_OH** %3, align 8
  br label %161

37:                                               ; preds = %33
  %38 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %39 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %42 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  store %struct.SIS_OH* null, %struct.SIS_OH** %9, align 8
  store %struct.SIS_OH* null, %struct.SIS_OH** %8, align 8
  %47 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %48 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %51 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %55 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %58 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %58, i32 0, i32 2
  %60 = load %struct.SIS_OH*, %struct.SIS_OH** %59, align 8
  store %struct.SIS_OH* %60, %struct.SIS_OH** %6, align 8
  br label %61

61:                                               ; preds = %87, %37
  %62 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %63 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %64 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %63, i32 0, i32 0
  %65 = icmp ne %struct.SIS_OH* %62, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %68 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  store %struct.SIS_OH* %73, %struct.SIS_OH** %9, align 8
  br label %87

74:                                               ; preds = %66
  %75 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %76 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %79 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  store %struct.SIS_OH* %85, %struct.SIS_OH** %8, align 8
  br label %86

86:                                               ; preds = %84, %74
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.SIS_OH*, %struct.SIS_OH** %6, align 8
  %89 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %88, i32 0, i32 2
  %90 = load %struct.SIS_OH*, %struct.SIS_OH** %89, align 8
  store %struct.SIS_OH* %90, %struct.SIS_OH** %6, align 8
  br label %61

91:                                               ; preds = %61
  %92 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %93 = call i32 @sisfb_delete_node(%struct.SIS_OH* %92)
  %94 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  %95 = icmp ne %struct.SIS_OH* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %91
  %97 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %98 = icmp ne %struct.SIS_OH* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %101 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %104 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  %108 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %112 = call i32 @sisfb_delete_node(%struct.SIS_OH* %111)
  %113 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %114 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %115 = call i32 @sisfb_free_node(%struct.SIS_HEAP* %113, %struct.SIS_OH* %114)
  %116 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %117 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %118 = call i32 @sisfb_free_node(%struct.SIS_HEAP* %116, %struct.SIS_OH* %117)
  %119 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  store %struct.SIS_OH* %119, %struct.SIS_OH** %3, align 8
  br label %161

120:                                              ; preds = %96, %91
  %121 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  %122 = icmp ne %struct.SIS_OH* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %125 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  %128 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %132 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %133 = call i32 @sisfb_free_node(%struct.SIS_HEAP* %131, %struct.SIS_OH* %132)
  %134 = load %struct.SIS_OH*, %struct.SIS_OH** %8, align 8
  store %struct.SIS_OH* %134, %struct.SIS_OH** %3, align 8
  br label %161

135:                                              ; preds = %120
  %136 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %137 = icmp ne %struct.SIS_OH* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %140 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %143 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %147 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  %150 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %152 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %153 = call i32 @sisfb_free_node(%struct.SIS_HEAP* %151, %struct.SIS_OH* %152)
  %154 = load %struct.SIS_OH*, %struct.SIS_OH** %9, align 8
  store %struct.SIS_OH* %154, %struct.SIS_OH** %3, align 8
  br label %161

155:                                              ; preds = %135
  %156 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %4, align 8
  %157 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %156, i32 0, i32 0
  %158 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  %159 = call i32 @sisfb_insert_node(%struct.SIS_OH* %157, %struct.SIS_OH* %158)
  %160 = load %struct.SIS_OH*, %struct.SIS_OH** %7, align 8
  store %struct.SIS_OH* %160, %struct.SIS_OH** %3, align 8
  br label %161

161:                                              ; preds = %155, %138, %123, %99, %36
  %162 = load %struct.SIS_OH*, %struct.SIS_OH** %3, align 8
  ret %struct.SIS_OH* %162
}

declare dso_local i32 @sisfb_delete_node(%struct.SIS_OH*) #1

declare dso_local i32 @sisfb_free_node(%struct.SIS_HEAP*, %struct.SIS_OH*) #1

declare dso_local i32 @sisfb_insert_node(%struct.SIS_OH*, %struct.SIS_OH*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
