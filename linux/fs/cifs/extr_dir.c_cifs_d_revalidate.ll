; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_d_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_d_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i64 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@lookupCacheEnabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @cifs_d_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_d_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @LOOKUP_RCU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ECHILD, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i64 @d_really_is_positive(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @LOOKUP_REVAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_3__* @CIFS_I(%struct.inode* %26)
  %28 = call i32 @CIFS_CACHE_READ(%struct.TYPE_3__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call %struct.TYPE_3__* @CIFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %25, %18
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i64 @cifs_revalidate_dentry(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %88

39:                                               ; preds = %34
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i64 @IS_AUTOMOUNT(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %43
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 1
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.dentry*, %struct.dentry** %4, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  br label %62

62:                                               ; preds = %50, %43, %39
  store i32 1, i32* %3, align 4
  br label %88

63:                                               ; preds = %14
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %88

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @LOOKUP_CREATE, align 4
  %70 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %88

75:                                               ; preds = %67
  %76 = load i32, i32* @jiffies, align 4
  %77 = load %struct.dentry*, %struct.dentry** %4, align 8
  %78 = call i64 @cifs_get_time(%struct.dentry* %77)
  %79 = load i64, i64* @HZ, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i64 @time_after(i32 %76, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @lookupCacheEnabled, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %75
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %83
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %74, %66, %62, %38, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @CIFS_I(%struct.inode*) #1

declare dso_local i64 @cifs_revalidate_dentry(%struct.dentry*) #1

declare dso_local i64 @IS_AUTOMOUNT(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @cifs_get_time(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
