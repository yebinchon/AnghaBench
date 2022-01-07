; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_count_used_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_count_used_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.bd_info_t = type { i32 }
%struct.TYPE_4__ = type { %struct.bd_info_t, %struct.fs_info_t }

@used_bit = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exfat_count_used_clusters(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fs_info_t*, align 8
  %9 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.fs_info_t* %12, %struct.fs_info_t** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.bd_info_t* %15, %struct.bd_info_t** %9, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 2, i32* %3, align 4
  br label %16

16:                                               ; preds = %55, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %19 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %24 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64*, i64** @used_bit, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %48 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %3, align 4
  br label %16

58:                                               ; preds = %16
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
