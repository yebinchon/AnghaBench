; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_allocate_sgl_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_rd.c_rd_allocate_sgl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_dev = type { i32 }
%struct.rd_dev_sg_table = type { i64, i64, i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@RD_MAX_ALLOCATION_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Unable to allocate scatterlist pages for struct rd_dev_sg_table\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rd_dev*, %struct.rd_dev_sg_table*, i64, i8)* @rd_allocate_sgl_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_allocate_sgl_table(%struct.rd_dev* %0, %struct.rd_dev_sg_table* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rd_dev*, align 8
  %7 = alloca %struct.rd_dev_sg_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.rd_dev* %0, %struct.rd_dev** %6, align 8
  store %struct.rd_dev_sg_table* %1, %struct.rd_dev_sg_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* @RD_MAX_ALLOCATION_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  store i64 %21, i64* %14, align 8
  br label %22

22:                                               ; preds = %131, %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %138

25:                                               ; preds = %22
  store i32 0, i32* %18, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* %14, align 8
  br label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %18, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %18, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.scatterlist* @kcalloc(i64 %43, i32 4, i32 %44)
  store %struct.scatterlist* %45, %struct.scatterlist** %16, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %47 = icmp ne %struct.scatterlist* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %139

51:                                               ; preds = %39
  %52 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %18, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @sg_init_table(%struct.scatterlist* %52, i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %61, i64 %63
  %65 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %64, i32 0, i32 3
  %66 = load %struct.scatterlist*, %struct.scatterlist** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %70 = call i32 @sg_chain(%struct.scatterlist* %66, i64 %68, %struct.scatterlist* %69)
  br label %71

71:                                               ; preds = %60, %51
  %72 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %73 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %73, i64 %74
  %76 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %75, i32 0, i32 3
  store %struct.scatterlist* %72, %struct.scatterlist** %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %78, i64 %79
  %81 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %80, i32 0, i32 2
  store i64 %77, i64* %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %83, i64 %84
  %86 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %87, %88
  %90 = sub nsw i64 %89, 1
  %91 = load %struct.rd_dev_sg_table*, %struct.rd_dev_sg_table** %7, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  %94 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %91, i64 %92
  %95 = getelementptr inbounds %struct.rd_dev_sg_table, %struct.rd_dev_sg_table* %94, i32 0, i32 0
  store i64 %90, i64* %95, align 8
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %128, %71
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %131

100:                                              ; preds = %96
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.page* @alloc_pages(i32 %101, i32 0)
  store %struct.page* %102, %struct.page** %15, align 8
  %103 = load %struct.page*, %struct.page** %15, align 8
  %104 = icmp ne %struct.page* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %139

109:                                              ; preds = %100
  %110 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %110, i64 %111
  %113 = load %struct.page*, %struct.page** %15, align 8
  %114 = call i32 @sg_assign_page(%struct.scatterlist* %112, %struct.page* %113)
  %115 = load i32, i32* @PAGE_SIZE, align 4
  %116 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %116, i64 %117
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  %120 = load %struct.page*, %struct.page** %15, align 8
  %121 = call i8* @kmap(%struct.page* %120)
  store i8* %121, i8** %17, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load i8, i8* %9, align 1
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = call i32 @memset(i8* %122, i8 zeroext %123, i32 %124)
  %126 = load %struct.page*, %struct.page** %15, align 8
  %127 = call i32 @kunmap(%struct.page* %126)
  br label %128

128:                                              ; preds = %109
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %96

131:                                              ; preds = %96
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %12, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %8, align 8
  br label %22

138:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %105, %48
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.scatterlist* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i64) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i64, %struct.scatterlist*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sg_assign_page(%struct.scatterlist*, %struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
