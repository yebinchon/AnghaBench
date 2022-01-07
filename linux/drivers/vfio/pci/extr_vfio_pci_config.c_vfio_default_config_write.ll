; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_default_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_default_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.perm_bits = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32)* @vfio_default_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_default_config_write(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.perm_bits* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perm_bits*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.perm_bits* %3, %struct.perm_bits** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.perm_bits*, %struct.perm_bits** %11, align 8
  %21 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @memcpy(i32* %15, i32* %25, i32 %26)
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %7, align 4
  br label %121

32:                                               ; preds = %6
  %33 = load %struct.perm_bits*, %struct.perm_bits** %11, align 8
  %34 = getelementptr inbounds %struct.perm_bits, %struct.perm_bits* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @memcpy(i32* %14, i32* %38, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  %46 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %47 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32* %16, i32* %51, i32 %52)
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* %16, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %16, align 4
  %67 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %68 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @memcpy(i32* %72, i32* %16, i32 %73)
  br label %75

75:                                               ; preds = %45, %32
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %75
  %82 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %83 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %82, i32 0, i32 1
  %84 = load %struct.pci_dev*, %struct.pci_dev** %83, align 8
  store %struct.pci_dev* %84, %struct.pci_dev** %17, align 8
  store i32 0, i32* %18, align 4
  %85 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @vfio_user_config_read(%struct.pci_dev* %85, i32 %86, i32* %18, i32 %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %7, align 4
  br label %121

93:                                               ; preds = %81
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %18, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = and i32 %101, %105
  %107 = load i32, i32* %18, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %18, align 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @vfio_user_config_write(%struct.pci_dev* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %93
  %117 = load i32, i32* %19, align 4
  store i32 %117, i32* %7, align 4
  br label %121

118:                                              ; preds = %93
  br label %119

119:                                              ; preds = %118, %75
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %116, %91, %30
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vfio_user_config_read(%struct.pci_dev*, i32, i32*, i32) #1

declare dso_local i32 @vfio_user_config_write(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
