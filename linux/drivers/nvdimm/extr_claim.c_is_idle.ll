; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32 }
%struct.nd_namespace_common = type { i32 }
%struct.nd_region = type { %struct.device*, %struct.device*, %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.nd_namespace_common*)* @is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_idle(%struct.device* %0, %struct.nd_namespace_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca %struct.nd_region*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nd_region* @to_nd_region(i32 %10)
  store %struct.nd_region* %11, %struct.nd_region** %6, align 8
  store %struct.device* null, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i64 @is_nd_btt(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 2
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @is_nd_pfn(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %25 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %7, align 8
  br label %36

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i64 @is_nd_dax(%struct.device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.nd_region*, %struct.nd_region** %6, align 8
  %33 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %7, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = icmp eq %struct.device* %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %43 = icmp ne %struct.nd_namespace_common* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %41, %37
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
