; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.cifs_fattr = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"looking for uniqueid=%llu\0A\00", align 1
@cifs_find_inode = common dso_local global i32 0, align 4
@cifs_init_inode = common dso_local global i32 0, align 4
@CIFS_FATTR_INO_COLLISION = common dso_local global i32 0, align 4
@ROOT_I = common dso_local global i32 0, align 4
@SB_NOATIME = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @cifs_iget(%struct.super_block* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* @FYI, align 4
  %9 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %10 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cifs_dbg(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @cifs_uniqueid_to_ino_t(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @cifs_find_inode, align 4
  %20 = load i32, i32* @cifs_init_inode, align 4
  %21 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %22 = call %struct.inode* @iget5_locked(%struct.super_block* %17, i64 %18, i32 %19, i32 %20, %struct.cifs_fattr* %21)
  store %struct.inode* %22, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %7
  %26 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %27 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CIFS_FATTR_INO_COLLISION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load i32, i32* @CIFS_FATTR_INO_COLLISION, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i64 @inode_has_hashed_dentries(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = call i32 @CIFS_SB(%struct.super_block* %43)
  %45 = call i32 @cifs_autodisable_serverino(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @iput(%struct.inode* %46)
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = load i32, i32* @ROOT_I, align 4
  %50 = call i32 @iunique(%struct.super_block* %48, i32 %49)
  %51 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %52 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %7

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %57 = call i32 @cifs_fattr_to_inode(%struct.inode* %55, %struct.cifs_fattr* %56)
  %58 = load %struct.super_block*, %struct.super_block** %3, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SB_NOATIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @S_NOATIME, align 4
  %66 = load i32, i32* @S_NOCMTIME, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %64, %54
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I_NEW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @unlock_new_inode(%struct.inode* %83)
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %7
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %87
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i64 @cifs_uniqueid_to_ino_t(i32) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.cifs_fattr*) #1

declare dso_local i64 @inode_has_hashed_dentries(%struct.inode*) #1

declare dso_local i32 @cifs_autodisable_serverino(i32) #1

declare dso_local i32 @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
