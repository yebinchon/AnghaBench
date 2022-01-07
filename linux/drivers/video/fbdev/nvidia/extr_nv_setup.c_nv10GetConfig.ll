; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_nv10GetConfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_setup.c_nv10GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32, i32, i32, i64, i32*, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*)* @nv10GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10GetConfig(%struct.nvidia_par* %0) #0 {
  %2 = alloca %struct.nvidia_par*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %2, align 8
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %8 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 4080
  store i32 %10, i32* %4, align 4
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %12 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %11, i32 0, i32 10
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_domain_nr(i32 %15)
  %17 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %16, i32 0, i32 1)
  store %struct.pci_dev* %17, %struct.pci_dev** %3, align 8
  %18 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %19 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 416
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 124, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 6
  %28 = and i32 %27, 31
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %29, 1024
  %31 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %32 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %35 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 496
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 132, i32* %6)
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 127
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 1024
  %47 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %48 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NV_RD32(i32 %52, i32 524)
  %54 = and i32 %53, -1048576
  %55 = lshr i32 %54, 10
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %57 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %49, %39
  br label %59

59:                                               ; preds = %58, %23
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = call i32 @pci_dev_put(%struct.pci_dev* %60)
  %62 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %63 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NV_RD32(i32 %64, i32 0)
  %66 = and i32 %65, 64
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 14318, i32 13500
  %70 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %71 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %73 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %59
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 272
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %81 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @NV_RD32(i32 %82, i32 0)
  %84 = and i32 %83, 4194304
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %88 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %87, i32 0, i32 2
  store i32 27000, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89, %76, %59
  %91 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %92 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %91, i32 0, i32 6
  store i32* null, i32** %92, align 8
  %93 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %94 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %93, i32 0, i32 3
  store i32 12000, i32* %94, align 4
  %95 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %96 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 400000, i32 350000
  %101 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %102 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
