; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_sgl_map_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_sgl_map_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_buffer = type { %struct.page**, %struct.rq_map_data }
%struct.page = type { i32 }
%struct.rq_map_data = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_buffer*, i32, i64, i64, i32)* @sgl_map_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgl_map_user_pages(%struct.st_buffer* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page**, align 8
  %19 = alloca %struct.rq_map_data*, align 8
  store %struct.st_buffer* %0, %struct.st_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load %struct.st_buffer*, %struct.st_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %35, i32 0, i32 1
  store %struct.rq_map_data* %36, %struct.rq_map_data** %19, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %131

45:                                               ; preds = %5
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %131

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %131

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.page** @kmalloc_array(i32 %57, i32 8, i32 %58)
  store %struct.page** %59, %struct.page*** %18, align 8
  %60 = load %struct.page**, %struct.page*** %18, align 8
  %61 = icmp eq %struct.page** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %131

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @READ, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @FOLL_WRITE, align 4
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load %struct.page**, %struct.page*** %18, align 8
  %77 = call i32 @get_user_pages_fast(i64 %66, i32 %67, i32 %75, %struct.page** %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %108

82:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.page**, %struct.page*** %18, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.page*, %struct.page** %88, i64 %90
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = call i32 @flush_dcache_page(%struct.page* %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %83

97:                                               ; preds = %83
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @PAGE_MASK, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  %102 = load %struct.rq_map_data*, %struct.rq_map_data** %19, align 8
  %103 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.page**, %struct.page*** %18, align 8
  %105 = load %struct.st_buffer*, %struct.st_buffer** %7, align 8
  %106 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %105, i32 0, i32 0
  store %struct.page** %104, %struct.page*** %106, align 8
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %131

108:                                              ; preds = %81
  %109 = load i32, i32* %15, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load %struct.page**, %struct.page*** %18, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.page*, %struct.page** %117, i64 %119
  %121 = load %struct.page*, %struct.page** %120, align 8
  %122 = call i32 @put_page(%struct.page* %121)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %112

126:                                              ; preds = %112
  store i32 0, i32* %15, align 4
  br label %127

127:                                              ; preds = %126, %108
  %128 = load %struct.page**, %struct.page*** %18, align 8
  %129 = call i32 @kfree(%struct.page** %128)
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %97, %62, %55, %49, %42
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
