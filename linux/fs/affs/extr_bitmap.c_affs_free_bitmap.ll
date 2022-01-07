; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_free_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_free_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.affs_sb_info = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affs_free_bitmap(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.affs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %4)
  store %struct.affs_sb_info* %5, %struct.affs_sb_info** %3, align 8
  %6 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @affs_brelse(i32* %14)
  %16 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %17 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 8
  %20 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @affs_brelse(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
