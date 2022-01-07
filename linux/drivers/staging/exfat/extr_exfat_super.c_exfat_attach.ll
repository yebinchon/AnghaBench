; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.exfat_sb_info = type { i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @exfat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exfat_attach(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exfat_sb_info*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.exfat_sb_info* @EXFAT_SB(i32 %9)
  store %struct.exfat_sb_info* %10, %struct.exfat_sb_info** %5, align 8
  %11 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %11, i32 0, i32 1
  %13 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @exfat_hash(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %16
  store %struct.hlist_head* %17, %struct.hlist_head** %6, align 8
  %18 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.TYPE_2__* @EXFAT_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call %struct.TYPE_2__* @EXFAT_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %29 = call i32 @hlist_add_head(i32* %27, %struct.hlist_head* %28)
  %30 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %5, align 8
  %31 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  ret void
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(i32) #1

declare dso_local i32 @exfat_hash(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
