; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_do_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_do_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmem_device = type { i32, i32, i8* }
%struct.page = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmem_device*, %struct.page*, i32, i32, i32, i32)* @pmem_do_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmem_do_bvec(%struct.pmem_device* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pmem_device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.pmem_device* %0, %struct.pmem_device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = mul nsw i32 %18, 512
  %20 = load %struct.pmem_device*, %struct.pmem_device** %7, align 8
  %21 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %15, align 4
  %24 = load %struct.pmem_device*, %struct.pmem_device** %7, align 8
  %25 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  store i8* %29, i8** %16, align 8
  %30 = load %struct.pmem_device*, %struct.pmem_device** %7, align 8
  %31 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %30, i32 0, i32 1
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @is_bad_pmem(i32* %31, i32 %32, i32 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 1, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @op_is_write(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %47, i32* %13, align 4
  br label %56

48:                                               ; preds = %42
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @read_pmem(%struct.page* %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = call i32 @flush_dcache_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %48, %46
  br label %79

57:                                               ; preds = %38
  %58 = load %struct.page*, %struct.page** %8, align 8
  %59 = call i32 @flush_dcache_page(%struct.page* %58)
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @write_pmem(i8* %60, %struct.page* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load %struct.pmem_device*, %struct.pmem_device** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @pmem_clear_poison(%struct.pmem_device* %69, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i8*, i8** %16, align 8
  %74 = load %struct.page*, %struct.page** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @write_pmem(i8* %73, %struct.page* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %57
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_bad_pmem(i32*, i32, i32) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @read_pmem(%struct.page*, i32, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @write_pmem(i8*, %struct.page*, i32, i32) #1

declare dso_local i32 @pmem_clear_poison(%struct.pmem_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
