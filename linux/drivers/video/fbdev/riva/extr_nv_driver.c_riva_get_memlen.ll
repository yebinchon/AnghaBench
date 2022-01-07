; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_nv_driver.c_riva_get_memlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_nv_driver.c_riva_get_memlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@NV_CHIP_IGEFORCE2 = common dso_local global i32 0, align 4
@NV_CHIP_0x01F0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @riva_get_memlen(%struct.riva_par* %0) #0 {
  %2 = alloca %struct.riva_par*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.riva_par* %0, %struct.riva_par** %2, align 8
  %9 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %10 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %9, i32 0, i32 2
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %15 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_domain_nr(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %150 [
    i32 132, label %23
    i32 131, label %67
    i32 130, label %98
    i32 129, label %98
    i32 128, label %98
  ]

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NV_RD32(i32 %26, i32 0)
  %28 = and i32 %27, 32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NV_RD32(i32 %33, i32 0)
  %35 = and i32 %34, 240
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NV_RD32(i32 %40, i32 0)
  %42 = and i32 %41, 15
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NV_RD32(i32 %47, i32 0)
  %49 = and i32 %48, 3
  switch i32 %49, label %52 [
    i32 2, label %50
    i32 1, label %51
  ]

50:                                               ; preds = %44
  store i64 4096, i64* %4, align 8
  br label %53

51:                                               ; preds = %44
  store i64 2048, i64* %4, align 8
  br label %53

52:                                               ; preds = %44
  store i64 8192, i64* %4, align 8
  br label %53

53:                                               ; preds = %52, %51, %50
  br label %55

54:                                               ; preds = %37, %30
  store i64 8192, i64* %4, align 8
  br label %55

55:                                               ; preds = %54, %53
  br label %66

56:                                               ; preds = %23
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @NV_RD32(i32 %59, i32 0)
  %61 = and i32 %60, 3
  switch i32 %61, label %64 [
    i32 0, label %62
    i32 2, label %63
  ]

62:                                               ; preds = %56
  store i64 8192, i64* %4, align 8
  br label %65

63:                                               ; preds = %56
  store i64 4096, i64* %4, align 8
  br label %65

64:                                               ; preds = %56
  store i64 2048, i64* %4, align 8
  br label %65

65:                                               ; preds = %64, %63, %62
  br label %66

66:                                               ; preds = %65, %55
  br label %150

67:                                               ; preds = %1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @NV_RD32(i32 %70, i32 0)
  %72 = and i32 %71, 256
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NV_RD32(i32 %77, i32 0)
  %79 = ashr i32 %78, 12
  %80 = and i32 %79, 15
  %81 = mul nsw i32 %80, 1024
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %82, 2048
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %4, align 8
  br label %97

85:                                               ; preds = %67
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @NV_RD32(i32 %88, i32 0)
  %90 = and i32 %89, 3
  switch i32 %90, label %95 [
    i32 0, label %91
    i32 1, label %92
    i32 2, label %93
    i32 3, label %94
  ]

91:                                               ; preds = %85
  store i64 32768, i64* %4, align 8
  br label %96

92:                                               ; preds = %85
  store i64 4096, i64* %4, align 8
  br label %96

93:                                               ; preds = %85
  store i64 8192, i64* %4, align 8
  br label %96

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %85, %94
  store i64 16384, i64* %4, align 8
  br label %96

96:                                               ; preds = %95, %93, %92, %91
  br label %97

97:                                               ; preds = %96, %74
  br label %150

98:                                               ; preds = %1, %1, %1
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @NV_CHIP_IGEFORCE2, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %103, i32 0, i32 1)
  store %struct.pci_dev* %104, %struct.pci_dev** %6, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %106 = call i32 @pci_read_config_dword(%struct.pci_dev* %105, i32 124, i32* %7)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %108 = call i32 @pci_dev_put(%struct.pci_dev* %107)
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 31
  %112 = add nsw i32 %111, 1
  %113 = mul nsw i32 %112, 1024
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %4, align 8
  br label %149

115:                                              ; preds = %98
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @NV_CHIP_0x01F0, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %120, i32 0, i32 1)
  store %struct.pci_dev* %121, %struct.pci_dev** %6, align 8
  %122 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %123 = call i32 @pci_read_config_dword(%struct.pci_dev* %122, i32 132, i32* %7)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %125 = call i32 @pci_dev_put(%struct.pci_dev* %124)
  %126 = load i32, i32* %7, align 4
  %127 = ashr i32 %126, 4
  %128 = and i32 %127, 127
  %129 = add nsw i32 %128, 1
  %130 = mul nsw i32 %129, 1024
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %4, align 8
  br label %148

132:                                              ; preds = %115
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @NV_RD32(i32 %135, i32 524)
  %137 = ashr i32 %136, 20
  %138 = and i32 %137, 255
  switch i32 %138, label %146 [
    i32 2, label %139
    i32 4, label %140
    i32 8, label %141
    i32 16, label %142
    i32 32, label %143
    i32 64, label %144
    i32 128, label %145
  ]

139:                                              ; preds = %132
  store i64 2048, i64* %4, align 8
  br label %147

140:                                              ; preds = %132
  store i64 4096, i64* %4, align 8
  br label %147

141:                                              ; preds = %132
  store i64 8192, i64* %4, align 8
  br label %147

142:                                              ; preds = %132
  store i64 16384, i64* %4, align 8
  br label %147

143:                                              ; preds = %132
  store i64 32768, i64* %4, align 8
  br label %147

144:                                              ; preds = %132
  store i64 65536, i64* %4, align 8
  br label %147

145:                                              ; preds = %132
  store i64 131072, i64* %4, align 8
  br label %147

146:                                              ; preds = %132
  store i64 16384, i64* %4, align 8
  br label %147

147:                                              ; preds = %146, %145, %144, %143, %142, %141, %140, %139
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %102
  br label %150

150:                                              ; preds = %1, %149, %97, %66
  %151 = load i64, i64* %4, align 8
  ret i64 %151
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
