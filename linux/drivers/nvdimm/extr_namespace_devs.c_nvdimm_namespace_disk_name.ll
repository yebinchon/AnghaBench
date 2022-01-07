; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nvdimm_namespace_disk_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_nvdimm_namespace_disk_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_common = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.nd_region = type { i32 }
%struct.nd_namespace_pmem = type { i32 }
%struct.nd_namespace_blk = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pmem%d.%d%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pmem%d%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ndblk%d.%d%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvdimm_namespace_disk_name(%struct.nd_namespace_common* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nd_namespace_common*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_namespace_pmem*, align 8
  %10 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.nd_namespace_common* %0, %struct.nd_namespace_common** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %12 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nd_region* @to_nd_region(i32 %14)
  store %struct.nd_region* %15, %struct.nd_region** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %17 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %22 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @is_nd_btt(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %20, %2
  %28 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %29 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %28, i32 0, i32 0
  %30 = call i64 @is_namespace_pmem(%struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %34 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %33, i32 0, i32 0
  %35 = call i64 @is_namespace_io(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %32, %27
  store i32 0, i32* %8, align 4
  %38 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %39 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %38, i32 0, i32 0
  %40 = call i64 @is_namespace_pmem(%struct.TYPE_6__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %44 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %43, i32 0, i32 0
  %45 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.TYPE_6__* %44)
  store %struct.nd_namespace_pmem* %45, %struct.nd_namespace_pmem** %9, align 8
  %46 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %9, align 8
  %47 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %55 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** %7, align 8
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %62 ]
  %65 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i8* %64)
  br label %79

66:                                               ; preds = %49
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %69 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i8*, i8** %7, align 8
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i8* [ %74, %73 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %75 ]
  %78 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %77)
  br label %79

79:                                               ; preds = %76, %63
  br label %106

80:                                               ; preds = %32
  %81 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %82 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %81, i32 0, i32 0
  %83 = call i64 @is_namespace_blk(%struct.TYPE_6__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %87 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %86, i32 0, i32 0
  %88 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.TYPE_6__* %87)
  store %struct.nd_namespace_blk* %88, %struct.nd_namespace_blk** %10, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %91 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %10, align 8
  %94 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i8*, i8** %7, align 8
  br label %101

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i8* [ %99, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %100 ]
  %103 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %95, i8* %102)
  br label %105

104:                                              ; preds = %80
  store i8* null, i8** %3, align 8
  br label %108

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %79
  %107 = load i8*, i8** %5, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i64 @is_nd_btt(i64) #1

declare dso_local i64 @is_namespace_pmem(%struct.TYPE_6__*) #1

declare dso_local i64 @is_namespace_io(%struct.TYPE_6__*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.TYPE_6__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @is_namespace_blk(%struct.TYPE_6__*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
