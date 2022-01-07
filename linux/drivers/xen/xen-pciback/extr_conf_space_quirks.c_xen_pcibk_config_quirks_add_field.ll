; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirks_add_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_conf_space_quirks.c_xen_pcibk_config_quirks_add_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.config_field = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@xen_pcibk_read_config_byte = common dso_local global i32 0, align 4
@xen_pcibk_write_config_byte = common dso_local global i32 0, align 4
@xen_pcibk_read_config_word = common dso_local global i32 0, align 4
@xen_pcibk_write_config_word = common dso_local global i32 0, align 4
@xen_pcibk_read_config_dword = common dso_local global i32 0, align 4
@xen_pcibk_write_config_dword = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_pcibk_config_quirks_add_field(%struct.pci_dev* %0, %struct.config_field* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.config_field*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.config_field* %1, %struct.config_field** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.config_field*, %struct.config_field** %4, align 8
  %7 = getelementptr inbounds %struct.config_field, %struct.config_field* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %42 [
    i32 1, label %9
    i32 2, label %20
    i32 4, label %31
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @xen_pcibk_read_config_byte, align 4
  %11 = load %struct.config_field*, %struct.config_field** %4, align 8
  %12 = getelementptr inbounds %struct.config_field, %struct.config_field* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @xen_pcibk_write_config_byte, align 4
  %16 = load %struct.config_field*, %struct.config_field** %4, align 8
  %17 = getelementptr inbounds %struct.config_field, %struct.config_field* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* @xen_pcibk_read_config_word, align 4
  %22 = load %struct.config_field*, %struct.config_field** %4, align 8
  %23 = getelementptr inbounds %struct.config_field, %struct.config_field* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @xen_pcibk_write_config_word, align 4
  %27 = load %struct.config_field*, %struct.config_field** %4, align 8
  %28 = getelementptr inbounds %struct.config_field, %struct.config_field* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @xen_pcibk_read_config_dword, align 4
  %33 = load %struct.config_field*, %struct.config_field** %4, align 8
  %34 = getelementptr inbounds %struct.config_field, %struct.config_field* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @xen_pcibk_write_config_dword, align 4
  %38 = load %struct.config_field*, %struct.config_field** %4, align 8
  %39 = getelementptr inbounds %struct.config_field, %struct.config_field* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %31, %20, %9
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load %struct.config_field*, %struct.config_field** %4, align 8
  %48 = call i32 @xen_pcibk_config_add_field(%struct.pci_dev* %46, %struct.config_field* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @xen_pcibk_config_add_field(%struct.pci_dev*, %struct.config_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
