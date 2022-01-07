; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_sgl_set_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_sgl_set_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_sgl_desc = type { i32, i8*, i32 }

@SGES_PER_PAGE = common dso_local global i32 0, align 4
@NVME_SGL_FMT_LAST_SEG_DESC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NVME_SGL_FMT_SEG_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_sgl_desc*, i32, i32)* @nvme_pci_sgl_set_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_pci_sgl_set_seg(%struct.nvme_sgl_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_sgl_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_sgl_desc* %0, %struct.nvme_sgl_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @cpu_to_le64(i32 %7)
  %9 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SGES_PER_PAGE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 24
  %18 = trunc i64 %17 to i32
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @NVME_SGL_FMT_LAST_SEG_DESC, align 4
  %23 = shl i32 %22, 4
  %24 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @NVME_SGL_FMT_SEG_DESC, align 4
  %32 = shl i32 %31, 4
  %33 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
