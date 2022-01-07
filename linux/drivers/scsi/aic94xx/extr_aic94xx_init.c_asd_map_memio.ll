; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_map_memio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_map_memio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32, %struct.asd_ha_addrspace*, i64 }
%struct.asd_ha_addrspace = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MBAR%d start or length for %s is 0.\0A\00", align 1
@ASD_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"couldn't reserve memory region for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"couldn't map MBAR%d of %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_map_memio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_map_memio(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_ha_addrspace*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %106, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %109

12:                                               ; preds = %9
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 1
  %15 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %15, i64 %20
  store %struct.asd_ha_addrspace* %21, %struct.asd_ha_addrspace** %6, align 8
  %22 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %23 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_resource_start(i32 %24, i32 %25)
  %27 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %28 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pci_resource_len(i32 %31, i32 %32)
  %34 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %35 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %37 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pci_resource_flags(i32 %38, i32 %39)
  %41 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %42 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %46 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %12
  %50 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %51 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49, %12
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 1
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pci_name(i32 %61)
  %63 = call i32 (i8*, i32, ...) @asd_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  br label %116

64:                                               ; preds = %49
  %65 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %66 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ASD_DRIVER_NAME, align 4
  %70 = call i32 @pci_request_region(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %75 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_name(i32 %76)
  %78 = call i32 (i8*, i32, ...) @asd_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %116

79:                                               ; preds = %64
  %80 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %81 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %84 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ioremap(i32 %82, i32 %85)
  %87 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %88 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %90 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %99 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pci_name(i32 %100)
  %102 = call i32 (i8*, i32, ...) @asd_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %110

105:                                              ; preds = %79
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %5, align 4
  br label %9

109:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %134

110:                                              ; preds = %93
  %111 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %112 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @pci_release_region(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %73, %54
  %117 = load i32, i32* %5, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %121 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %120, i32 0, i32 1
  %122 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %121, align 8
  %123 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %122, i64 0
  store %struct.asd_ha_addrspace* %123, %struct.asd_ha_addrspace** %6, align 8
  %124 = load %struct.asd_ha_addrspace*, %struct.asd_ha_addrspace** %6, align 8
  %125 = getelementptr inbounds %struct.asd_ha_addrspace, %struct.asd_ha_addrspace* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @iounmap(i32 %126)
  %128 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %129 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @pci_release_region(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %119, %116
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %109
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @pci_resource_flags(i32, i32) #1

declare dso_local i32 @asd_printk(i8*, i32, ...) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @pci_request_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_release_region(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
