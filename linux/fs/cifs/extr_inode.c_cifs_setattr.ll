; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cifs_sb_info* @CIFS_SB(i32 %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %6, align 8
  %12 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %13 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %12)
  store %struct.cifs_tcon* %13, %struct.cifs_tcon** %7, align 8
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = load %struct.iattr*, %struct.iattr** %5, align 8
  %21 = call i32 @cifs_setattr_unix(%struct.dentry* %19, %struct.iattr* %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = call i32 @cifs_setattr_nounix(%struct.dentry* %23, %struct.iattr* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_setattr_unix(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @cifs_setattr_nounix(%struct.dentry*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
