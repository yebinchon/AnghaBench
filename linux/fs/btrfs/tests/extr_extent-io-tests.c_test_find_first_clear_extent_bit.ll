; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_find_first_clear_extent_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_find_first_clear_extent_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"running find_first_clear_extent_bit test\00", align 1
@IO_TREE_SELFTEST = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@SZ_4M = common dso_local global i32 0, align 4
@CHUNK_TRIMMED = common dso_local global i32 0, align 4
@CHUNK_ALLOCATED = common dso_local global i32 0, align 4
@SZ_512K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"error finding beginning range: start %llu end %llu\00", align 1
@SZ_32M = common dso_local global i32 0, align 4
@SZ_64M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"error finding trimmed range: start %llu end %llu\00", align 1
@SZ_2M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"error finding next unalloc range: start %llu end %llu\00", align 1
@SZ_8M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"error finding exact range: start %llu end %llu\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"error finding next alloc range: start %llu end %llu\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"error handling beyond end of range search: start %llu end %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_find_first_clear_extent_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_find_first_clear_extent_bit() #0 {
  %1 = alloca %struct.extent_io_tree, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 @test_msg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @IO_TREE_SELFTEST, align 4
  %9 = call i32 @extent_io_tree_init(i32* null, %struct.extent_io_tree* %1, i32 %8, i32* null)
  %10 = load i32, i32* @SZ_1M, align 4
  %11 = load i32, i32* @SZ_4M, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @CHUNK_TRIMMED, align 4
  %14 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @set_extent_bits(%struct.extent_io_tree* %1, i32 %10, i32 %12, i32 %15)
  %17 = load i32, i32* @SZ_512K, align 4
  %18 = load i32, i32* @CHUNK_TRIMMED, align 4
  %19 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 %17, i32* %2, i32* %3, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SZ_1M, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %0
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @test_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %140

33:                                               ; preds = %24
  %34 = load i32, i32* @SZ_32M, align 4
  %35 = load i32, i32* @SZ_64M, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @CHUNK_TRIMMED, align 4
  %38 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @set_extent_bits(%struct.extent_io_tree* %1, i32 %34, i32 %36, i32 %39)
  %41 = load i32, i32* @SZ_1M, align 4
  %42 = mul nsw i32 12, %41
  %43 = load i32, i32* @CHUNK_TRIMMED, align 4
  %44 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 %42, i32* %2, i32* %3, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @SZ_4M, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SZ_32M, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @test_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  br label %140

59:                                               ; preds = %50
  %60 = load i32, i32* @SZ_2M, align 4
  %61 = load i32, i32* @CHUNK_TRIMMED, align 4
  %62 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 %60, i32* %2, i32* %3, i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @SZ_4M, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @SZ_32M, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68, %59
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @test_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  br label %140

77:                                               ; preds = %68
  %78 = load i32, i32* @SZ_64M, align 4
  %79 = load i32, i32* @SZ_64M, align 4
  %80 = load i32, i32* @SZ_8M, align 4
  %81 = add nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %84 = call i32 @set_extent_bits(%struct.extent_io_tree* %1, i32 %78, i32 %82, i32 %83)
  %85 = load i32, i32* @SZ_64M, align 4
  %86 = load i32, i32* @SZ_1M, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @CHUNK_TRIMMED, align 4
  %89 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 %87, i32* %2, i32* %3, i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @SZ_64M, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SZ_64M, align 4
  %96 = load i32, i32* @SZ_8M, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93, %77
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @test_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %102)
  br label %140

104:                                              ; preds = %93
  %105 = load i32, i32* @SZ_64M, align 4
  %106 = load i32, i32* @SZ_8M, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* @CHUNK_TRIMMED, align 4
  %109 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 %107, i32* %2, i32* %3, i32 %108)
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @SZ_64M, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SZ_64M, align 4
  %116 = load i32, i32* @SZ_8M, align 4
  %117 = add nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113, %104
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @test_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122)
  br label %140

124:                                              ; preds = %113
  %125 = load i32, i32* @CHUNK_TRIMMED, align 4
  %126 = call i32 @find_first_clear_extent_bit(%struct.extent_io_tree* %1, i32 -1, i32* %2, i32* %3, i32 %125)
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @SZ_64M, align 4
  %129 = load i32, i32* @SZ_8M, align 4
  %130 = add nsw i32 %128, %129
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %139

135:                                              ; preds = %132, %124
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @test_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %136, i32 %137)
  br label %140

139:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %135, %120, %100, %73, %55, %29
  %141 = load i32, i32* @CHUNK_TRIMMED, align 4
  %142 = load i32, i32* @CHUNK_ALLOCATED, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @clear_extent_bits(%struct.extent_io_tree* %1, i32 0, i32 -1, i32 %143)
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @extent_io_tree_init(i32*, %struct.extent_io_tree*, i32, i32*) #1

declare dso_local i32 @set_extent_bits(%struct.extent_io_tree*, i32, i32, i32) #1

declare dso_local i32 @find_first_clear_extent_bit(%struct.extent_io_tree*, i32, i32*, i32*, i32) #1

declare dso_local i32 @test_err(i8*, i32, i32) #1

declare dso_local i32 @clear_extent_bits(%struct.extent_io_tree*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
