; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.adfs_dir_ops = type { i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.adfs_dir.0*, i32)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i32 (%struct.adfs_dir.2*)* }
%struct.adfs_dir = type opaque
%struct.adfs_dir.0 = type opaque
%struct.adfs_dir.1 = type opaque
%struct.object_info = type { i8*, i32, i32 }
%struct.adfs_dir.2 = type opaque
%struct.adfs_dir.3 = type { i32 }
%struct.TYPE_2__ = type { %struct.adfs_dir_ops* }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@adfs_dir_lock = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @adfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.adfs_dir_ops*, align 8
  %9 = alloca %struct.object_info, align 8
  %10 = alloca %struct.adfs_dir.3, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.inode* @file_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.TYPE_2__* @ADFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %19, align 8
  store %struct.adfs_dir_ops* %20, %struct.adfs_dir_ops** %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %22 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

27:                                               ; preds = %2
  %28 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %29 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)** %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir*
  %39 = call i32 %30(%struct.super_block* %31, i32 %34, i32 %37, %struct.adfs_dir* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %123

44:                                               ; preds = %27
  %45 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %46 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %52 = call i32 @dir_emit_dot(%struct.file* %50, %struct.dir_context* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %116

55:                                               ; preds = %49
  %56 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %57 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %60 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %65 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DT_DIR, align 4
  %68 = call i32 @dir_emit(%struct.dir_context* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %116

71:                                               ; preds = %63
  %72 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %73 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %72, i32 0, i32 0
  store i32 2, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %58
  %75 = call i32 @read_lock(i32* @adfs_dir_lock)
  %76 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %77 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %76, i32 0, i32 1
  %78 = load i32 (%struct.adfs_dir.0*, i32)*, i32 (%struct.adfs_dir.0*, i32)** %77, align 8
  %79 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.0*
  %80 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %81 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 2
  %84 = call i32 %78(%struct.adfs_dir.0* %79, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %114

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %108, %88
  %90 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %91 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %90, i32 0, i32 2
  %92 = load i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)** %91, align 8
  %93 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.1*
  %94 = call i64 %92(%struct.adfs_dir.1* %93, %struct.object_info* %9)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %89
  %97 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %98 = getelementptr inbounds %struct.object_info, %struct.object_info* %9, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.object_info, %struct.object_info* %9, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.object_info, %struct.object_info* %9, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DT_UNKNOWN, align 4
  %105 = call i32 @dir_emit(%struct.dir_context* %97, i8* %99, i32 %101, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  br label %113

108:                                              ; preds = %96
  %109 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %110 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %89

113:                                              ; preds = %107, %89
  br label %114

114:                                              ; preds = %113, %87
  %115 = call i32 @read_unlock(i32* @adfs_dir_lock)
  br label %116

116:                                              ; preds = %114, %70, %54
  %117 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %118 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %117, i32 0, i32 3
  %119 = load i32 (%struct.adfs_dir.2*)*, i32 (%struct.adfs_dir.2*)** %118, align 8
  %120 = bitcast %struct.adfs_dir.3* %10 to %struct.adfs_dir.2*
  %121 = call i32 %119(%struct.adfs_dir.2* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %42, %26
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.TYPE_2__* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i8*, i32, i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
