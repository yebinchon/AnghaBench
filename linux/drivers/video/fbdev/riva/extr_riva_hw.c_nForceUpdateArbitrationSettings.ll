; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nForceUpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nForceUpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.TYPE_9__*, %struct.pci_dev*)* @nForceUpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nForceUpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_9__* %4, %struct.pci_dev* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.pci_dev*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  store %struct.pci_dev* %5, %struct.pci_dev** %12, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_domain_nr(i32 %27)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %23, align 4
  %30 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %29, i32 0, i32 3)
  store %struct.pci_dev* %30, %struct.pci_dev** %22, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 108, i32* %21)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %34 = call i32 @pci_dev_put(%struct.pci_dev* %33)
  %35 = load i32, i32* %21, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 15
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %6
  store i32 4, i32* %21, align 4
  br label %41

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %21, align 4
  %43 = udiv i32 400000, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 320
  %48 = call i32 @NV_RD32(i32* %47, i32 0)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = lshr i32 %49, 0
  %51 = and i32 %50, 255
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %18, align 4
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 255
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %18, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 15
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul i32 %58, %61
  %63 = load i32, i32* %15, align 4
  %64 = udiv i32 %62, %63
  %65 = load i32, i32* %17, align 4
  %66 = lshr i32 %64, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %8, align 4
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i8 %68, i8* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 11
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %23, align 4
  %73 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %72, i32 0, i32 1)
  store %struct.pci_dev* %73, %struct.pci_dev** %22, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %76 = call i32 @pci_read_config_dword(%struct.pci_dev* %74, i32 124, i32* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %78 = call i32 @pci_dev_put(%struct.pci_dev* %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = lshr i32 %80, 12
  %82 = and i32 %81, 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 64, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 3, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  store i32 10, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %19, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %20, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 8
  store i32 %93, i32* %94, align 8
  %95 = call i32 @nv10CalcArbitration(%struct.TYPE_8__* %13, %struct.TYPE_7__* %14)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %41
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 4
  store i32 %102, i32* %24, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %108, %99
  %105 = load i32, i32* %24, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %24, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %104

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 3
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %41
  ret void
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32*, i32) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
