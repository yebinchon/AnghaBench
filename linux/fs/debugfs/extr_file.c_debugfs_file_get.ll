; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_file_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_file_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.debugfs_fsdata = type { i32, i32, i8* }

@DEBUGFS_FSDATA_IS_REAL_FOPS_BIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debugfs_file_get(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.debugfs_fsdata*, align 8
  %5 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @READ_ONCE(i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i64, i64* @DEBUGFS_FSDATA_IS_REAL_FOPS_BIT, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.debugfs_fsdata*
  store %struct.debugfs_fsdata* %17, %struct.debugfs_fsdata** %4, align 8
  br label %57

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.debugfs_fsdata* @kmalloc(i32 16, i32 %19)
  store %struct.debugfs_fsdata* %20, %struct.debugfs_fsdata** %4, align 8
  %21 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %22 = icmp ne %struct.debugfs_fsdata* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64, i64* @DEBUGFS_FSDATA_IS_REAL_FOPS_BIT, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %34 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %36 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %35, i32 0, i32 0
  %37 = call i32 @refcount_set(i32* %36, i32 1)
  %38 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %39 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %38, i32 0, i32 1
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %45 = call i8* @cmpxchg(i32* %42, i8* %43, %struct.debugfs_fsdata* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %26
  %49 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %50 = call i32 @kfree(%struct.debugfs_fsdata* %49)
  %51 = load %struct.dentry*, %struct.dentry** %3, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @READ_ONCE(i32 %53)
  %55 = bitcast i8* %54 to %struct.debugfs_fsdata*
  store %struct.debugfs_fsdata* %55, %struct.debugfs_fsdata** %4, align 8
  br label %56

56:                                               ; preds = %48, %26
  br label %57

57:                                               ; preds = %56, %15
  %58 = load %struct.dentry*, %struct.dentry** %3, align 8
  %59 = call i64 @d_unlinked(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %73

64:                                               ; preds = %57
  %65 = load %struct.debugfs_fsdata*, %struct.debugfs_fsdata** %4, align 8
  %66 = getelementptr inbounds %struct.debugfs_fsdata, %struct.debugfs_fsdata* %65, i32 0, i32 0
  %67 = call i32 @refcount_inc_not_zero(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %61, %23
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local %struct.debugfs_fsdata* @kmalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @cmpxchg(i32*, i8*, %struct.debugfs_fsdata*) #1

declare dso_local i32 @kfree(%struct.debugfs_fsdata*) #1

declare dso_local i64 @d_unlinked(%struct.dentry*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
