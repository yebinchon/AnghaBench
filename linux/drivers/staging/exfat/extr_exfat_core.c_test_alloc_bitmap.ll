; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_test_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_test_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.bd_info_t = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.bd_info_t, %struct.fs_info_t }

@free_bit = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_alloc_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fs_info_t*, align 8
  %14 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.fs_info_t* %17, %struct.fs_info_t** %13, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.bd_info_t* %20, %struct.bd_info_t** %14, align 8
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -8
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 2
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %32 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 3
  %35 = ashr i32 %30, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 3
  %38 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %39 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  store i32 %41, i32* %8, align 4
  store i32 2, i32* %6, align 4
  br label %42

42:                                               ; preds = %113, %2
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %45 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %50 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %65, %48
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 255
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** @free_bit, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %73, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %82 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %118

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 8
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %94 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %100 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97, %88
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %107 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 2, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %103
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 8
  store i32 %115, i32* %6, align 4
  br label %42

116:                                              ; preds = %42
  %117 = call i32 @CLUSTER_32(i32 -1)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %85
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @CLUSTER_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
