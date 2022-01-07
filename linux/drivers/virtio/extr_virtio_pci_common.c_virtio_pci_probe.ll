; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.virtio_pci_device = type { %struct.TYPE_3__, i64, i32, i32, %struct.pci_dev* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@virtio_pci_release_dev = common dso_local global i32 0, align 4
@force_legacy = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @virtio_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.virtio_pci_device*, align 8
  %7 = alloca %struct.virtio_pci_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.virtio_pci_device* null, %struct.virtio_pci_device** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.virtio_pci_device* @kzalloc(i32 40, i32 %9)
  store %struct.virtio_pci_device* %10, %struct.virtio_pci_device** %6, align 8
  %11 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %12 = icmp ne %struct.virtio_pci_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %122

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %19 = call i32 @pci_set_drvdata(%struct.pci_dev* %17, %struct.virtio_pci_device* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %23 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* %21, i32** %25, align 8
  %26 = load i32, i32* @virtio_pci_release_dev, align 4
  %27 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %28 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %33 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %32, i32 0, i32 4
  store %struct.pci_dev* %31, %struct.pci_dev** %33, align 8
  %34 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %35 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %38 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_enable_device(%struct.pci_dev* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  br label %109

45:                                               ; preds = %16
  %46 = load i64, i64* @force_legacy, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %50 = call i32 @virtio_pci_legacy_probe(%struct.virtio_pci_device* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %48
  %61 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %62 = call i32 @virtio_pci_modern_probe(%struct.virtio_pci_device* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %106

67:                                               ; preds = %63
  br label %83

68:                                               ; preds = %45
  %69 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %70 = call i32 @virtio_pci_modern_probe(%struct.virtio_pci_device* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %77 = call i32 @virtio_pci_legacy_probe(%struct.virtio_pci_device* %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %106

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i32 @pci_set_master(%struct.pci_dev* %84)
  %86 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %87 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %86, i32 0, i32 0
  %88 = call i32 @register_virtio_device(%struct.TYPE_3__* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  store %struct.virtio_pci_device* %89, %struct.virtio_pci_device** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %122

94:                                               ; preds = %92
  %95 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %96 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %101 = call i32 @virtio_pci_legacy_remove(%struct.virtio_pci_device* %100)
  br label %105

102:                                              ; preds = %94
  %103 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %104 = call i32 @virtio_pci_modern_remove(%struct.virtio_pci_device* %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %81, %66
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = call i32 @pci_disable_device(%struct.pci_dev* %107)
  br label %109

109:                                              ; preds = %106, %44
  %110 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %7, align 8
  %111 = icmp ne %struct.virtio_pci_device* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %114 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @put_device(%struct.TYPE_4__* %115)
  br label %120

117:                                              ; preds = %109
  %118 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %119 = call i32 @kfree(%struct.virtio_pci_device* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %93, %13
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.virtio_pci_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.virtio_pci_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @virtio_pci_legacy_probe(%struct.virtio_pci_device*) #1

declare dso_local i32 @virtio_pci_modern_probe(%struct.virtio_pci_device*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @register_virtio_device(%struct.TYPE_3__*) #1

declare dso_local i32 @virtio_pci_legacy_remove(%struct.virtio_pci_device*) #1

declare dso_local i32 @virtio_pci_modern_remove(%struct.virtio_pci_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.virtio_pci_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
