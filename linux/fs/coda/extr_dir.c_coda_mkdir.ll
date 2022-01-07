; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.coda_vattr = type { i32 }
%struct.CodaFid = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @coda_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.coda_vattr, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.CodaFid, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i64 @is_root_inode(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @coda_iscontrol(i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %70

33:                                               ; preds = %25, %3
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 @coda_i2f(%struct.inode* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @venus_mkdir(i32 %38, i32 %40, i8* %41, i32 %42, %struct.CodaFid* %13, %struct.coda_vattr* %9)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %66

47:                                               ; preds = %33
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.inode* @coda_iget(i32 %50, %struct.CodaFid* %13, %struct.coda_vattr* %9)
  store %struct.inode* %51, %struct.inode** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i64 @IS_ERR(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.inode* %56)
  store i32 %57, i32* %12, align 4
  br label %66

58:                                               ; preds = %47
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @coda_dir_inc_nlink(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call i32 @coda_dir_update_mtime(%struct.inode* %61)
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @d_instantiate(%struct.dentry* %63, %struct.inode* %64)
  store i32 0, i32* %4, align 4
  br label %70

66:                                               ; preds = %55, %46
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = call i32 @d_drop(%struct.dentry* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %58, %30
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @is_root_inode(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i32) #1

declare dso_local i32 @venus_mkdir(i32, i32, i8*, i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.inode* @coda_iget(i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @coda_dir_inc_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
