; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_map.c_adfs_map_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_map.c_adfs_map_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_sb_info = type { i32, i32, %struct.adfs_discmap* }
%struct.adfs_discmap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adfs_map_free(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.adfs_sb_info*, align 8
  %4 = alloca %struct.adfs_discmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %7)
  store %struct.adfs_sb_info* %8, %struct.adfs_sb_info** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %9, i32 0, i32 2
  %11 = load %struct.adfs_discmap*, %struct.adfs_discmap** %10, align 8
  store %struct.adfs_discmap* %11, %struct.adfs_discmap** %4, align 8
  %12 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %25, %1
  %16 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %3, align 8
  %17 = load %struct.adfs_discmap*, %struct.adfs_discmap** %4, align 8
  %18 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %17, i32 1
  store %struct.adfs_discmap* %18, %struct.adfs_discmap** %4, align 8
  %19 = ptrtoint %struct.adfs_discmap* %17 to i32
  %20 = call i64 @scan_free_map(%struct.adfs_sb_info* %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %15, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @signed_asl(i32 %30, i32 %33)
  ret i32 %34
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i64 @scan_free_map(%struct.adfs_sb_info*, i32) #1

declare dso_local i32 @signed_asl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
