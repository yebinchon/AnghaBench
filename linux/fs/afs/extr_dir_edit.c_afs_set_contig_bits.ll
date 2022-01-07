; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_set_contig_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_set_contig_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.afs_xdr_dir_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.afs_xdr_dir_block*, i32, i32)* @afs_set_contig_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_set_contig_bits(%union.afs_xdr_dir_block* %0, i32 %1, i32 %2) #0 {
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
  %23 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %24 = bitcast %union.afs_xdr_dir_block* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %22
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 8
  %32 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %33 = bitcast %union.afs_xdr_dir_block* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %31
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 16
  %41 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %42 = bitcast %union.afs_xdr_dir_block* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %40
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 24
  %50 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %51 = bitcast %union.afs_xdr_dir_block* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 32
  %59 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %60 = bitcast %union.afs_xdr_dir_block* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 40
  %68 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %69 = bitcast %union.afs_xdr_dir_block* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %67
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 48
  %77 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %78 = bitcast %union.afs_xdr_dir_block* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %76
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 56
  %86 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %87 = bitcast %union.afs_xdr_dir_block* %86 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %4, align 8
  %94 = bitcast %union.afs_xdr_dir_block* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
