; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_lookup_atcell.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_lookup_atcell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.afs_cell = type { i32, i32 }
%struct.afs_net = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFS_MAXCELLNAME = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @afs_lookup_atcell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @afs_lookup_atcell(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca %struct.afs_net*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call %struct.afs_net* @afs_d2net(%struct.dentry* %10)
  store %struct.afs_net* %11, %struct.afs_net** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %13 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %2, align 8
  br label %85

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %6, align 8
  %24 = load i64, i64* @AFS_MAXCELLNAME, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %83

31:                                               ; preds = %20
  %32 = call i32 (...) @rcu_read_lock()
  br label %33

33:                                               ; preds = %55, %31
  %34 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %35 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %34, i32 0, i32 0
  %36 = call i32 @read_seqbegin_or_lock(i32* %35, i32* %7)
  %37 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %38 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.afs_cell* @rcu_dereference_raw(i32 %39)
  store %struct.afs_cell* %40, %struct.afs_cell** %4, align 8
  %41 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %42 = icmp ne %struct.afs_cell* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %45 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %49 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @memcpy(i8* %47, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %43, %33
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %57 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @need_seqretry(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %33, label %61

61:                                               ; preds = %55
  %62 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %63 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @done_seqretry(i32* %63, i32 %64)
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.dentry* @ERR_PTR(i32 %68)
  store %struct.dentry* %69, %struct.dentry** %6, align 8
  %70 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %71 = icmp ne %struct.afs_cell* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %80

73:                                               ; preds = %61
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.dentry*, %struct.dentry** %3, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.dentry* @lookup_one_len(i8* %74, i32 %77, i32 %78)
  store %struct.dentry* %79, %struct.dentry** %6, align 8
  br label %80

80:                                               ; preds = %73, %72
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %83

83:                                               ; preds = %80, %30
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %84, %struct.dentry** %2, align 8
  br label %85

85:                                               ; preds = %83, %16
  %86 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %86
}

declare dso_local %struct.afs_net* @afs_d2net(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_seqbegin_or_lock(i32*, i32*) #1

declare dso_local %struct.afs_cell* @rcu_dereference_raw(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @need_seqretry(i32*, i32) #1

declare dso_local i32 @done_seqretry(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
