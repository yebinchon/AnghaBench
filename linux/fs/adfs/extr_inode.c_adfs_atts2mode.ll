; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_atts2mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_atts2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.adfs_sb_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ADFS_NDA_DIRECTORY = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_READ = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_WRITE = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_READ = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @adfs_atts2mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_atts2mode(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %14)
  store %struct.adfs_sb_info* %15, %struct.adfs_sb_info** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ADFS_NDA_DIRECTORY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @S_IRUGO, align 4
  %22 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %9, align 8
  %23 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = load i32, i32* @S_IXUGO, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  br label %102

31:                                               ; preds = %2
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @adfs_filetype(i32 %35)
  switch i32 %36, label %45 [
    i32 4032, label %37
    i32 4070, label %41
  ]

37:                                               ; preds = %31
  %38 = load i32, i32* @S_IFLNK, align 4
  %39 = load i32, i32* @S_IRWXUGO, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %102

41:                                               ; preds = %31
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = load i32, i32* @S_IXUGO, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @S_IRUGO, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* @S_IFREG, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ADFS_NDA_OWNER_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %9, align 8
  %56 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %47
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ADFS_NDA_OWNER_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @S_IWUGO, align 4
  %68 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %9, align 8
  %69 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ADFS_NDA_PUBLIC_READ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %9, align 8
  %82 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %79, %74
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @ADFS_NDA_PUBLIC_WRITE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* @S_IWUGO, align 4
  %94 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %9, align 8
  %95 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %37, %20
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @adfs_filetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
