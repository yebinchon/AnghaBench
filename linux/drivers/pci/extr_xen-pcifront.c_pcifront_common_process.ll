; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_common_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_common_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pci_driver = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)* }
%struct.pci_dev = type { %struct.pci_driver* }

@.str = private unnamed_addr constant [47 x i8] c"pcifront AER process: cmd %x (bus:%x, devfn%x)\00", align 1
@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"device or AER driver is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"trying to call AER service\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"bad request in aer recovery operation!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pcifront_device*, i32)* @pcifront_common_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_common_process(i32 %0, %struct.pcifront_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcifront_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pcifront_device* %1, %struct.pcifront_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %16 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %22 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %28 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %33 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %34 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %42, i32 %43, i32 %44)
  store %struct.pci_dev* %45, %struct.pci_dev** %13, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %47 = icmp ne %struct.pci_dev* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.pci_driver*, %struct.pci_driver** %50, align 8
  %52 = icmp ne %struct.pci_driver* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %48, %3
  %54 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %55 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %60 = call i32 @pci_dev_put(%struct.pci_dev* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %136

62:                                               ; preds = %48
  %63 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load %struct.pci_driver*, %struct.pci_driver** %64, align 8
  store %struct.pci_driver* %65, %struct.pci_driver** %9, align 8
  %66 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %67 = icmp ne %struct.pci_driver* %66, null
  br i1 %67, label %68, label %129

68:                                               ; preds = %62
  %69 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %70 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %128

73:                                               ; preds = %68
  %74 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %75 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.pci_dev*, i32)* %78, null
  br i1 %79, label %80, label %128

80:                                               ; preds = %73
  %81 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %82 = call i32 @pci_dbg(%struct.pci_dev* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %84 = icmp ne %struct.pci_dev* %83, null
  br i1 %84, label %85, label %127

85:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %120 [
    i32 131, label %87
    i32 130, label %96
    i32 128, label %104
    i32 129, label %112
  ]

87:                                               ; preds = %85
  %88 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %89 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %91, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 %92(%struct.pci_dev* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %126

96:                                               ; preds = %85
  %97 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %98 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %100, align 8
  %102 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %103 = call i32 %101(%struct.pci_dev* %102)
  store i32 %103, i32* %8, align 4
  br label %126

104:                                              ; preds = %85
  %105 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %106 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %108, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %111 = call i32 %109(%struct.pci_dev* %110)
  store i32 %111, i32* %8, align 4
  br label %126

112:                                              ; preds = %85
  %113 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %114 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %116, align 8
  %118 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %119 = call i32 %117(%struct.pci_dev* %118)
  br label %126

120:                                              ; preds = %85
  %121 = load %struct.pcifront_device*, %struct.pcifront_device** %6, align 8
  %122 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %120, %112, %104, %96, %87
  br label %127

127:                                              ; preds = %126, %80
  br label %128

128:                                              ; preds = %127, %73, %68
  br label %129

129:                                              ; preds = %128, %62
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %53
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
