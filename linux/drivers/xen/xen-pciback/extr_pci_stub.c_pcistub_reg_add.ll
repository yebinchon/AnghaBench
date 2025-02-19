; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_reg_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_reg_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcistub_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.config_field = type { i32, i32, i32, i32, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xen_pcibk_config_field_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @pcistub_reg_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcistub_reg_add(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pcistub_device*, align 8
  %18 = alloca %struct.pci_dev*, align 8
  %19 = alloca %struct.config_field*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ugt i32 %20, 4095
  br i1 %21, label %31, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %14, align 4
  %28 = mul i32 %27, 8
  %29 = lshr i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %92

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.pcistub_device* @pcistub_device_find(i32 %35, i32 %36, i32 %37, i32 %38)
  store %struct.pcistub_device* %39, %struct.pcistub_device** %17, align 8
  %40 = load %struct.pcistub_device*, %struct.pcistub_device** %17, align 8
  %41 = icmp ne %struct.pcistub_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %16, align 4
  br label %84

45:                                               ; preds = %34
  %46 = load %struct.pcistub_device*, %struct.pcistub_device** %17, align 8
  %47 = getelementptr inbounds %struct.pcistub_device, %struct.pcistub_device* %46, i32 0, i32 0
  %48 = load %struct.pci_dev*, %struct.pci_dev** %47, align 8
  store %struct.pci_dev* %48, %struct.pci_dev** %18, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.config_field* @kzalloc(i32 40, i32 %49)
  store %struct.config_field* %50, %struct.config_field** %19, align 8
  %51 = load %struct.config_field*, %struct.config_field** %19, align 8
  %52 = icmp ne %struct.config_field* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %16, align 4
  br label %84

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.config_field*, %struct.config_field** %19, align 8
  %59 = getelementptr inbounds %struct.config_field, %struct.config_field* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.config_field*, %struct.config_field** %19, align 8
  %62 = getelementptr inbounds %struct.config_field, %struct.config_field* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.config_field*, %struct.config_field** %19, align 8
  %65 = getelementptr inbounds %struct.config_field, %struct.config_field* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.config_field*, %struct.config_field** %19, align 8
  %67 = getelementptr inbounds %struct.config_field, %struct.config_field* %66, i32 0, i32 6
  store i32* null, i32** %67, align 8
  %68 = load %struct.config_field*, %struct.config_field** %19, align 8
  %69 = getelementptr inbounds %struct.config_field, %struct.config_field* %68, i32 0, i32 5
  store i32* null, i32** %69, align 8
  %70 = load %struct.config_field*, %struct.config_field** %19, align 8
  %71 = getelementptr inbounds %struct.config_field, %struct.config_field* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @xen_pcibk_config_field_free, align 4
  %73 = load %struct.config_field*, %struct.config_field** %19, align 8
  %74 = getelementptr inbounds %struct.config_field, %struct.config_field* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %76 = load %struct.config_field*, %struct.config_field** %19, align 8
  %77 = call i32 @xen_pcibk_config_quirks_add_field(%struct.pci_dev* %75, %struct.config_field* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %56
  %81 = load %struct.config_field*, %struct.config_field** %19, align 8
  %82 = call i32 @kfree(%struct.config_field* %81)
  br label %83

83:                                               ; preds = %80, %56
  br label %84

84:                                               ; preds = %83, %53, %42
  %85 = load %struct.pcistub_device*, %struct.pcistub_device** %17, align 8
  %86 = icmp ne %struct.pcistub_device* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.pcistub_device*, %struct.pcistub_device** %17, align 8
  %89 = call i32 @pcistub_device_put(%struct.pcistub_device* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %31
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local %struct.pcistub_device* @pcistub_device_find(i32, i32, i32, i32) #1

declare dso_local %struct.config_field* @kzalloc(i32, i32) #1

declare dso_local i32 @xen_pcibk_config_quirks_add_field(%struct.pci_dev*, %struct.config_field*) #1

declare dso_local i32 @kfree(%struct.config_field*) #1

declare dso_local i32 @pcistub_device_put(%struct.pcistub_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
