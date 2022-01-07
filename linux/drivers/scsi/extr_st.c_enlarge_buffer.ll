; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_enlarge_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_enlarge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_buffer = type { i32, i32, i32, i32, %struct.page**, i32, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ST_MAX_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_buffer*, i32, i32)* @enlarge_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enlarge_buffer(%struct.st_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.st_buffer* %0, %struct.st_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %169

21:                                               ; preds = %3
  %22 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %29 = call i32 @normalize_buffer(%struct.st_buffer* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @__GFP_NOWARN, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @GFP_DMA, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @__GFP_ZERO, align 4
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %10, align 4
  br label %90

64:                                               ; preds = %52
  %65 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %65, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %81, %64
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ST_MAX_ORDER, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %72, %73
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %70, %66
  %79 = phi i1 [ false, %66 ], [ %77, %70 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 2
  store i32 %85, i32* %10, align 4
  br label %66

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %89 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %57
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %92, %93
  %95 = mul nsw i32 %91, %94
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @ST_MAX_ORDER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %169

103:                                              ; preds = %98
  %104 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %105 = call i32 @normalize_buffer(%struct.st_buffer* %104)
  %106 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @enlarge_buffer(%struct.st_buffer* %106, i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  br label %169

110:                                              ; preds = %90
  %111 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %8, align 4
  %114 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %115 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %140, %110
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %122, %123
  br label %125

125:                                              ; preds = %121, %117
  %126 = phi i1 [ false, %117 ], [ %124, %121 ]
  br i1 %126, label %127, label %160

127:                                              ; preds = %125
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call %struct.page* @alloc_pages(i32 %128, i32 %129)
  store %struct.page* %130, %struct.page** %14, align 8
  %131 = load %struct.page*, %struct.page** %14, align 8
  %132 = icmp ne %struct.page* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = call i32 @DEB(i32 %134)
  %138 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %139 = call i32 @normalize_buffer(%struct.st_buffer* %138)
  store i32 0, i32* %4, align 4
  br label %169

140:                                              ; preds = %127
  %141 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %142 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %150 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.page*, %struct.page** %14, align 8
  %152 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %153 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %152, i32 0, i32 4
  %154 = load %struct.page**, %struct.page*** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.page*, %struct.page** %154, i64 %156
  store %struct.page* %151, %struct.page** %157, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %117

160:                                              ; preds = %125
  %161 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %162 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %161, i32 0, i32 4
  %163 = load %struct.page**, %struct.page*** %162, align 8
  %164 = getelementptr inbounds %struct.page*, %struct.page** %163, i64 0
  %165 = load %struct.page*, %struct.page** %164, align 8
  %166 = call i32 @page_address(%struct.page* %165)
  %167 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %168 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %160, %133, %103, %102, %20
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @normalize_buffer(%struct.st_buffer*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
