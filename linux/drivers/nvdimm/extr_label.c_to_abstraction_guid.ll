; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_abstraction_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_to_abstraction_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVDIMM_CCLASS_BTT = common dso_local global i32 0, align 4
@nvdimm_btt_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_BTT2 = common dso_local global i32 0, align 4
@nvdimm_btt2_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_PFN = common dso_local global i32 0, align 4
@nvdimm_pfn_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_DAX = common dso_local global i32 0, align 4
@nvdimm_dax_guid = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_UNKNOWN = common dso_local global i32 0, align 4
@guid_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @to_abstraction_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_abstraction_guid(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NVDIMM_CCLASS_BTT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* @nvdimm_btt_guid, i32** %3, align 8
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NVDIMM_CCLASS_BTT2, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32* @nvdimm_btt2_guid, i32** %3, align 8
  br label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NVDIMM_CCLASS_PFN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32* @nvdimm_pfn_guid, i32** %3, align 8
  br label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NVDIMM_CCLASS_DAX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32* @nvdimm_dax_guid, i32** %3, align 8
  br label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NVDIMM_CCLASS_UNKNOWN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  store i32* %30, i32** %3, align 8
  br label %32

31:                                               ; preds = %25
  store i32* @guid_null, i32** %3, align 8
  br label %32

32:                                               ; preds = %31, %29, %24, %19, %14, %9
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
