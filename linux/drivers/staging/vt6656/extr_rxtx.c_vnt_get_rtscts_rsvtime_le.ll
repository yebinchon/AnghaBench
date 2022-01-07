; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_get_rtscts_rsvtime_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_get_rtscts_rsvtime_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i32, i32, i32, i32)* @vnt_get_rtscts_rsvtime_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_get_rtscts_rsvtime_le(%struct.vnt_private* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnt_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @vnt_get_frame_time(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %5
  %27 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vnt_get_frame_time(i32 %29, i32 %30, i32 20, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vnt_get_frame_time(i32 %37, i32 %38, i32 14, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %14, align 4
  br label %128

44:                                               ; preds = %5
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %53 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vnt_get_frame_time(i32 %50, i32 %51, i32 20, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %57 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %61 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @vnt_get_frame_time(i32 %58, i32 %59, i32 14, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @vnt_get_frame_time(i32 %66, i32 %67, i32 14, i32 %70)
  store i32 %71, i32* %15, align 4
  br label %127

72:                                               ; preds = %44
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %77 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %81 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vnt_get_frame_time(i32 %78, i32 %79, i32 20, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vnt_get_frame_time(i32 %86, i32 %87, i32 14, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %14, align 4
  br label %126

93:                                               ; preds = %72
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %98 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %102 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @vnt_get_frame_time(i32 %99, i32 %100, i32 14, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %106 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %110 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vnt_get_frame_time(i32 %107, i32 %108, i32 14, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %119 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 %117, %121
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @cpu_to_le16(i32 %123)
  store i32 %124, i32* %6, align 4
  br label %143

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126, %47
  br label %128

128:                                              ; preds = %127, %26
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %137 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 3, %138
  %140 = add nsw i32 %135, %139
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @cpu_to_le16(i32 %141)
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %128, %96
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @vnt_get_frame_time(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
