; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_sg_ieee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_build_sg_ieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }

@MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR = common dso_local global i32 0, align 4
@MPI25_IEEE_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i8*, i32, i64, i32, i64)* @_base_build_sg_ieee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_base_build_sg_ieee(%struct.MPT3SAS_ADAPTER* %0, i8* %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %6
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @_base_build_zero_len_sge_ieee(%struct.MPT3SAS_ADAPTER* %20, i8* %21)
  br label %82

23:                                               ; preds = %16, %6
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %31 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @_base_add_sg_single_ieee(i8* %33, i32 %34, i32 0, i64 %35, i32 %36)
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr i8, i8* %41, i64 %42
  store i8* %43, i8** %8, align 8
  %44 = load i32, i32* @MPI25_IEEE_SGE_FLAGS_END_OF_LIST, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @_base_add_sg_single_ieee(i8* %47, i32 %48, i32 0, i64 %49, i32 %50)
  br label %82

52:                                               ; preds = %26, %23
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %57 = load i32, i32* @MPI25_IEEE_SGE_FLAGS_END_OF_LIST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @_base_add_sg_single_ieee(i8* %61, i32 %62, i32 0, i64 %63, i32 %64)
  br label %81

66:                                               ; preds = %52
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %71 = load i32, i32* @MPI25_IEEE_SGE_FLAGS_END_OF_LIST, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %13, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @_base_add_sg_single_ieee(i8* %75, i32 %76, i32 0, i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %66
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %19, %81, %29
  ret void
}

declare dso_local i32 @_base_build_zero_len_sge_ieee(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @_base_add_sg_single_ieee(i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
