; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type3_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_program_hpx_type3_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hpx_type3 = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Encountered _HPX type 3 with unsupported config space location\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Applied _HPX3 at [0x%x]: 0x%08x -> 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hpx_type3*)* @program_hpx_type3_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_hpx_type3_register(%struct.pci_dev* %0, %struct.hpx_type3* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpx_type3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hpx_type3* %1, %struct.hpx_type3** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @hpx3_device_type(%struct.pci_dev* %10)
  %12 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %13 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @hpx3_function_type(%struct.pci_dev* %19)
  %21 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %22 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %123

27:                                               ; preds = %18
  %28 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %29 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %65 [
    i32 131, label %31
    i32 130, label %32
    i32 129, label %42
    i32 128, label %64
    i32 132, label %64
  ]

31:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %68

32:                                               ; preds = %27
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %35 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pci_find_capability(%struct.pci_dev* %33, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %123

41:                                               ; preds = %32
  br label %68

42:                                               ; preds = %27
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %45 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pci_find_ext_capability(%struct.pci_dev* %43, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %123

51:                                               ; preds = %42
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @pci_read_config_dword(%struct.pci_dev* %52, i64 %53, i32* %7)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @PCI_EXT_CAP_VER(i32 %55)
  %57 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %58 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hpx3_cap_ver_matches(i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %123

63:                                               ; preds = %51
  br label %68

64:                                               ; preds = %27, %27
  br label %65

65:                                               ; preds = %27, %64
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = call i32 @pci_warn(%struct.pci_dev* %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %123

68:                                               ; preds = %63, %41, %31
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %72 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %69, i64 %74, i32* %5)
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %78 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %76, %79
  %81 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %82 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %123

86:                                               ; preds = %68
  %87 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %90 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = call i32 @pci_read_config_dword(%struct.pci_dev* %87, i64 %92, i32* %6)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %8, align 4
  %95 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %96 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %101 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %86
  br label %123

109:                                              ; preds = %86
  %110 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.hpx_type3*, %struct.hpx_type3** %4, align 8
  %113 = getelementptr inbounds %struct.hpx_type3, %struct.hpx_type3* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pci_write_config_dword(%struct.pci_dev* %110, i64 %115, i32 %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @pci_dbg(%struct.pci_dev* %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %109, %108, %85, %65, %62, %50, %40, %26, %17
  ret void
}

declare dso_local i32 @hpx3_device_type(%struct.pci_dev*) #1

declare dso_local i32 @hpx3_function_type(%struct.pci_dev*) #1

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @hpx3_cap_ver_matches(i32, i32) #1

declare dso_local i32 @PCI_EXT_CAP_VER(i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
