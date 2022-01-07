; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_msi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.msi_domain_info = type { i32 }
%struct.TYPE_4__ = type { %struct.msi_desc* }
%struct.msi_desc = type { i32 }
%struct.vmd_dev = type { i32 }
%struct.vmd_irq = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@handle_untracked_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.msi_domain_info*, i32, i32, %struct.TYPE_4__*)* @vmd_msi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_msi_init(%struct.irq_domain* %0, %struct.msi_domain_info* %1, i32 %2, i32 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.msi_domain_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.msi_desc*, align 8
  %13 = alloca %struct.vmd_dev*, align 8
  %14 = alloca %struct.vmd_irq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %7, align 8
  store %struct.msi_domain_info* %1, %struct.msi_domain_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.msi_desc*, %struct.msi_desc** %18, align 8
  store %struct.msi_desc* %19, %struct.msi_desc** %12, align 8
  %20 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %21 = call %struct.TYPE_5__* @msi_desc_to_pci_dev(%struct.msi_desc* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vmd_dev* @vmd_from_bus(i32 %23)
  store %struct.vmd_dev* %24, %struct.vmd_dev** %13, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vmd_irq* @kzalloc(i32 12, i32 %25)
  store %struct.vmd_irq* %26, %struct.vmd_irq** %14, align 8
  %27 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %28 = icmp ne %struct.vmd_irq* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %64

32:                                               ; preds = %5
  %33 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %34 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.vmd_dev*, %struct.vmd_dev** %13, align 8
  %37 = load %struct.msi_desc*, %struct.msi_desc** %12, align 8
  %38 = call i32 @vmd_next_irq(%struct.vmd_dev* %36, %struct.msi_desc* %37)
  %39 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %40 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %43 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vmd_dev*, %struct.vmd_dev** %13, align 8
  %45 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %46 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @index_from_irqs(%struct.vmd_dev* %44, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.vmd_dev*, %struct.vmd_dev** %13, align 8
  %50 = getelementptr inbounds %struct.vmd_dev, %struct.vmd_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @pci_irq_vector(i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.msi_domain_info*, %struct.msi_domain_info** %8, align 8
  %58 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vmd_irq*, %struct.vmd_irq** %14, align 8
  %61 = load i32, i32* @handle_untracked_irq, align 4
  %62 = load %struct.vmd_dev*, %struct.vmd_dev** %13, align 8
  %63 = call i32 @irq_domain_set_info(%struct.irq_domain* %54, i32 %55, i32 %56, i32 %59, %struct.vmd_irq* %60, i32 %61, %struct.vmd_dev* %62, i32* null)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %32, %29
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.vmd_dev* @vmd_from_bus(i32) #1

declare dso_local %struct.TYPE_5__* @msi_desc_to_pci_dev(%struct.msi_desc*) #1

declare dso_local %struct.vmd_irq* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vmd_next_irq(%struct.vmd_dev*, %struct.msi_desc*) #1

declare dso_local i32 @index_from_irqs(%struct.vmd_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32, %struct.vmd_irq*, i32, %struct.vmd_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
