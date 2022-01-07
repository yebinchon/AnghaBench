; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_set_crbwindow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_pci_set_crbwindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32 }

@QLA82XX_CRB_PCIX_HOST = common dso_local global i64 0, align 8
@QLA82XX_CRB_DDR_NET = common dso_local global i64 0, align 8
@QLA82XX_CRB_PCIX_HOST2 = common dso_local global i64 0, align 8
@QLA82XX_CRB_MAX = common dso_local global i64 0, align 8
@QLA82XX_PCI_DIRECT_CRB = common dso_local global i64 0, align 8
@QLA82XX_PCI_CAMQM_MAX = common dso_local global i64 0, align 8
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"%s: Warning: unm_nic_pci_set_crbwindow called with an unknown address(%llx).\0A\00", align 1
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qla_hw_data*, i64)* @qla82xx_pci_set_crbwindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla82xx_pci_set_crbwindow(%struct.qla_hw_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @pci_get_drvdata(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @QLA82XX_CRB_PCIX_HOST, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @QLA82XX_CRB_DDR_NET, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %3, align 8
  br label %75

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @QLA82XX_CRB_PCIX_HOST, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @QLA82XX_CRB_PCIX_HOST2, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @WARN_ON(i32 1)
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %3, align 8
  br label %75

37:                                               ; preds = %24, %20
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @QLA82XX_CRB_PCIX_HOST2, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @QLA82XX_CRB_MAX, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @QLA82XX_CRB_PCIX_HOST2, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* @QLA82XX_CRB_PCIX_HOST, align 8
  %50 = add nsw i64 %48, %49
  store i64 %50, i64* %5, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %3, align 8
  br label %75

57:                                               ; preds = %45
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @QLA82XX_PCI_DIRECT_CRB, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @QLA82XX_PCI_CAMQM_MAX, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %3, align 8
  br label %75

67:                                               ; preds = %61, %57
  br label %68

68:                                               ; preds = %67, %41, %37
  %69 = load i32, i32* @ql_dbg_p3p, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ql_dbg(i32 %69, i32* %70, i32 45057, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %72)
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %68, %65, %55, %35, %18
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
