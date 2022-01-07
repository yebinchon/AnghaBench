; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pci_vpd_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VPD_LRDT = common dso_local global i8 0, align 1
@PCI_VPD_LTIN_ID_STRING = common dso_local global i8 0, align 1
@PCI_VPD_LTIN_RO_DATA = common dso_local global i8 0, align 1
@PCI_VPD_LTIN_RW_DATA = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [46 x i8] c"invalid large VPD tag %02x size at offset %zu\00", align 1
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i64 0, align 8
@PCI_VPD_SRDT_TAG_SIZE = common dso_local global i64 0, align 8
@PCI_VPD_STIN_END = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid %s VPD tag %02x at offset %zu\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i64)* @pci_vpd_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_vpd_size(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %121, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %17 = call i32 @pci_read_vpd(%struct.pci_dev* %14, i64 %15, i32 1, i8* %16)
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi i1 [ false, %9 ], [ %18, %13 ]
  br i1 %20, label %21, label %122

21:                                               ; preds = %19
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @PCI_VPD_LRDT, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %21
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %31 = call zeroext i8 @pci_vpd_lrdt_tag(i8* %30)
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @PCI_VPD_LTIN_ID_STRING, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %29
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @PCI_VPD_LTIN_RO_DATA, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @PCI_VPD_LTIN_RW_DATA, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43, %37, %29
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %54 = call i32 @pci_read_vpd(%struct.pci_dev* %50, i64 %52, i32 2, i8* %53)
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  %62 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %61)
  store i64 0, i64* %3, align 8
  br label %123

63:                                               ; preds = %49
  %64 = load i64, i64* @PCI_VPD_LRDT_TAG_SIZE, align 8
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %66 = call i64 @pci_vpd_lrdt_size(i8* %65)
  %67 = add nsw i64 %64, %66
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %63, %43
  br label %80

71:                                               ; preds = %21
  %72 = load i64, i64* @PCI_VPD_SRDT_TAG_SIZE, align 8
  %73 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %74 = call i64 @pci_vpd_srdt_size(i8* %73)
  %75 = add nsw i64 %72, %74
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %79 = call zeroext i8 @pci_vpd_srdt_tag(i8* %78)
  store i8 %79, i8* %8, align 1
  br label %80

80:                                               ; preds = %71, %70
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @PCI_VPD_STIN_END, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %3, align 8
  br label %123

88:                                               ; preds = %80
  %89 = load i8, i8* %8, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @PCI_VPD_LTIN_ID_STRING, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %88
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @PCI_VPD_LTIN_RO_DATA, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @PCI_VPD_LTIN_RW_DATA, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @PCI_VPD_LRDT, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %117 = load i8, i8* %8, align 1
  %118 = zext i8 %117 to i32
  %119 = load i64, i64* %6, align 8
  %120 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %118, i64 %119)
  store i64 0, i64* %3, align 8
  br label %123

121:                                              ; preds = %100, %94, %88
  br label %9

122:                                              ; preds = %19
  store i64 0, i64* %3, align 8
  br label %123

123:                                              ; preds = %122, %106, %86, %56
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @pci_read_vpd(%struct.pci_dev*, i64, i32, i8*) #1

declare dso_local zeroext i8 @pci_vpd_lrdt_tag(i8*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, ...) #1

declare dso_local i64 @pci_vpd_lrdt_size(i8*) #1

declare dso_local i64 @pci_vpd_srdt_size(i8*) #1

declare dso_local zeroext i8 @pci_vpd_srdt_tag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
