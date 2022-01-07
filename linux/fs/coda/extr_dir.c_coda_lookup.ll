; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_dir.c_coda_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__, %struct.super_block* }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__, %struct.super_block* }
%struct.CodaFid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CODA_MAXNAMLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"name too long: lookup, %s %zu\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@CODA_NOCACHE = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @coda_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @coda_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.CodaFid, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @CODA_MAXNAMLEN, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @coda_i2s(%struct.inode* %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.inode* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.inode* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %97

38:                                               ; preds = %3
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i64 @is_root_inode(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @coda_iscontrol(i8* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = call %struct.inode* @coda_cnode_makectl(%struct.super_block* %48)
  store %struct.inode* %49, %struct.inode** %11, align 8
  %50 = load i32, i32* @CODA_NOCACHE, align 4
  store i32 %50, i32* %12, align 4
  br label %69

51:                                               ; preds = %42, %38
  %52 = bitcast %struct.CodaFid* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 4, i1 false)
  %53 = load %struct.super_block*, %struct.super_block** %8, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @coda_i2f(%struct.inode* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @venus_lookup(%struct.super_block* %53, i32 %55, i8* %56, i64 %57, i32* %12, %struct.CodaFid* %13)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load %struct.super_block*, %struct.super_block** %8, align 8
  %63 = call %struct.inode* @coda_cnode_make(%struct.CodaFid* %13, %struct.super_block* %62)
  br label %67

64:                                               ; preds = %51
  %65 = load i32, i32* %14, align 4
  %66 = call %struct.inode* @ERR_PTR(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi %struct.inode* [ %63, %61 ], [ %66, %64 ]
  store %struct.inode* %68, %struct.inode** %11, align 8
  br label %69

69:                                               ; preds = %67, %47
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call i32 @IS_ERR(%struct.inode* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @CODA_NOCACHE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = load i32, i32* @C_VATTR, align 4
  %81 = load i32, i32* @C_PURGE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @coda_flag_inode(%struct.inode* %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %73, %69
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.inode* @ERR_PTR(i32 %87)
  %89 = icmp eq %struct.inode* %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store %struct.inode* null, %struct.inode** %11, align 8
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = bitcast %struct.dentry* %93 to %struct.inode*
  %95 = call %struct.inode* @d_splice_alias(%struct.inode* %92, %struct.inode* %94)
  %96 = bitcast %struct.inode* %95 to %struct.dentry*
  store %struct.dentry* %96, %struct.dentry** %4, align 8
  br label %97

97:                                               ; preds = %91, %29
  %98 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %98
}

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @coda_i2s(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @is_root_inode(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i64) #1

declare dso_local %struct.inode* @coda_cnode_makectl(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @venus_lookup(%struct.super_block*, i32, i8*, i64, i32*, %struct.CodaFid*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.inode* @coda_cnode_make(%struct.CodaFid*, %struct.super_block*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @coda_flag_inode(%struct.inode*, i32) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
