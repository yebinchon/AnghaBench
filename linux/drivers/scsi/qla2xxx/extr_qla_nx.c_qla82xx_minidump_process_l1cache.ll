; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_l1cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_minidump_process_l1cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.qla82xx_md_entry_cache = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i64**)* @qla82xx_minidump_process_l1cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_minidump_process_l1cache(%struct.TYPE_9__* %0, i32* %1, i64** %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.qla82xx_md_entry_cache*, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64** %2, i64*** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %7, align 8
  %24 = load i64**, i64*** %6, align 8
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %20, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to %struct.qla82xx_md_entry_cache*
  store %struct.qla82xx_md_entry_cache* %27, %struct.qla82xx_md_entry_cache** %19, align 8
  %28 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %29 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %32 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %35 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %38 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %18, align 8
  %41 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %42 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %45 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %49 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %16, align 8
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %95, %3
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %57, i64 %58, i64 %59, i32 1)
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %61, i64 %62, i64 %63, i32 1)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %8, align 8
  store i64 0, i64* %13, align 8
  br label %66

66:                                               ; preds = %85, %56
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @qla82xx_md_rw_32(%struct.qla_hw_data* %71, i64 %72, i64 0, i32 0)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @cpu_to_le32(i64 %74)
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %20, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %20, align 8
  store i64 %76, i64* %77, align 8
  %79 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %80 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %70
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %13, align 8
  br label %66

88:                                               ; preds = %66
  %89 = load %struct.qla82xx_md_entry_cache*, %struct.qla82xx_md_entry_cache** %19, align 8
  %90 = getelementptr inbounds %struct.qla82xx_md_entry_cache, %struct.qla82xx_md_entry_cache* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %15, align 8
  br label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %52

98:                                               ; preds = %52
  %99 = load i64*, i64** %20, align 8
  %100 = load i64**, i64*** %6, align 8
  store i64* %99, i64** %100, align 8
  ret void
}

declare dso_local i64 @qla82xx_md_rw_32(%struct.qla_hw_data*, i64, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
