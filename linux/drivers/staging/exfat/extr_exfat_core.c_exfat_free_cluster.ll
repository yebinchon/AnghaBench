; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_free_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_free_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64, i32 }
%struct.fs_info_t = type { i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@.str = private unnamed_addr constant [78 x i8] c"[EXFAT] free_cluster : skip free-req clu:%u, because of zero-size truncation\0A\00", align 1
@FFS_SUCCESS = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exfat_free_cluster(%struct.super_block* %0, %struct.chain_t* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.chain_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fs_info_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.chain_t* %1, %struct.chain_t** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.fs_info_t* %14, %struct.fs_info_t** %9, align 8
  %15 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %16 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @CLUSTER_32(i32 0)
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %22 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @CLUSTER_32(i32 -1)
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %3
  br label %161

27:                                               ; preds = %20
  %28 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %29 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %34 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %161

37:                                               ; preds = %27
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call i32 @__set_sb_dirty(%struct.super_block* %38)
  %40 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %41 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %44 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %91

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %84, %47
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @START_SECTOR(i64 %52)
  store i64 %53, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %67, %51
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %57 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i32 @buf_release(%struct.super_block* %61, i64 %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %73, 2
  %75 = call i64 @clr_alloc_bitmap(%struct.super_block* %72, i64 %74)
  %76 = load i64, i64* @FFS_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %90

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %7, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %87 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %48, label %90

90:                                               ; preds = %84, %78
  br label %149

91:                                               ; preds = %37
  br label %92

92:                                               ; preds = %146, %91
  %93 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %94 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %148

98:                                               ; preds = %92
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @START_SECTOR(i64 %102)
  store i64 %103, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %117, %101
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %107 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.super_block*, %struct.super_block** %4, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = call i32 @buf_release(%struct.super_block* %111, i64 %115)
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %104

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.super_block*, %struct.super_block** %4, align 8
  %123 = load i64, i64* %8, align 8
  %124 = sub nsw i64 %123, 2
  %125 = call i64 @clr_alloc_bitmap(%struct.super_block* %122, i64 %124)
  %126 = load i64, i64* @FFS_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %148

129:                                              ; preds = %121
  %130 = load %struct.super_block*, %struct.super_block** %4, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @FAT_read(%struct.super_block* %130, i64 %131, i64* %8)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %148

135:                                              ; preds = %129
  %136 = load i64, i64* %7, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %135
  %139 = load i64, i64* %8, align 8
  %140 = call i64 @CLUSTER_32(i32 0)
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @CLUSTER_32(i32 -1)
  %145 = icmp ne i64 %143, %144
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i1 [ false, %138 ], [ %145, %142 ]
  br i1 %147, label %92, label %148

148:                                              ; preds = %146, %134, %128, %97
  br label %149

149:                                              ; preds = %148, %90
  %150 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %151 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @UINT_MAX, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %158 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %159, %156
  store i64 %160, i64* %158, align 8
  br label %161

161:                                              ; preds = %26, %32, %155, %149
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @__set_sb_dirty(%struct.super_block*) #1

declare dso_local i64 @START_SECTOR(i64) #1

declare dso_local i32 @buf_release(%struct.super_block*, i64) #1

declare dso_local i64 @clr_alloc_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
