; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.CodaFid = type { i32 }
%struct.coda_vattr = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @coda_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.CodaFid, align 4
  %15 = alloca %struct.coda_vattr, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i64 @is_root_inode(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @coda_iscontrol(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %69

35:                                               ; preds = %27, %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @coda_i2f(%struct.inode* %39)
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @venus_create(i32 %38, i32 %40, i8* %41, i32 %42, i32 0, i32 %43, %struct.CodaFid* %14, %struct.coda_vattr* %15)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %65

48:                                               ; preds = %35
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.inode* @coda_iget(i32 %51, %struct.CodaFid* %14, %struct.coda_vattr* %15)
  store %struct.inode* %52, %struct.inode** %13, align 8
  %53 = load %struct.inode*, %struct.inode** %13, align 8
  %54 = call i64 @IS_ERR(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = call i32 @PTR_ERR(%struct.inode* %57)
  store i32 %58, i32* %10, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @coda_dir_update_mtime(%struct.inode* %60)
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = load %struct.inode*, %struct.inode** %13, align 8
  %64 = call i32 @d_instantiate(%struct.dentry* %62, %struct.inode* %63)
  store i32 0, i32* %5, align 4
  br label %69

65:                                               ; preds = %56, %47
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = call i32 @d_drop(%struct.dentry* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %59, %32
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @is_root_inode(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i32) #1

declare dso_local i32 @venus_create(i32, i32, i8*, i32, i32, i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.inode* @coda_iget(i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
