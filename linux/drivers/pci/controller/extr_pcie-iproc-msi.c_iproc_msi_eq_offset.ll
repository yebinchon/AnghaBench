; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_eq_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_eq_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_msi = type { i32 }

@EQ_MEM_REGION_SIZE = common dso_local global i32 0, align 4
@EQ_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_msi*, i32)* @iproc_msi_eq_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_msi_eq_offset(%struct.iproc_msi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_msi*, align 8
  %5 = alloca i32, align 4
  store %struct.iproc_msi* %0, %struct.iproc_msi** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %7 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EQ_MEM_REGION_SIZE, align 4
  %13 = mul i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EQ_LEN, align 4
  %17 = mul i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
