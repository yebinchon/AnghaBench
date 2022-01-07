; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_region_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_region_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i64, i64 }
%struct.conflict_context = type { i64, i64, %struct.nd_region* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @region_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @region_conflict(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca %struct.conflict_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.conflict_context*
  store %struct.conflict_context* %12, %struct.conflict_context** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @is_memory(%struct.device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.nd_region* @to_nd_region(%struct.device* %18)
  store %struct.nd_region* %19, %struct.nd_region** %6, align 8
  %20 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %21 = load %struct.conflict_context*, %struct.conflict_context** %7, align 8
  %22 = getelementptr inbounds %struct.conflict_context, %struct.conflict_context* %21, i32 0, i32 2
  %23 = load %struct.nd_region*, %struct.nd_region** %22, align 8
  %24 = icmp eq %struct.nd_region* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %68

26:                                               ; preds = %17
  %27 = load %struct.conflict_context*, %struct.conflict_context** %7, align 8
  %28 = getelementptr inbounds %struct.conflict_context, %struct.conflict_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.conflict_context*, %struct.conflict_context** %7, align 8
  %31 = getelementptr inbounds %struct.conflict_context, %struct.conflict_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %8, align 8
  %34 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %35 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %39 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %9, align 8
  %42 = load %struct.conflict_context*, %struct.conflict_context** %7, align 8
  %43 = getelementptr inbounds %struct.conflict_context, %struct.conflict_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %26
  %48 = load %struct.conflict_context*, %struct.conflict_context** %7, align 8
  %49 = getelementptr inbounds %struct.conflict_context, %struct.conflict_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %47, %26
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp sle i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %53, %25, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @is_memory(%struct.device*) #1

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
