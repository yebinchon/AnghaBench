; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_sclp_sd_store_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_sd.c_sclp_sd_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_sd_data = type { i64, i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SD_EQ_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@SD_EQ_STORE_DATA = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SD_EQ_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_sd_data*, i32)* @sclp_sd_store_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_sd_store_data(%struct.sclp_sd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_sd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sclp_sd_data* %0, %struct.sclp_sd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @__get_free_page(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @SD_EQ_SIZE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sclp_sd_sync(i64 %22, i32 %23, i32 %24, i64 0, i32 0, i64* %6, i64* %7)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %93

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %79

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = call i32 @array_size(i64 %34, i64 %35)
  %37 = call i8* @vzalloc(i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %93

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @base_asce_alloc(i64 %45, i64 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @vfree(i8* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %93

55:                                               ; preds = %43
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* @SD_EQ_STORE_DATA, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = call i32 @sclp_sd_sync(i64 %56, i32 %57, i32 %58, i64 %59, i32 %61, i64* %6, i64* %7)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @SD_EQ_HALT, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @sclp_sd_sync(i64 %71, i32 %72, i32 %73, i64 0, i32 0, i64* null, i64* null)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @vfree(i8* %76)
  br label %93

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = mul i64 %80, %81
  %83 = load %struct.sclp_sd_data*, %struct.sclp_sd_data** %4, align 8
  %84 = getelementptr inbounds %struct.sclp_sd_data, %struct.sclp_sd_data* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @PAGE_SIZE, align 8
  %87 = mul i64 %85, %86
  %88 = load %struct.sclp_sd_data*, %struct.sclp_sd_data** %4, align 8
  %89 = getelementptr inbounds %struct.sclp_sd_data, %struct.sclp_sd_data* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.sclp_sd_data*, %struct.sclp_sd_data** %4, align 8
  %92 = getelementptr inbounds %struct.sclp_sd_data, %struct.sclp_sd_data* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %79, %75, %50, %40, %28
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @base_asce_free(i64 %94)
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @free_page(i64 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @sclp_sd_sync(i64, i32, i32, i64, i32, i64*, i64*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @array_size(i64, i64) #1

declare dso_local i64 @base_asce_alloc(i64, i64) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @base_asce_free(i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
