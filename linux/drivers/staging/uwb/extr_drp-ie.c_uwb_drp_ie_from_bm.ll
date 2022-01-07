; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_from_bm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_from_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { %struct.TYPE_2__, %struct.uwb_drp_alloc* }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_drp_alloc = type { i32, i32 }
%struct.uwb_mas_bm = type { i64* }

@tmp_bmp = common dso_local global i64* null, align 8
@UWB_NUM_MAS = common dso_local global i32 0, align 4
@tmp_mas_bm = common dso_local global i64* null, align 8
@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_ie_drp*, %struct.uwb_mas_bm*)* @uwb_drp_ie_from_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_ie_from_bm(%struct.uwb_ie_drp* %0, %struct.uwb_mas_bm* %1) #0 {
  %3 = alloca %struct.uwb_ie_drp*, align 8
  %4 = alloca %struct.uwb_mas_bm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uwb_drp_alloc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uwb_ie_drp* %0, %struct.uwb_ie_drp** %3, align 8
  store %struct.uwb_mas_bm* %1, %struct.uwb_mas_bm** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64*, i64** @tmp_bmp, align 8
  %13 = load i32, i32* @UWB_NUM_MAS, align 4
  %14 = call i32 @DECLARE_BITMAP(i64* %12, i32 %13)
  %15 = load i64*, i64** @tmp_mas_bm, align 8
  %16 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %17 = call i32 @DECLARE_BITMAP(i64* %15, i32 %16)
  %18 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %18, i32 0, i32 1
  %20 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %19, align 8
  store %struct.uwb_drp_alloc* %20, %struct.uwb_drp_alloc** %9, align 8
  %21 = load i64*, i64** @tmp_bmp, align 8
  %22 = load %struct.uwb_mas_bm*, %struct.uwb_mas_bm** %4, align 8
  %23 = getelementptr inbounds %struct.uwb_mas_bm, %struct.uwb_mas_bm* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* @UWB_NUM_MAS, align 4
  %26 = call i32 @bitmap_copy(i64* %21, i64* %24, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %99, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UWB_NUM_ZONES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %27
  %32 = load i64*, i64** @tmp_mas_bm, align 8
  %33 = load i64*, i64** @tmp_bmp, align 8
  %34 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %35 = call i32 @bitmap_copy(i64* %32, i64* %33, i32 %34)
  %36 = load i64*, i64** @tmp_mas_bm, align 8
  %37 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %38 = call i64 @bitmap_weight(i64* %36, i32 %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  %41 = load i64*, i64** @tmp_mas_bm, align 8
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %68, %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %50, i64 %52
  %54 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %60, i64 %62
  %64 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  store i32 1, i32* %11, align 4
  br label %71

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %44

71:                                               ; preds = %57, %44
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %5, align 4
  %78 = shl i32 1, %77
  %79 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %79, i64 %81
  %83 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %85, i64 %87
  %89 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %74, %71
  br label %93

93:                                               ; preds = %92, %31
  %94 = load i64*, i64** @tmp_bmp, align 8
  %95 = load i64*, i64** @tmp_bmp, align 8
  %96 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %97 = load i32, i32* @UWB_NUM_MAS, align 4
  %98 = call i32 @bitmap_shift_right(i64* %94, i64* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %27

102:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %138, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %103
  %108 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %108, i64 %110
  %112 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_le16(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %117 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %116, i32 0, i32 1
  %118 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %118, i64 %120
  %122 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %121, i32 0, i32 1
  store i32 %115, i32* %122, align 4
  %123 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %9, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %123, i64 %125
  %127 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %132 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %131, i32 0, i32 1
  %133 = load %struct.uwb_drp_alloc*, %struct.uwb_drp_alloc** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %133, i64 %135
  %137 = getelementptr inbounds %struct.uwb_drp_alloc, %struct.uwb_drp_alloc* %136, i32 0, i32 0
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %107
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %103

141:                                              ; preds = %103
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = add i64 12, %144
  %146 = trunc i64 %145 to i32
  %147 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %148 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i64*, i32) #1

declare dso_local i32 @bitmap_copy(i64*, i64*, i32) #1

declare dso_local i64 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @bitmap_shift_right(i64*, i64*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
