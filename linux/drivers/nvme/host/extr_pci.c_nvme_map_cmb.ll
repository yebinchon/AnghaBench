; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_cmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_cmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nvme_dev = type { i32, i32, i32, %struct.TYPE_4__, i8*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@NVME_REG_CMBSZ = common dso_local global i64 0, align 8
@NVME_REG_CMBLOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to register the CMB\0A\00", align 1
@use_cmb_sqes = common dso_local global i64 0, align 8
@NVME_CMBSZ_SQS = common dso_local global i32 0, align 4
@NVME_CMBSZ_WDS = common dso_local global i32 0, align 4
@NVME_CMBSZ_RDS = common dso_local global i32 0, align 4
@dev_attr_cmb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to add sysfs attribute for CMB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*)* @nvme_map_cmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_map_cmb(%struct.nvme_dev* %0) #0 {
  %2 = alloca %struct.nvme_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %2, align 8
  %8 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @NVME_REG_CMBSZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i8* @readl(i64 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %135

33:                                               ; preds = %17
  %34 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %35 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @NVME_REG_CMBLOC, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i8* @readl(i64 %39)
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %42 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %44 = call i32 @nvme_cmb_size_unit(%struct.nvme_dev* %43)
  %45 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %46 = call i32 @nvme_cmb_size(%struct.nvme_dev* %45)
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %3, align 4
  %48 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %49 = call i32 @nvme_cmb_size_unit(%struct.nvme_dev* %48)
  %50 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @NVME_CMB_OFST(i8* %52)
  %54 = mul nsw i32 %49, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %56 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @NVME_CMB_BIR(i8* %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @pci_resource_len(%struct.pci_dev* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %33
  br label %135

66:                                               ; preds = %33
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @pci_p2pdma_add_resource(%struct.pci_dev* %77, i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %85 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 @dev_warn(%struct.TYPE_5__* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %135

89:                                               ; preds = %76
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %92 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* @use_cmb_sqes, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %97 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NVME_CMBSZ_SQS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %95, %89
  %103 = phi i1 [ false, %89 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %106 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %108 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NVME_CMBSZ_WDS, align 4
  %111 = load i32, i32* @NVME_CMBSZ_RDS, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = load i32, i32* @NVME_CMBSZ_WDS, align 4
  %115 = load i32, i32* @NVME_CMBSZ_RDS, align 4
  %116 = or i32 %114, %115
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %102
  %119 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %120 = call i32 @pci_p2pmem_publish(%struct.pci_dev* %119, i32 1)
  br label %121

121:                                              ; preds = %118, %102
  %122 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %123 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i64 @sysfs_add_file_to_group(i32* %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_cmb, i32 0, i32 0), i32* null)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.nvme_dev*, %struct.nvme_dev** %2, align 8
  %131 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = call i32 @dev_warn(%struct.TYPE_5__* %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %16, %32, %65, %83, %129, %121
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @nvme_cmb_size_unit(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_cmb_size(%struct.nvme_dev*) #1

declare dso_local i32 @NVME_CMB_OFST(i8*) #1

declare dso_local i32 @NVME_CMB_BIR(i8*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_p2pdma_add_resource(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pci_p2pmem_publish(%struct.pci_dev*, i32) #1

declare dso_local i64 @sysfs_add_file_to_group(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
