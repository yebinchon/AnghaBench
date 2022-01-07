; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_amd_chipset_sb_type_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_pci-quirks.c_amd_chipset_sb_type_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_chipset_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AMD_CHIPSET_UNKNOWN = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ATI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ATI_SBX00_SMBUS = common dso_local global i32 0, align 4
@AMD_CHIPSET_SB600 = common dso_local global i32 0, align 4
@AMD_CHIPSET_SB700 = common dso_local global i32 0, align 4
@AMD_CHIPSET_SB800 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_HUDSON2_SMBUS = common dso_local global i32 0, align 4
@AMD_CHIPSET_HUDSON2 = common dso_local global i32 0, align 4
@AMD_CHIPSET_BOLTON = common dso_local global i32 0, align 4
@AMD_CHIPSET_YANGTZE = common dso_local global i32 0, align 4
@AMD_CHIPSET_TAISHAN = common dso_local global i32 0, align 4
@NOT_AMD_CHIPSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_chipset_info*)* @amd_chipset_sb_type_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_chipset_sb_type_init(%struct.amd_chipset_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_chipset_info*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_chipset_info* %0, %struct.amd_chipset_info** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @AMD_CHIPSET_UNKNOWN, align 4
  %6 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %7 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @PCI_VENDOR_ID_ATI, align 4
  %10 = load i32, i32* @PCI_DEVICE_ID_ATI_SBX00_SMBUS, align 4
  %11 = call i8* @pci_get_device(i32 %9, i32 %10, i32* null)
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  %13 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %14 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %13, i32 0, i32 1
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %16 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %21 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 16
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 31
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @AMD_CHIPSET_SB600, align 4
  %32 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %33 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  br label %59

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 63
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @AMD_CHIPSET_SB700, align 4
  %43 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %44 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %58

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 64
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp sle i32 %50, 79
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* @AMD_CHIPSET_SB800, align 4
  %54 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %55 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49, %46
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %30
  br label %139

60:                                               ; preds = %1
  %61 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %62 = load i32, i32* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 4
  %63 = call i8* @pci_get_device(i32 %61, i32 %62, i32* null)
  %64 = bitcast i8* %63 to %struct.TYPE_3__*
  %65 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %66 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %65, i32 0, i32 1
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %68 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %112

71:                                               ; preds = %60
  %72 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %73 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp sge i32 %77, 17
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = icmp sle i32 %80, 20
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* @AMD_CHIPSET_HUDSON2, align 4
  %84 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %85 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %111

87:                                               ; preds = %79, %71
  %88 = load i32, i32* %4, align 4
  %89 = icmp sge i32 %88, 21
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* %4, align 4
  %92 = icmp sle i32 %91, 24
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @AMD_CHIPSET_BOLTON, align 4
  %95 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %96 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %110

98:                                               ; preds = %90, %87
  %99 = load i32, i32* %4, align 4
  %100 = icmp sge i32 %99, 57
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp sle i32 %102, 58
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* @AMD_CHIPSET_YANGTZE, align 4
  %106 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %107 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %101, %98
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110, %82
  br label %138

112:                                              ; preds = %60
  %113 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %114 = call i8* @pci_get_device(i32 %113, i32 5212, i32* null)
  %115 = bitcast i8* %114 to %struct.TYPE_3__*
  %116 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %117 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %116, i32 0, i32 1
  store %struct.TYPE_3__* %115, %struct.TYPE_3__** %117, align 8
  %118 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %119 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = icmp ne %struct.TYPE_3__* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %112
  %123 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %124 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @AMD_CHIPSET_TAISHAN, align 4
  %129 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %130 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  br label %137

132:                                              ; preds = %112
  %133 = load i32, i32* @NOT_AMD_CHIPSET, align 4
  %134 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %135 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  store i32 0, i32* %2, align 4
  br label %144

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %59
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %3, align 8
  %142 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  store i32 1, i32* %2, align 4
  br label %144

144:                                              ; preds = %139, %132
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i8* @pci_get_device(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
