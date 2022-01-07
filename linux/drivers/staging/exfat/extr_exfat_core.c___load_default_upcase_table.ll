; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c___load_default_upcase_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c___load_default_upcase_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32** }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_ERROR = common dso_local global i32 0, align 4
@UTBL_COL_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FFS_MEMORYERR = common dso_local global i32 0, align 4
@NUM_UPCASE = common dso_local global i32 0, align 4
@uni_upcase = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"skip from 0x%X \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"to 0x%X (amount of 0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"alloc = 0x%X\0A\00", align 1
@UTBL_ROW_COUNT = common dso_local global i32 0, align 4
@LOW_INDEX_BIT = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @__load_default_upcase_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_default_upcase_table(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_info_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %13 = load i32, i32* @FFS_ERROR, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.fs_info_t* %16, %struct.fs_info_t** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @UTBL_COL_COUNT, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32** @kmalloc(i32 %20, i32 %21)
  %23 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %24 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %23, i32 0, i32 0
  store i32** %22, i32*** %24, align 8
  store i32** %22, i32*** %11, align 8
  %25 = load i32**, i32*** %11, align 8
  %26 = icmp ne i32** %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @FFS_MEMORYERR, align 4
  store i32 %28, i32* %2, align 4
  br label %152

29:                                               ; preds = %1
  %30 = load i32**, i32*** %11, align 8
  %31 = load i32, i32* @UTBL_COL_COUNT, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32** %30, i32 0, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %139, %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 65535
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NUM_UPCASE, align 4
  %42 = mul nsw i32 %41, 2
  %43 = icmp slt i32 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %142

46:                                               ; preds = %44
  %47 = load i64, i64* @uni_upcase, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @GET16(i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  store i32 0, i32* %8, align 4
  br label %138

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %137

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 65535
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  br label %136

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @get_col_index(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32**, i32*** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %124, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @UTBL_ROW_COUNT, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32* @kmalloc_array(i32 %86, i32 4, i32 %87)
  %89 = load i32**, i32*** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* %88, i32** %92, align 8
  %93 = load i32**, i32*** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* @FFS_MEMORYERR, align 4
  store i32 %100, i32* %5, align 4
  br label %148

101:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %120, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @UTBL_ROW_COUNT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @LOW_INDEX_BIT, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %109, %110
  %112 = load i32**, i32*** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %111, i32* %119, align 4
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %102

123:                                              ; preds = %102
  br label %124

124:                                              ; preds = %123, %74
  %125 = load i32, i32* %10, align 4
  %126 = load i32**, i32*** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @get_row_index(i32 %131)
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %125, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %124, %73
  br label %137

137:                                              ; preds = %136, %67
  br label %138

138:                                              ; preds = %137, %54
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %4, align 4
  br label %36

142:                                              ; preds = %44
  %143 = load i32, i32* %9, align 4
  %144 = icmp sge i32 %143, 65535
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %146, i32* %2, align 4
  br label %152

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %99
  %149 = load %struct.super_block*, %struct.super_block** %3, align 8
  %150 = call i32 @free_upcase_table(%struct.super_block* %149)
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %148, %145, %27
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @GET16(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @get_col_index(i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @get_row_index(i32) #1

declare dso_local i32 @free_upcase_table(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
