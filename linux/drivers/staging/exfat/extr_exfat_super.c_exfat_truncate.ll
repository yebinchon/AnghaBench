; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.exfat_sb_info = type { %struct.fs_info_t }
%struct.fs_info_t = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @exfat_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exfat_truncate(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.exfat_sb_info*, align 8
  %7 = alloca %struct.fs_info_t*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %12)
  store %struct.exfat_sb_info* %13, %struct.exfat_sb_info** %6, align 8
  %14 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %6, align 8
  %15 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %14, i32 0, i32 0
  store %struct.fs_info_t* %15, %struct.fs_info_t** %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call i32 @__lock_super(%struct.super_block* %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.TYPE_4__* @EXFAT_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i32 @i_size_read(%struct.inode* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @i_size_read(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call %struct.TYPE_4__* @EXFAT_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.TYPE_4__* @EXFAT_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %81

39:                                               ; preds = %31
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i32 @i_size_read(%struct.inode* %42)
  %44 = call i32 @ffsTruncateFile(%struct.inode* %40, i32 %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %81

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @current_time(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = call i64 @IS_DIRSYNC(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @exfat_sync_inode(%struct.inode* %59)
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call i32 @mark_inode_dirty(%struct.inode* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call i32 @i_size_read(%struct.inode* %65)
  %67 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %68 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = add nsw i32 %66, %70
  %72 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %73 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = xor i32 %75, -1
  %77 = and i32 %71, %76
  %78 = ashr i32 %77, 9
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %64, %47, %38
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = call i32 @__unlock_super(%struct.super_block* %82)
  ret void
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @__lock_super(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ffsTruncateFile(%struct.inode*, i32, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @exfat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @__unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
