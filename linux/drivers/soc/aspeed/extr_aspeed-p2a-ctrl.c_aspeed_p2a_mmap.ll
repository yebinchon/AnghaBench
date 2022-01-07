; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.aspeed_p2a_user* }
%struct.aspeed_p2a_user = type { %struct.aspeed_p2a_ctrl* }
%struct.aspeed_p2a_ctrl = type { i32, i64 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @aspeed_p2a_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_p2a_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aspeed_p2a_user*, align 8
  %9 = alloca %struct.aspeed_p2a_ctrl*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %11, align 8
  store %struct.aspeed_p2a_user* %12, %struct.aspeed_p2a_user** %8, align 8
  %13 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %8, align 8
  %14 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %13, i32 0, i32 0
  %15 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %14, align 8
  store %struct.aspeed_p2a_ctrl* %15, %struct.aspeed_p2a_ctrl** %9, align 8
  %16 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %9, align 8
  %17 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %9, align 8
  %22 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %20, %2
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  store i64 %35, i64* %6, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %9, align 8
  %45 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %9, align 8
  %49 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = icmp ugt i64 %43, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %28
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %81

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pgprot_noncached(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %9, align 8
  %64 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @remap_pfn_range(%struct.vm_area_struct* %59, i64 %62, i64 %72, i64 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %56
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %53, %25
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
