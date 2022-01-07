; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_mtd_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_mtd_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__*, %struct.cramfs_sb_info* }
%struct.TYPE_3__ = type { i32 }
%struct.cramfs_sb_info = type { i32, i32, i32, i32 }
%struct.fs_context = type { i32 }
%struct.cramfs_super = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unable to get direct memory access to mtd:%s\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"checking physical address %pap for linear cramfs image\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"linear cramfs image on mtd:%s appears to be %lu KB in size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @cramfs_mtd_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_mtd_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.cramfs_sb_info*, align 8
  %7 = alloca %struct.cramfs_super, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cramfs_sb_info* @kzalloc(i32 16, i32 %9)
  store %struct.cramfs_sb_info* %10, %struct.cramfs_sb_info** %6, align 8
  %11 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %12 = icmp ne %struct.cramfs_sb_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %124

16:                                               ; preds = %2
  %17 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  store %struct.cramfs_sb_info* %17, %struct.cramfs_sb_info** %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %24, i32 0, i32 0
  %26 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %26, i32 0, i32 3
  %28 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %28, i32 0, i32 2
  %30 = call i32 @mtd_point(%struct.TYPE_3__* %22, i32 0, i32 %23, i32* %25, i32* %27, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %16
  %34 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33, %16
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ %46, %48 ], [ %51, %49 ]
  store i32 %53, i32* %3, align 4
  br label %124

54:                                               ; preds = %33
  %55 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %56 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %55, i32 0, i32 2
  %57 = ptrtoint i32* %56 to i32
  %58 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %61 = call i32 @cramfs_read_super(%struct.super_block* %59, %struct.fs_context* %60, %struct.cramfs_super* %7)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %124

66:                                               ; preds = %54
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %73 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 1024
  %76 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = call i32 @mtd_unpoint(%struct.TYPE_3__* %79, i32 0, i32 %80)
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %86 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %89 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %88, i32 0, i32 0
  %90 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %91 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %90, i32 0, i32 3
  %92 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %93 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %92, i32 0, i32 2
  %94 = call i32 @mtd_point(%struct.TYPE_3__* %84, i32 0, i32 %87, i32* %89, i32* %91, i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %66
  %98 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %99 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %102 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %97, %66
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %118

115:                                              ; preds = %105
  %116 = load i32, i32* @ENODATA, align 4
  %117 = sub nsw i32 0, %116
  br label %118

118:                                              ; preds = %115, %114
  %119 = phi i32 [ %112, %114 ], [ %117, %115 ]
  store i32 %119, i32* %3, align 4
  br label %124

120:                                              ; preds = %97
  %121 = load %struct.super_block*, %struct.super_block** %4, align 8
  %122 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %7, i32 0, i32 0
  %123 = call i32 @cramfs_finalize_super(%struct.super_block* %121, i32* %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %118, %64, %52, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.cramfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mtd_point(%struct.TYPE_3__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @cramfs_read_super(%struct.super_block*, %struct.fs_context*, %struct.cramfs_super*) #1

declare dso_local i32 @mtd_unpoint(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @cramfs_finalize_super(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
