; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_nvdimm_cclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_nvdimm_cclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvdimm_btt_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_BTT = common dso_local global i32 0, align 4
@nvdimm_btt2_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_BTT2 = common dso_local global i32 0, align 4
@nvdimm_pfn_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_PFN = common dso_local global i32 0, align 4
@nvdimm_dax_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_DAX = common dso_local global i32 0, align 4
@guid_null = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_NONE = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_nvdimm_cclass(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @guid_equal(i32* %4, i32* @nvdimm_btt_guid)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @NVDIMM_CCLASS_BTT, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @guid_equal(i32* %10, i32* @nvdimm_btt2_guid)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @NVDIMM_CCLASS_BTT2, align 4
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @guid_equal(i32* %16, i32* @nvdimm_pfn_guid)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @NVDIMM_CCLASS_PFN, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @guid_equal(i32* %22, i32* @nvdimm_dax_guid)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @NVDIMM_CCLASS_DAX, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @guid_equal(i32* %28, i32* @guid_null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NVDIMM_CCLASS_NONE, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @NVDIMM_CCLASS_UNKNOWN, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %31, %25, %19, %13, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @guid_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
