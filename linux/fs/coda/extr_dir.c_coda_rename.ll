; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @coda_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load %struct.dentry*, %struct.dentry** %10, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %85

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @coda_i2f(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @coda_i2f(%struct.inode* %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @venus_rename(i32 %41, i32 %43, i32 %45, i32 %46, i32 %47, i8* %48, i8* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %83, label %53

53:                                               ; preds = %38
  %54 = load %struct.dentry*, %struct.dentry** %10, align 8
  %55 = call i64 @d_really_is_positive(%struct.dentry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load %struct.dentry*, %struct.dentry** %10, align 8
  %59 = call i64 @d_is_dir(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call i32 @coda_dir_drop_nlink(%struct.inode* %62)
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i32 @coda_dir_inc_nlink(%struct.inode* %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call i32 @coda_dir_update_mtime(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = call i32 @coda_dir_update_mtime(%struct.inode* %69)
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = call %struct.inode* @d_inode(%struct.dentry* %71)
  %73 = load i32, i32* @C_VATTR, align 4
  %74 = call i32 @coda_flag_inode(%struct.inode* %72, i32 %73)
  br label %82

75:                                               ; preds = %53
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = load i32, i32* @C_VATTR, align 4
  %78 = call i32 @coda_flag_inode(%struct.inode* %76, i32 %77)
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = load i32, i32* @C_VATTR, align 4
  %81 = call i32 @coda_flag_inode(%struct.inode* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %66
  br label %83

83:                                               ; preds = %82, %38
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %35
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @venus_rename(i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @coda_dir_drop_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_inc_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @coda_flag_inode(%struct.inode*, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
