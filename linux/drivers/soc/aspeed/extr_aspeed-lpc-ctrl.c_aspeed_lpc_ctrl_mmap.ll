; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-ctrl.c_aspeed_lpc_ctrl_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-ctrl.c_aspeed_lpc_ctrl_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }
%struct.aspeed_lpc_ctrl = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @aspeed_lpc_ctrl_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_ctrl_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.aspeed_lpc_ctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.aspeed_lpc_ctrl* @file_aspeed_lpc_ctrl(%struct.file* %9)
  store %struct.aspeed_lpc_ctrl* %10, %struct.aspeed_lpc_ctrl** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  %26 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %6, align 8
  %27 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp ugt i64 %25, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pgprot_noncached(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %6, align 8
  %46 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @remap_pfn_range(%struct.vm_area_struct* %41, i64 %44, i64 %54, i64 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %38
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %35
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.aspeed_lpc_ctrl* @file_aspeed_lpc_ctrl(%struct.file*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
