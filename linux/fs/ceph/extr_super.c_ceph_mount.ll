; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.file_system_type = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.ceph_fs_client = type { i32, i32 }
%struct.ceph_mount_options = type { i32 }
%struct.ceph_options = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ceph_mount\0A\00", align 1
@NOSHARE = common dso_local global i32 0, align 4
@ceph_set_super = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"get_sb got existing client %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"get_sb using new client %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"root %p inode %p ino %llx.%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ceph_mount fail %ld\0A\00", align 1
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @ceph_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.ceph_fs_client*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.super_block*, i8*)*, align 8
  %15 = alloca %struct.ceph_mount_options*, align 8
  %16 = alloca %struct.ceph_options*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 (%struct.super_block*, i8*)* @ceph_compare_super, i32 (%struct.super_block*, i8*)** %14, align 8
  store %struct.ceph_mount_options* null, %struct.ceph_mount_options** %15, align 8
  store %struct.ceph_options* null, %struct.ceph_options** %16, align 8
  %17 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @parse_mount_options(%struct.ceph_mount_options** %15, %struct.ceph_options** %16, i32 %18, i8* %19, i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.super_block* @ERR_PTR(i32 %25)
  %27 = bitcast %struct.super_block* %26 to %struct.dentry*
  store %struct.dentry* %27, %struct.dentry** %12, align 8
  br label %136

28:                                               ; preds = %4
  %29 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %15, align 8
  %30 = load %struct.ceph_options*, %struct.ceph_options** %16, align 8
  %31 = call %struct.super_block* @create_fs_client(%struct.ceph_mount_options* %29, %struct.ceph_options* %30)
  %32 = bitcast %struct.super_block* %31 to %struct.ceph_fs_client*
  store %struct.ceph_fs_client* %32, %struct.ceph_fs_client** %11, align 8
  %33 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %34 = bitcast %struct.ceph_fs_client* %33 to %struct.super_block*
  %35 = call i64 @IS_ERR(%struct.super_block* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %39 = bitcast %struct.ceph_fs_client* %38 to %struct.super_block*
  %40 = call %struct.super_block* @ERR_CAST(%struct.super_block* %39)
  %41 = bitcast %struct.super_block* %40 to %struct.dentry*
  store %struct.dentry* %41, %struct.dentry** %12, align 8
  br label %136

42:                                               ; preds = %28
  %43 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %44 = bitcast %struct.ceph_fs_client* %43 to %struct.super_block*
  %45 = call i32 @ceph_mdsc_init(%struct.super_block* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.super_block* @ERR_PTR(i32 %49)
  %51 = bitcast %struct.super_block* %50 to %struct.dentry*
  store %struct.dentry* %51, %struct.dentry** %12, align 8
  br label %132

52:                                               ; preds = %42
  %53 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %54 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NOSHARE, align 4
  %57 = call i64 @ceph_test_opt(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 (%struct.super_block*, i8*)* null, i32 (%struct.super_block*, i8*)** %14, align 8
  br label %60

60:                                               ; preds = %59, %52
  %61 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %62 = load i32 (%struct.super_block*, i8*)*, i32 (%struct.super_block*, i8*)** %14, align 8
  %63 = load i32, i32* @ceph_set_super, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %66 = bitcast %struct.ceph_fs_client* %65 to %struct.super_block*
  %67 = call %struct.super_block* @sget(%struct.file_system_type* %61, i32 (%struct.super_block*, i8*)* %62, i32 %63, i32 %64, %struct.super_block* %66)
  store %struct.super_block* %67, %struct.super_block** %10, align 8
  %68 = load %struct.super_block*, %struct.super_block** %10, align 8
  %69 = call i64 @IS_ERR(%struct.super_block* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.super_block*, %struct.super_block** %10, align 8
  %73 = call %struct.super_block* @ERR_CAST(%struct.super_block* %72)
  %74 = bitcast %struct.super_block* %73 to %struct.dentry*
  store %struct.dentry* %74, %struct.dentry** %12, align 8
  br label %132

75:                                               ; preds = %60
  %76 = load %struct.super_block*, %struct.super_block** %10, align 8
  %77 = call %struct.super_block* @ceph_sb_to_client(%struct.super_block* %76)
  %78 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %79 = bitcast %struct.ceph_fs_client* %78 to %struct.super_block*
  %80 = icmp ne %struct.super_block* %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %83 = bitcast %struct.ceph_fs_client* %82 to %struct.super_block*
  %84 = call i32 @destroy_fs_client(%struct.super_block* %83)
  %85 = load %struct.super_block*, %struct.super_block** %10, align 8
  %86 = call %struct.super_block* @ceph_sb_to_client(%struct.super_block* %85)
  %87 = bitcast %struct.super_block* %86 to %struct.ceph_fs_client*
  store %struct.ceph_fs_client* %87, %struct.ceph_fs_client** %11, align 8
  %88 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %89 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_fs_client* %88)
  br label %104

90:                                               ; preds = %75
  %91 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %92 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.ceph_fs_client* %91)
  %93 = load %struct.super_block*, %struct.super_block** %10, align 8
  %94 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %95 = bitcast %struct.ceph_fs_client* %94 to %struct.super_block*
  %96 = call i32 @ceph_setup_bdi(%struct.super_block* %93, %struct.super_block* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  %101 = call %struct.super_block* @ERR_PTR(i32 %100)
  %102 = bitcast %struct.super_block* %101 to %struct.dentry*
  store %struct.dentry* %102, %struct.dentry** %12, align 8
  br label %125

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %106 = bitcast %struct.ceph_fs_client* %105 to %struct.super_block*
  %107 = call %struct.super_block* @ceph_real_mount(%struct.super_block* %106)
  %108 = bitcast %struct.super_block* %107 to %struct.dentry*
  store %struct.dentry* %108, %struct.dentry** %12, align 8
  %109 = load %struct.dentry*, %struct.dentry** %12, align 8
  %110 = bitcast %struct.dentry* %109 to %struct.super_block*
  %111 = call i64 @IS_ERR(%struct.super_block* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %125

114:                                              ; preds = %104
  %115 = load %struct.dentry*, %struct.dentry** %12, align 8
  %116 = load %struct.dentry*, %struct.dentry** %12, align 8
  %117 = bitcast %struct.dentry* %116 to %struct.super_block*
  %118 = call i32 @d_inode(%struct.super_block* %117)
  %119 = load %struct.dentry*, %struct.dentry** %12, align 8
  %120 = bitcast %struct.dentry* %119 to %struct.super_block*
  %121 = call i32 @d_inode(%struct.super_block* %120)
  %122 = call i32 @ceph_vinop(i32 %121)
  %123 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %115, i32 %118, i32 %122)
  %124 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %124, %struct.dentry** %5, align 8
  br label %142

125:                                              ; preds = %113, %99
  %126 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %127 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ceph_mdsc_close_sessions(i32 %128)
  %130 = load %struct.super_block*, %struct.super_block** %10, align 8
  %131 = call i32 @deactivate_locked_super(%struct.super_block* %130)
  br label %136

132:                                              ; preds = %71, %48
  %133 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %11, align 8
  %134 = bitcast %struct.ceph_fs_client* %133 to %struct.super_block*
  %135 = call i32 @destroy_fs_client(%struct.super_block* %134)
  br label %136

136:                                              ; preds = %132, %125, %37, %24
  %137 = load %struct.dentry*, %struct.dentry** %12, align 8
  %138 = bitcast %struct.dentry* %137 to %struct.super_block*
  %139 = call %struct.super_block* @PTR_ERR(%struct.super_block* %138)
  %140 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.super_block* %139)
  %141 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %141, %struct.dentry** %5, align 8
  br label %142

142:                                              ; preds = %136, %114
  %143 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %143
}

declare dso_local i32 @ceph_compare_super(%struct.super_block*, i8*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @parse_mount_options(%struct.ceph_mount_options**, %struct.ceph_options**, i32, i8*, i8*) #1

declare dso_local %struct.super_block* @ERR_PTR(i32) #1

declare dso_local %struct.super_block* @create_fs_client(%struct.ceph_mount_options*, %struct.ceph_options*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @ERR_CAST(%struct.super_block*) #1

declare dso_local i32 @ceph_mdsc_init(%struct.super_block*) #1

declare dso_local i64 @ceph_test_opt(i32, i32) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32 (%struct.super_block*, i8*)*, i32, i32, %struct.super_block*) #1

declare dso_local %struct.super_block* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @destroy_fs_client(%struct.super_block*) #1

declare dso_local i32 @ceph_setup_bdi(%struct.super_block*, %struct.super_block*) #1

declare dso_local %struct.super_block* @ceph_real_mount(%struct.super_block*) #1

declare dso_local i32 @d_inode(%struct.super_block*) #1

declare dso_local i32 @ceph_vinop(i32) #1

declare dso_local i32 @ceph_mdsc_close_sessions(i32) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local %struct.super_block* @PTR_ERR(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
