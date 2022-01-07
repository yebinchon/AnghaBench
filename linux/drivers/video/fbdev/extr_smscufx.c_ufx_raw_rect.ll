; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_raw_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_smscufx.c_ufx_raw_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufx_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufx_data*, i64*, i32, i32, i32, i32)* @ufx_raw_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufx_raw_rect(%struct.ufx_data* %0, i64* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ufx_data*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ufx_data* %0, %struct.ufx_data** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i64 @ALIGN(i32 %19, i32 4)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  store i64 %24, i64* %14, align 8
  %25 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %26 = icmp ne %struct.ufx_data* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %31 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = call i32 @cpu_to_le32(i64 1)
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = bitcast i64* %39 to i32*
  store i32 %37, i32* %40, align 4
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 16
  %43 = call i32 @cpu_to_le32(i64 %42)
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = bitcast i64* %45 to i32*
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @cpu_to_le16(i32 %47)
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @cpu_to_le16(i32 %51)
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 5
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @cpu_to_le16(i32 %55)
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 6
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @cpu_to_le16(i32 %59)
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 7
  store i64 %60, i64* %62, align 8
  %63 = call i32 @cpu_to_le32(i64 0)
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 8
  %66 = bitcast i64* %65 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %68 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 16384, %72
  %74 = call i64 @cpu_to_le16(i32 %73)
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 10
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %78 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @cpu_to_le16(i32 %82)
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 11
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %128, %6
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %92 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 %96, %99
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @BPP, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %17, align 4
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %107, %109
  %111 = add i64 24, %110
  %112 = udiv i64 %111, 2
  %113 = getelementptr inbounds i64, i64* %106, i64 %112
  %114 = load %struct.ufx_data*, %struct.ufx_data** %7, align 8
  %115 = getelementptr inbounds %struct.ufx_data, %struct.ufx_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @BPP, align 4
  %126 = mul nsw i32 %124, %125
  %127 = call i32 @memcpy(i64* %113, i8* %123, i32 %126)
  br label %128

128:                                              ; preds = %90
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %86

131:                                              ; preds = %86
  ret void
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
