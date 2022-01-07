; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_load_upcase_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_load_upcase_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32 }
%struct.case_dentry_t = type { i32, i32, i32 }
%struct.fs_info_t = type { i64, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.dentry_t = type { i32 }
%struct.bd_info_t = type { i64 }
%struct.TYPE_4__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_MEDIAERR = common dso_local global i64 0, align 8
@TYPE_UNUSED = common dso_local global i64 0, align 8
@TYPE_UPCASE = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @load_upcase_table(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.chain_t, align 8
  %11 = alloca %struct.case_dentry_t*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  %13 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.fs_info_t* %16, %struct.fs_info_t** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.bd_info_t* %19, %struct.bd_info_t** %13, align 8
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %26 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %30, i64* %2, align 8
  br label %118

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %114, %31
  %33 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @CLUSTER_32(i32 -1)
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %115

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %102, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %41 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %38
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @get_entry_in_dir(%struct.super_block* %45, %struct.chain_t* %10, i32 %46, i32* null)
  %48 = inttoptr i64 %47 to %struct.case_dentry_t*
  store %struct.case_dentry_t* %48, %struct.case_dentry_t** %11, align 8
  %49 = load %struct.case_dentry_t*, %struct.case_dentry_t** %11, align 8
  %50 = icmp ne %struct.case_dentry_t* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %52, i64* %2, align 8
  br label %118

53:                                               ; preds = %44
  %54 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %55 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %57, align 8
  %59 = load %struct.case_dentry_t*, %struct.case_dentry_t** %11, align 8
  %60 = bitcast %struct.case_dentry_t* %59 to %struct.dentry_t*
  %61 = call i64 %58(%struct.dentry_t* %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @TYPE_UNUSED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %105

66:                                               ; preds = %53
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @TYPE_UPCASE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %102

71:                                               ; preds = %66
  %72 = load %struct.case_dentry_t*, %struct.case_dentry_t** %11, align 8
  %73 = getelementptr inbounds %struct.case_dentry_t, %struct.case_dentry_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @GET32_A(i32 %74)
  store i64 %75, i64* %5, align 8
  %76 = load %struct.case_dentry_t*, %struct.case_dentry_t** %11, align 8
  %77 = getelementptr inbounds %struct.case_dentry_t, %struct.case_dentry_t* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @GET64_A(i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @START_SECTOR(i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %85 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = ashr i64 %83, %86
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %9, align 8
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.case_dentry_t*, %struct.case_dentry_t** %11, align 8
  %93 = getelementptr inbounds %struct.case_dentry_t, %struct.case_dentry_t* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @GET32_A(i32 %94)
  %96 = call i64 @__load_upcase_table(%struct.super_block* %89, i32 %90, i64 %91, i64 %95)
  %97 = load i64, i64* @FFS_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  br label %105

100:                                              ; preds = %71
  %101 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %101, i64* %2, align 8
  br label %118

102:                                              ; preds = %70
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %38

105:                                              ; preds = %99, %65, %38
  %106 = load %struct.super_block*, %struct.super_block** %3, align 8
  %107 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %10, i32 0, i32 0
  %110 = call i64 @FAT_read(%struct.super_block* %106, i64 %108, i64* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %113, i64* %2, align 8
  br label %118

114:                                              ; preds = %105
  br label %32

115:                                              ; preds = %32
  %116 = load %struct.super_block*, %struct.super_block** %3, align 8
  %117 = call i64 @__load_default_upcase_table(%struct.super_block* %116)
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %115, %112, %100, %51, %29
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i64 @GET32_A(i32) #1

declare dso_local i64 @GET64_A(i32) #1

declare dso_local i32 @START_SECTOR(i64) #1

declare dso_local i64 @__load_upcase_table(%struct.super_block*, i32, i64, i64) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i64 @__load_default_upcase_table(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
