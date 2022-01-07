; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.coda_inode_info = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@C_FLUSH = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @coda_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_dentry_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.coda_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LOOKUP_RCU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ECHILD, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @is_root_inode(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %15
  br label %79

25:                                               ; preds = %20
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i64 @is_bad_inode(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %78

30:                                               ; preds = %25
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call %struct.inode* @d_inode(%struct.dentry* %31)
  %33 = call %struct.coda_inode_info* @ITOC(%struct.inode* %32)
  store %struct.coda_inode_info* %33, %struct.coda_inode_info** %7, align 8
  %34 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %35 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @C_PURGE, align 4
  %38 = load i32, i32* @C_FLUSH, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %79

43:                                               ; preds = %30
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = call i32 @shrink_dcache_parent(%struct.dentry* %44)
  %46 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %47 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @C_FLUSH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* @C_FLUSH, align 4
  %55 = call i32 @coda_flag_inode_children(%struct.inode* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = call i32 @d_count(%struct.dentry* %57)
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %79

61:                                               ; preds = %56
  %62 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %63 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %62, i32 0, i32 1
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i32, i32* @C_VATTR, align 4
  %66 = load i32, i32* @C_PURGE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @C_FLUSH, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %72 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %76 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %61, %29
  store i32 0, i32* %3, align 4
  br label %80

79:                                               ; preds = %60, %42, %24
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @is_root_inode(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
