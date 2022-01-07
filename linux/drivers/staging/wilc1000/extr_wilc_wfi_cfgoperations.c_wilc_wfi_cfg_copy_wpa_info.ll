; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_copy_wpa_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_copy_wpa_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_wfi_key = type { i64, i64, i32, i8*, i8* }
%struct.key_params = type { i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc_wfi_key*, %struct.key_params*)* @wilc_wfi_cfg_copy_wpa_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wfi_cfg_copy_wpa_info(%struct.wilc_wfi_key* %0, %struct.key_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_wfi_key*, align 8
  %5 = alloca %struct.key_params*, align 8
  store %struct.wilc_wfi_key* %0, %struct.wilc_wfi_key** %4, align 8
  store %struct.key_params* %1, %struct.key_params** %5, align 8
  %6 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %7 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @kfree(i8* %8)
  %10 = load %struct.key_params*, %struct.key_params** %5, align 8
  %11 = getelementptr inbounds %struct.key_params, %struct.key_params* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.key_params*, %struct.key_params** %5, align 8
  %14 = getelementptr inbounds %struct.key_params, %struct.key_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmemdup(i32 %12, i64 %15, i32 %16)
  %18 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %19 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %21 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %29 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load %struct.key_params*, %struct.key_params** %5, align 8
  %33 = getelementptr inbounds %struct.key_params, %struct.key_params* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load %struct.key_params*, %struct.key_params** %5, align 8
  %38 = getelementptr inbounds %struct.key_params, %struct.key_params* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.key_params*, %struct.key_params** %5, align 8
  %41 = getelementptr inbounds %struct.key_params, %struct.key_params* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmemdup(i32 %39, i64 %42, i32 %43)
  %45 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %46 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %48 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.key_params*, %struct.key_params** %5, align 8
  %57 = getelementptr inbounds %struct.key_params, %struct.key_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %60 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.key_params*, %struct.key_params** %5, align 8
  %62 = getelementptr inbounds %struct.key_params, %struct.key_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %65 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.key_params*, %struct.key_params** %5, align 8
  %67 = getelementptr inbounds %struct.key_params, %struct.key_params* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wilc_wfi_key*, %struct.wilc_wfi_key** %4, align 8
  %70 = getelementptr inbounds %struct.wilc_wfi_key, %struct.wilc_wfi_key* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %55, %51, %24
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmemdup(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
