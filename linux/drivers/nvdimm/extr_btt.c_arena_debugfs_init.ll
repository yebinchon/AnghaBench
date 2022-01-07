; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"arena%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"external_lba_start\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"internal_nlba\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"internal_lbasize\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"external_nlba\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"external_lbasize\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nfree\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"version_major\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"version_minor\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nextoff\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"infooff\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"dataoff\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"mapoff\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"logoff\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"info2off\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"log_index_0\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"log_index_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arena_info*, %struct.dentry*, i32)* @arena_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_debugfs_init(%struct.arena_info* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.arena_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.dentry*, align 8
  store %struct.arena_info* %0, %struct.arena_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %121

12:                                               ; preds = %3
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @snprintf(i8* %13, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call %struct.dentry* @debugfs_create_dir(i8* %16, %struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %121

23:                                               ; preds = %12
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %26 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %25, i32 0, i32 17
  store %struct.dentry* %24, %struct.dentry** %26, align 8
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %30 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %29, i32 0, i32 16
  %31 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27, %struct.dentry* %28, i32* %30)
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %35 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %34, i32 0, i32 15
  %36 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32, %struct.dentry* %33, i32* %35)
  %37 = load i32, i32* @S_IRUGO, align 4
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %40 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %39, i32 0, i32 14
  %41 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %37, %struct.dentry* %38, i32* %40)
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %45 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %44, i32 0, i32 13
  %46 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %42, %struct.dentry* %43, i32* %45)
  %47 = load i32, i32* @S_IRUGO, align 4
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %50 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %49, i32 0, i32 12
  %51 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %47, %struct.dentry* %48, i32* %50)
  %52 = load i32, i32* @S_IRUGO, align 4
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %55 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %54, i32 0, i32 11
  %56 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %52, %struct.dentry* %53, i32* %55)
  %57 = load i32, i32* @S_IRUGO, align 4
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %60 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %59, i32 0, i32 10
  %61 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %57, %struct.dentry* %58, i32* %60)
  %62 = load i32, i32* @S_IRUGO, align 4
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %65 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %64, i32 0, i32 9
  %66 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %62, %struct.dentry* %63, i32* %65)
  %67 = load i32, i32* @S_IRUGO, align 4
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %70 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %69, i32 0, i32 8
  %71 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %67, %struct.dentry* %68, i32* %70)
  %72 = load i32, i32* @S_IRUGO, align 4
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %75 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %74, i32 0, i32 7
  %76 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %72, %struct.dentry* %73, i32* %75)
  %77 = load i32, i32* @S_IRUGO, align 4
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %80 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %79, i32 0, i32 6
  %81 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %77, %struct.dentry* %78, i32* %80)
  %82 = load i32, i32* @S_IRUGO, align 4
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  %84 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %85 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %84, i32 0, i32 5
  %86 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %82, %struct.dentry* %83, i32* %85)
  %87 = load i32, i32* @S_IRUGO, align 4
  %88 = load %struct.dentry*, %struct.dentry** %8, align 8
  %89 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %90 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %89, i32 0, i32 4
  %91 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %87, %struct.dentry* %88, i32* %90)
  %92 = load i32, i32* @S_IRUGO, align 4
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %95 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %94, i32 0, i32 3
  %96 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %92, %struct.dentry* %93, i32* %95)
  %97 = load i32, i32* @S_IRUGO, align 4
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %100 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %99, i32 0, i32 2
  %101 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %97, %struct.dentry* %98, i32* %100)
  %102 = load i32, i32* @S_IRUGO, align 4
  %103 = load %struct.dentry*, %struct.dentry** %8, align 8
  %104 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %105 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %104, i32 0, i32 1
  %106 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %102, %struct.dentry* %103, i32* %105)
  %107 = load i32, i32* @S_IRUGO, align 4
  %108 = load %struct.dentry*, %struct.dentry** %8, align 8
  %109 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %110 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %107, %struct.dentry* %108, i32* %112)
  %114 = load i32, i32* @S_IRUGO, align 4
  %115 = load %struct.dentry*, %struct.dentry** %8, align 8
  %116 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %117 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %114, %struct.dentry* %115, i32* %119)
  br label %121

121:                                              ; preds = %23, %22, %11
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_x64(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
