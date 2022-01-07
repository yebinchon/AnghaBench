; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_cnode.c_coda_replace_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_cnode.c_coda_replace_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.CodaFid = type { i32 }
%struct.coda_inode_info = type { %struct.CodaFid }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_replace_fid(%struct.inode* %0, %struct.CodaFid* %1, %struct.CodaFid* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.CodaFid*, align 8
  %6 = alloca %struct.CodaFid*, align 8
  %7 = alloca %struct.coda_inode_info*, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %5, align 8
  store %struct.CodaFid* %2, %struct.CodaFid** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.coda_inode_info* @ITOC(%struct.inode* %9)
  store %struct.coda_inode_info* %10, %struct.coda_inode_info** %7, align 8
  %11 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %12 = call i64 @coda_f2i(%struct.CodaFid* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %14 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %13, i32 0, i32 0
  %15 = load %struct.CodaFid*, %struct.CodaFid** %5, align 8
  %16 = call i32 @coda_fideq(%struct.CodaFid* %14, %struct.CodaFid* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @remove_inode_hash(%struct.inode* %21)
  %23 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %24 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %23, i32 0, i32 0
  %25 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %26 = bitcast %struct.CodaFid* %24 to i8*
  %27 = bitcast %struct.CodaFid* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @__insert_inode_hash(%struct.inode* %31, i64 %32)
  ret void
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i64 @coda_f2i(%struct.CodaFid*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @coda_fideq(%struct.CodaFid*, %struct.CodaFid*) #1

declare dso_local i32 @remove_inode_hash(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__insert_inode_hash(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
