; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_link_hashtable_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_link_hashtable_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block_link = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.btrfsic_block_link_hashtable = type { i64 }

@BTRFSIC_BLOCK_LINK_HASHTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfsic_block_link*, %struct.btrfsic_block_link_hashtable*)* @btrfsic_block_link_hashtable_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_block_link_hashtable_add(%struct.btrfsic_block_link* %0, %struct.btrfsic_block_link_hashtable* %1) #0 {
  %3 = alloca %struct.btrfsic_block_link*, align 8
  %4 = alloca %struct.btrfsic_block_link_hashtable*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfsic_block_link* %0, %struct.btrfsic_block_link** %3, align 8
  store %struct.btrfsic_block_link_hashtable* %1, %struct.btrfsic_block_link_hashtable** %4, align 8
  %6 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %7 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 16
  %12 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %13 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 16
  %18 = xor i32 %11, %17
  %19 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %20 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %18, %26
  %28 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %29 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = xor i32 %27, %35
  %37 = load i32, i32* @BTRFSIC_BLOCK_LINK_HASHTABLE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %41 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp eq %struct.TYPE_7__* null, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %47 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp eq %struct.TYPE_8__* null, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %3, align 8
  %53 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %52, i32 0, i32 0
  %54 = load %struct.btrfsic_block_link_hashtable*, %struct.btrfsic_block_link_hashtable** %4, align 8
  %55 = getelementptr inbounds %struct.btrfsic_block_link_hashtable, %struct.btrfsic_block_link_hashtable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @list_add(i32* %53, i64 %59)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
