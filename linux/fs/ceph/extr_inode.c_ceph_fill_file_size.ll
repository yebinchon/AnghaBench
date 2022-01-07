; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_fill_file_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_fill_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.ceph_inode_info = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"size %lld -> %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"fill_file_size non-zero size for directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"truncate_seq %u -> %u\0A\00", align 1
@CEPH_CAP_FILE_EXCL = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"truncate_size %lld -> %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_fill_file_size(%struct.inode* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ceph_inode_info*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %13)
  store %struct.ceph_inode_info* %14, %struct.ceph_inode_info** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ceph_seq_cmp(i64 %15, i64 %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %107

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %107

33:                                               ; preds = %27, %5
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %47, %41, %33
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @i_size_write(%struct.inode* %50, i64 %51)
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @calc_inode_blocks(i64 %53)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %59 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %62 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %49
  %66 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %67 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %73 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @CEPH_CAP_FILE_EXCL, align 4
  %76 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %74, %81
  %83 = call i32 @WARN_ON_ONCE(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %86 = load i32, i32* @CEPH_CAP_FILE_BUFFER, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %65
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @mapping_mapped(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %98 = call i64 @__ceph_caps_file_wanted(%struct.ceph_inode_info* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %90, %65
  %101 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %102 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  store i32 1, i32* %12, align 4
  br label %105

105:                                              ; preds = %100, %96
  br label %106

106:                                              ; preds = %105, %49
  br label %107

107:                                              ; preds = %106, %27, %21
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %110 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @ceph_seq_cmp(i64 %108, i64 %111)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %116 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %122 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %123, i64 %124)
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %128 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %114, %107
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = call i32 @ceph_fscache_invalidate(%struct.inode* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %12, align 4
  ret i32 %136
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @ceph_seq_cmp(i64, i64) #1

declare dso_local i32 @dout(i8*, i64, i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @calc_inode_blocks(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @mapping_mapped(i32) #1

declare dso_local i64 @__ceph_caps_file_wanted(%struct.ceph_inode_info*) #1

declare dso_local i32 @ceph_fscache_invalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
