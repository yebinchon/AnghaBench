; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_ar_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_ar_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.icm = type { i32, %struct.pci_dev* }

@x86_apple_machine = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_VNDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb*)* @icm_ar_is_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icm_ar_is_supported(%struct.tb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.icm*, align 8
  %6 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %3, align 8
  %7 = load %struct.tb*, %struct.tb** %3, align 8
  %8 = call %struct.icm* @tb_priv(%struct.tb* %7)
  store %struct.icm* %8, %struct.icm** %5, align 8
  %9 = load i32, i32* @x86_apple_machine, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.tb*, %struct.tb** %3, align 8
  %14 = getelementptr inbounds %struct.tb, %struct.tb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @get_upstream_port(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = icmp ne %struct.pci_dev* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load i32, i32* @PCI_EXT_CAP_ID_VNDR, align 4
  %24 = call i32 @pci_find_ext_capability(%struct.pci_dev* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load %struct.icm*, %struct.icm** %5, align 8
  %30 = getelementptr inbounds %struct.icm, %struct.icm* %29, i32 0, i32 1
  store %struct.pci_dev* %28, %struct.pci_dev** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.icm*, %struct.icm** %5, align 8
  %33 = getelementptr inbounds %struct.icm, %struct.icm* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 1, i32* %2, align 4
  br label %36

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %12
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local %struct.pci_dev* @get_upstream_port(i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
