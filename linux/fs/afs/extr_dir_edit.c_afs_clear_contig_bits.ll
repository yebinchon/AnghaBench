; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_clear_contig_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_clear_contig_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.afs_xdr_dir_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.afs_xdr_dir_block*, i32, i32)* @afs_clear_contig_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_clear_contig_bits(%union.afs_xdr_dir_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.afs_xdr_dir_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.afs_xdr_dir_block* %0, %union.afs_xdr_dir_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %17 = bitcast %union.afs_xdr_dir_block* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 0
  %23 = xor i32 %22, -1
  %24 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %25 = bitcast %union.afs_xdr_dir_block* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = xor i32 %32, -1
  %34 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %35 = bitcast %union.afs_xdr_dir_block* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 16
  %43 = xor i32 %42, -1
  %44 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %45 = bitcast %union.afs_xdr_dir_block* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %43
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 24
  %53 = xor i32 %52, -1
  %54 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %55 = bitcast %union.afs_xdr_dir_block* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 32
  %63 = xor i32 %62, -1
  %64 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %65 = bitcast %union.afs_xdr_dir_block* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %63
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 40
  %73 = xor i32 %72, -1
  %74 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %75 = bitcast %union.afs_xdr_dir_block* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %73
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 48
  %83 = xor i32 %82, -1
  %84 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %85 = bitcast %union.afs_xdr_dir_block* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %83
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 56
  %93 = xor i32 %92, -1
  %94 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %95 = bitcast %union.afs_xdr_dir_block* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 7
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %102 = bitcast %union.afs_xdr_dir_block* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
