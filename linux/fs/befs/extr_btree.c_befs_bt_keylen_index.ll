; ModuleID = '/home/carl/AnghaBench/linux/fs/befs/extr_btree.c_befs_bt_keylen_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/befs/extr_btree.c_befs_bt_keylen_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.befs_btree_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.befs_btree_node*)* @befs_bt_keylen_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @befs_bt_keylen_index(%struct.befs_btree_node* %0) #0 {
  %2 = alloca %struct.befs_btree_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.befs_btree_node* %0, %struct.befs_btree_node** %2, align 8
  store i32 8, i32* %3, align 4
  %6 = load %struct.befs_btree_node*, %struct.befs_btree_node** %2, align 8
  %7 = getelementptr inbounds %struct.befs_btree_node, %struct.befs_btree_node* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = add i64 4, %10
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = urem i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 8, %18
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.befs_btree_node*, %struct.befs_btree_node** %2, align 8
  %25 = getelementptr inbounds %struct.befs_btree_node, %struct.befs_btree_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = bitcast i8* %29 to i32*
  ret i32* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
