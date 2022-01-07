; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_clear_poison.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_clear_poison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmem_device = type { i32, i32, i32, i64, i32 }
%struct.device = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%#llx clear %ld sector%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmem_device*, i32, i32)* @pmem_clear_poison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmem_clear_poison(%struct.pmem_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pmem_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pmem_device* %0, %struct.pmem_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %12 = call %struct.device* @to_dev(%struct.pmem_device* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %16 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  %19 = sdiv i32 %18, 512
  store i32 %19, i32* %8, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %22 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @nvdimm_clear_poison(%struct.device* %20, i32 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %3
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = sdiv i64 %38, 512
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %43 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %44 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @hwpoison_clear(%struct.pmem_device* %42, i32 %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = sdiv i64 %50, 512
  store i64 %51, i64* %9, align 8
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55, i8* %59)
  %61 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %62 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %61, i32 0, i32 4
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @badblocks_clear(i32* %62, i32 %63, i64 %64)
  %66 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %67 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %41
  %71 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %72 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @sysfs_notify_dirent(i64 %73)
  br label %75

75:                                               ; preds = %70, %41
  br label %76

76:                                               ; preds = %75, %37, %34
  %77 = load %struct.pmem_device*, %struct.pmem_device** %4, align 8
  %78 = getelementptr inbounds %struct.pmem_device, %struct.pmem_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @arch_invalidate_pmem(i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local %struct.device* @to_dev(%struct.pmem_device*) #1

declare dso_local i64 @nvdimm_clear_poison(%struct.device*, i32, i32) #1

declare dso_local i32 @hwpoison_clear(%struct.pmem_device*, i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i8*) #1

declare dso_local i32 @badblocks_clear(i32*, i32, i64) #1

declare dso_local i32 @sysfs_notify_dirent(i64) #1

declare dso_local i32 @arch_invalidate_pmem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
