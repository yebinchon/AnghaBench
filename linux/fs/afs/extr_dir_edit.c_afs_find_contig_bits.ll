; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_find_contig_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_find_contig_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.afs_xdr_dir_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.afs_xdr_dir_block*, i32)* @afs_find_contig_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_find_contig_bits(%union.afs_xdr_dir_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.afs_xdr_dir_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.afs_xdr_dir_block* %0, %union.afs_xdr_dir_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %11 = bitcast %union.afs_xdr_dir_block* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 0
  store i32 %17, i32* %6, align 4
  %18 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %19 = bitcast %union.afs_xdr_dir_block* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %29 = bitcast %union.afs_xdr_dir_block* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %39 = bitcast %union.afs_xdr_dir_block* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 24
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %49 = bitcast %union.afs_xdr_dir_block* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 4
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 32
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %59 = bitcast %union.afs_xdr_dir_block* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 40
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %69 = bitcast %union.afs_xdr_dir_block* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 6
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 48
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %79 = bitcast %union.afs_xdr_dir_block* %78 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 7
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 %84, 56
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %126, %2
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = call i32 @ffz(i64 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = and i64 %105, %106
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %94
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub i32 64, %111
  %113 = icmp ugt i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 -1, i32* %3, align 4
  br label %130

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %130

117:                                              ; preds = %94
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @__ffs(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = ashr i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %94, label %129

129:                                              ; preds = %126
  store i32 -1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %115, %114
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
