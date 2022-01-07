; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_badblocks_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_clear_badblocks_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clear_badblocks_context = type { i64, i32 }
%struct.nd_region = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @nvdimm_clear_badblocks_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_clear_badblocks_region(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clear_badblocks_context*, align 8
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.clear_badblocks_context*
  store %struct.clear_badblocks_context* %11, %struct.clear_badblocks_context** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @is_memory(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.nd_region* @to_nd_region(%struct.device* %17)
  store %struct.nd_region* %18, %struct.nd_region** %7, align 8
  %19 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %20 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = load %struct.clear_badblocks_context*, %struct.clear_badblocks_context** %6, align 8
  %28 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %31 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %16
  %35 = load %struct.clear_badblocks_context*, %struct.clear_badblocks_context** %6, align 8
  %36 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.clear_badblocks_context*, %struct.clear_badblocks_context** %6, align 8
  %39 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load i64, i64* %8, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34, %16
  store i32 0, i32* %3, align 4
  br label %74

46:                                               ; preds = %34
  %47 = load %struct.clear_badblocks_context*, %struct.clear_badblocks_context** %6, align 8
  %48 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %51 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = sdiv i64 %53, 512
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %57 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %56, i32 0, i32 3
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.clear_badblocks_context*, %struct.clear_badblocks_context** %6, align 8
  %60 = getelementptr inbounds %struct.clear_badblocks_context, %struct.clear_badblocks_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 512
  %63 = call i32 @badblocks_clear(i32* %57, i32 %58, i32 %62)
  %64 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %65 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %46
  %69 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %70 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @sysfs_notify_dirent(i64 %71)
  br label %73

73:                                               ; preds = %68, %46
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %45, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @is_memory(%struct.device*) #1

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i32 @badblocks_clear(i32*, i32, i32) #1

declare dso_local i32 @sysfs_notify_dirent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
