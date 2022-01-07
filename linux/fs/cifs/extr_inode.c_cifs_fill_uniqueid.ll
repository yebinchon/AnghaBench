; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fill_uniqueid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_fill_uniqueid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cifs_fattr = type { i32 }
%struct.cifs_sb_info = type { i32 }

@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@ROOT_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_fill_uniqueid(%struct.super_block* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %6)
  store %struct.cifs_sb_info* %7, %struct.cifs_sb_info** %5, align 8
  %8 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load i32, i32* @ROOT_I, align 4
  %18 = call i32 @iunique(%struct.super_block* %16, i32 %17)
  %19 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
