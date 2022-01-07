; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv10GetConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv10GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@NV_CHIP_IGEFORCE2 = common dso_local global i32 0, align 4
@NV_CHIP_0x01F0 = common dso_local global i32 0, align 4
@nv10Busy = common dso_local global i32 0, align 4
@ShowHideCursor = common dso_local global i32 0, align 4
@LoadStateExt = common dso_local global i32 0, align 4
@UnloadStateExt = common dso_local global i32 0, align 4
@SetStartAddress = common dso_local global i32 0, align 4
@nv10SetSurfaces2D = common dso_local global i32 0, align 4
@nv10SetSurfaces3D = common dso_local global i32 0, align 4
@nv4LockUnlock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.pci_dev*, i32)* @nv10GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10GetConfig(%struct.TYPE_3__* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_domain_nr(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NV_CHIP_IGEFORCE2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %18, i32 0, i32 1)
  store %struct.pci_dev* %19, %struct.pci_dev** %7, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 124, i32* %9)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = call i32 @pci_dev_put(%struct.pci_dev* %22)
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 31
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %27, 1024
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %82

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NV_CHIP_0x01F0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %36, i32 0, i32 1)
  store %struct.pci_dev* %37, %struct.pci_dev** %7, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = call i32 @pci_read_config_dword(%struct.pci_dev* %38, i32 132, i32* %9)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = call i32 @pci_dev_put(%struct.pci_dev* %40)
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 127
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 1024
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %81

49:                                               ; preds = %31
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 17
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NV_RD32(i32 %52, i32 524)
  %54 = ashr i32 %53, 20
  %55 = and i32 %54, 255
  switch i32 %55, label %77 [
    i32 2, label %56
    i32 4, label %59
    i32 8, label %62
    i32 16, label %65
    i32 32, label %68
    i32 64, label %71
    i32 128, label %74
  ]

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 2048, i32* %58, align 8
  br label %80

59:                                               ; preds = %49
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 4096, i32* %61, align 8
  br label %80

62:                                               ; preds = %49
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 8192, i32* %64, align 8
  br label %80

65:                                               ; preds = %49
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 16384, i32* %67, align 8
  br label %80

68:                                               ; preds = %49
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 32768, i32* %70, align 8
  br label %80

71:                                               ; preds = %49
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 65536, i32* %73, align 8
  br label %80

74:                                               ; preds = %49
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 131072, i32* %76, align 8
  br label %80

77:                                               ; preds = %49
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 16384, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74, %71, %68, %65, %62, %59, %56
  br label %81

81:                                               ; preds = %80, %35
  br label %82

82:                                               ; preds = %81, %17
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 17
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @NV_RD32(i32 %85, i32 0)
  %87 = ashr i32 %86, 3
  %88 = and i32 %87, 3
  switch i32 %88, label %92 [
    i32 3, label %89
  ]

89:                                               ; preds = %82
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 800000, i32* %91, align 4
  br label %95

92:                                               ; preds = %82
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 1000000, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 16
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @NV_RD32(i32 %98, i32 0)
  %100 = and i32 %99, 64
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 14318, i32 13500
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 4080
  switch i32 %107, label %119 [
    i32 368, label %108
    i32 384, label %108
    i32 496, label %108
    i32 592, label %108
    i32 640, label %108
    i32 768, label %108
    i32 784, label %108
    i32 800, label %108
    i32 816, label %108
    i32 832, label %108
  ]

108:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @NV_RD32(i32 %111, i32 0)
  %113 = and i32 %112, 4194304
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 27000, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %108
  br label %120

119:                                              ; preds = %95
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 128
  %125 = mul nsw i32 %124, 1024
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 15
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  store i32 1, i32* %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 5
  store i32 350000, i32* %133, align 4
  %134 = load i32, i32* @nv10Busy, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @ShowHideCursor, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 13
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @LoadStateExt, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 12
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @UnloadStateExt, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @SetStartAddress, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @nv10SetSurfaces2D, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @nv10SetSurfaces3D, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @nv4LockUnlock, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, 4080
  switch i32 %159, label %164 [
    i32 272, label %160
    i32 368, label %160
    i32 384, label %160
    i32 496, label %160
    i32 592, label %160
    i32 640, label %160
    i32 768, label %160
    i32 784, label %160
    i32 800, label %160
    i32 816, label %160
    i32 832, label %160
  ]

160:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120
  %161 = load i32, i32* @TRUE, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  br label %168

164:                                              ; preds = %120
  %165 = load i32, i32* @FALSE, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %160
  ret void
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
