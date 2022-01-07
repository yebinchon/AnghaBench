; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_last_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_last_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32, i32, i32 }
%struct.fs_info_t = type { i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_last_cluster(%struct.super_block* %0, %struct.chain_t* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.chain_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.chain_t* %1, %struct.chain_t** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.fs_info_t* %10, %struct.fs_info_t** %7, align 8
  %11 = load %struct.chain_t*, %struct.chain_t** %4, align 8
  %12 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.chain_t*, %struct.chain_t** %4, align 8
  %15 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.chain_t*, %struct.chain_t** %4, align 8
  %20 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @FAT_read(%struct.super_block* %27, i32 %28, i32* %6)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @CLUSTER_32(i32 -1)
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ false, %26 ], [ %34, %31 ]
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %39 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %5, align 4
  br label %26

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @CLUSTER_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
