; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_init_allocator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_init_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_msi = type { i32, i32, i32 }

@NR_MSI_VEC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_HW_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_msi*)* @xgene_msi_init_allocator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_msi_init_allocator(%struct.xgene_msi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_msi*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_msi* %0, %struct.xgene_msi** %3, align 8
  %5 = load i32, i32* @NR_MSI_VEC, align 4
  %6 = call i32 @BITS_TO_LONGS(i32 %5)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @kzalloc(i32 %10, i32 %11)
  %13 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %24 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load i32, i32* @NR_HW_IRQS, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.xgene_msi*, %struct.xgene_msi** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
