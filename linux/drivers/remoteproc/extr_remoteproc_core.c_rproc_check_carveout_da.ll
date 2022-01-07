; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_check_carveout_da.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_check_carveout_da.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.device }
%struct.device = type { i32 }
%struct.rproc_mem_entry = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Registered carveout doesn't fit len request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_RSC_ADDR_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Registered carveout doesn't fit da request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.rproc_mem_entry*, i64, i64)* @rproc_check_carveout_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_check_carveout_da(%struct.rproc* %0, %struct.rproc_mem_entry* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.rproc_mem_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %6, align 8
  store %struct.rproc_mem_entry* %1, %struct.rproc_mem_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.rproc*, %struct.rproc** %6, align 8
  %13 = getelementptr inbounds %struct.rproc, %struct.rproc* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %7, align 8
  %16 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @FW_RSC_ADDR_ANY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %7, align 8
  %30 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FW_RSC_ADDR_ANY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %78

37:                                               ; preds = %28, %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @FW_RSC_ADDR_ANY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %7, align 8
  %43 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FW_RSC_ADDR_ANY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %7, align 8
  %50 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %10, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %78

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %7, align 8
  %67 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %41, %37
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %70, %56, %34, %19
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
