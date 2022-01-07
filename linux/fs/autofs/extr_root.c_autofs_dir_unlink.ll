; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.dentry* }
%struct.autofs_sb_info = type { i32, i32 }
%struct.autofs_info = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@EACCES = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs_dir_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dir_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_info*, align 8
  %8 = alloca %struct.autofs_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.autofs_sb_info* @autofs_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %13)
  store %struct.autofs_info* %14, %struct.autofs_info** %7, align 8
  %15 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %16 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %21
  %32 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %33 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %32, i32 0, i32 1
  %34 = call i64 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  %40 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %39)
  store %struct.autofs_info* %40, %struct.autofs_info** %8, align 8
  %41 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %42 = icmp ne %struct.autofs_info* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call i32 @IS_ROOT(%struct.dentry* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %49 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %48, i32 0, i32 1
  %50 = call i32 @atomic_dec(i32* %49)
  br label %51

51:                                               ; preds = %47, %43, %36
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.autofs_info*, %struct.autofs_info** %7, align 8
  %54 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dput(i32 %55)
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %60)
  %62 = call i32 @clear_nlink(%struct.TYPE_3__* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call i32 @current_time(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %68 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @__autofs_add_expiring(%struct.dentry* %70)
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = call i32 @d_drop(%struct.dentry* %72)
  %74 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %75 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %52, %28, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_3__*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__autofs_add_expiring(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
