; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_get_user_key_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_get_user_key_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.key = type { i32 }

@NVDIMM_BASE_KEY = common dso_local global i32 0, align 4
@zero_key = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvdimm*, i64, i32, %struct.key**)* @nvdimm_get_user_key_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvdimm_get_user_key_payload(%struct.nvdimm* %0, i64 %1, i32 %2, %struct.key** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.key**, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.key** %3, %struct.key*** %9, align 8
  %10 = load %struct.key**, %struct.key*** %9, align 8
  store %struct.key* null, %struct.key** %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NVDIMM_BASE_KEY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** @zero_key, align 8
  store i8* %18, i8** %5, align 8
  br label %34

19:                                               ; preds = %13
  store i8* null, i8** %5, align 8
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.key* @nvdimm_lookup_user_key(%struct.nvdimm* %21, i64 %22, i32 %23)
  %25 = load %struct.key**, %struct.key*** %9, align 8
  store %struct.key* %24, %struct.key** %25, align 8
  %26 = load %struct.key**, %struct.key*** %9, align 8
  %27 = load %struct.key*, %struct.key** %26, align 8
  %28 = icmp ne %struct.key* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.key**, %struct.key*** %9, align 8
  %32 = load %struct.key*, %struct.key** %31, align 8
  %33 = call i8* @key_data(%struct.key* %32)
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %30, %29, %19, %17
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local %struct.key* @nvdimm_lookup_user_key(%struct.nvdimm*, i64, i32) #1

declare dso_local i8* @key_data(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
