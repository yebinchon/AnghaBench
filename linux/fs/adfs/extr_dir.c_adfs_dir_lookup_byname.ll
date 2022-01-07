; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_dir_lookup_byname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_dir_lookup_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.object_info = type { i32, i32, i32 }
%struct.adfs_dir_ops = type { i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.adfs_dir.0*, i32)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i32 (%struct.adfs_dir.2*)* }
%struct.adfs_dir = type opaque
%struct.adfs_dir.0 = type opaque
%struct.adfs_dir.1 = type opaque
%struct.adfs_dir.2 = type opaque
%struct.adfs_dir.3 = type { i64 }
%struct.TYPE_3__ = type { %struct.adfs_dir_ops* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"parent directory changed under me! (%06x but got %06x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@adfs_dir_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.object_info*)* @adfs_dir_lookup_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_dir_lookup_byname(%struct.inode* %0, %struct.qstr* %1, %struct.object_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.object_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.adfs_dir_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.adfs_dir.3, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.object_info* %2, %struct.object_info** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %7, align 8
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = call %struct.TYPE_3__* @ADFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %18, align 8
  store %struct.adfs_dir_ops* %19, %struct.adfs_dir_ops** %8, align 8
  %20 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %21 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)** %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir*
  %31 = call i32 %22(%struct.super_block* %23, i32 %26, i32 %29, %struct.adfs_dir* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %108

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call %struct.TYPE_4__* @ADFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %10, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call %struct.TYPE_4__* @ADFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @adfs_error(%struct.super_block* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %102

54:                                               ; preds = %35
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.object_info*, %struct.object_info** %6, align 8
  %59 = getelementptr inbounds %struct.object_info, %struct.object_info* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = call i32 @read_lock(i32* @adfs_dir_lock)
  %61 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %62 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %61, i32 0, i32 1
  %63 = load i32 (%struct.adfs_dir.0*, i32)*, i32 (%struct.adfs_dir.0*, i32)** %62, align 8
  %64 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.0*
  %65 = call i32 %63(%struct.adfs_dir.0* %64, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %100

69:                                               ; preds = %54
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.qstr*, %struct.qstr** %5, align 8
  %73 = getelementptr inbounds %struct.qstr, %struct.qstr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = load %struct.qstr*, %struct.qstr** %5, align 8
  %76 = getelementptr inbounds %struct.qstr, %struct.qstr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %98, %69
  %79 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %80 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %79, i32 0, i32 2
  %81 = load i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)** %80, align 8
  %82 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.1*
  %83 = load %struct.object_info*, %struct.object_info** %6, align 8
  %84 = call i64 %81(%struct.adfs_dir.1* %82, %struct.object_info* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.object_info*, %struct.object_info** %6, align 8
  %90 = getelementptr inbounds %struct.object_info, %struct.object_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.object_info*, %struct.object_info** %6, align 8
  %93 = getelementptr inbounds %struct.object_info, %struct.object_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @__adfs_compare(i8* %87, i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %99

98:                                               ; preds = %86
  br label %78

99:                                               ; preds = %97, %78
  br label %100

100:                                              ; preds = %99, %68
  %101 = call i32 @read_unlock(i32* @adfs_dir_lock)
  br label %102

102:                                              ; preds = %100, %43
  %103 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %104 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %103, i32 0, i32 3
  %105 = load i32 (%struct.adfs_dir.2*)*, i32 (%struct.adfs_dir.2*)** %104, align 8
  %106 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.2*
  %107 = call i32 %105(%struct.adfs_dir.2* %106)
  br label %108

108:                                              ; preds = %102, %34
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_3__* @ADFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @ADFS_I(%struct.inode*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @__adfs_compare(i8*, i32, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
