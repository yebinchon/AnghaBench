; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___alt_name_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c___alt_name_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.nd_namespace_pmem = type { i8* }
%struct.nd_namespace_blk = type { i8* }
%struct.TYPE_2__ = type { i64 }

@ENXIO = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@NSLABEL_NAME_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64)* @__alt_name_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__alt_name_store(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nd_namespace_pmem*, align 8
  %14 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i64 @is_namespace_pmem(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device* %19)
  store %struct.nd_namespace_pmem* %20, %struct.nd_namespace_pmem** %13, align 8
  %21 = load %struct.nd_namespace_pmem*, %struct.nd_namespace_pmem** %13, align 8
  %22 = getelementptr inbounds %struct.nd_namespace_pmem, %struct.nd_namespace_pmem* %21, i32 0, i32 0
  store i8** %22, i8*** %11, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i64 @is_namespace_blk(%struct.device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device* %28)
  store %struct.nd_namespace_blk* %29, %struct.nd_namespace_blk** %14, align 8
  %30 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %14, align 8
  %31 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %30, i32 0, i32 0
  store i8** %31, i8*** %11, align 8
  br label %35

32:                                               ; preds = %23
  %33 = load i64, i64* @ENXIO, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %95

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call %struct.TYPE_2__* @to_ndns(%struct.device* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %36
  %48 = load i64, i64* @EBUSY, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %95

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kstrndup(i8* %51, i64 %52, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* @ENOMEM, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %4, align 8
  br label %95

60:                                               ; preds = %50
  %61 = load i8*, i8** %8, align 8
  %62 = call i8* @strim(i8* %61)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %64, 1
  %66 = load i64, i64* @NSLABEL_NAME_LEN, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %12, align 8
  br label %91

71:                                               ; preds = %60
  %72 = load i64, i64* @NSLABEL_NAME_LEN, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kzalloc(i64 %72, i32 %73)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* @ENOMEM, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %12, align 8
  br label %91

80:                                               ; preds = %71
  %81 = load i8**, i8*** %11, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = load i8**, i8*** %11, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i8**, i8*** %11, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %12, align 8
  br label %91

91:                                               ; preds = %80, %77, %68
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %91, %57, %47, %32
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i64 @is_namespace_pmem(%struct.device*) #1

declare dso_local %struct.nd_namespace_pmem* @to_nd_namespace_pmem(%struct.device*) #1

declare dso_local i64 @is_namespace_blk(%struct.device*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_ndns(%struct.device*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i8* @strim(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
