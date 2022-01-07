; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_pci = type { i64, i64, %struct.device* }
%struct.device = type { i32 }

@V3_PCI_STAT = common dso_local global i64 0, align 8
@V3_PCI_STAT_PAR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"parity error interrupt\0A\00", align 1
@V3_PCI_STAT_SYS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"system error interrupt\0A\00", align 1
@V3_PCI_STAT_M_ABORT_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"master abort error interrupt\0A\00", align 1
@V3_PCI_STAT_T_ABORT_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"target abort error interrupt\0A\00", align 1
@V3_LB_ISTAT = common dso_local global i64 0, align 8
@V3_LB_ISTAT_MAILBOX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"PCI mailbox interrupt\0A\00", align 1
@V3_LB_ISTAT_PCI_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"PCI target LB->PCI READ abort interrupt\0A\00", align 1
@V3_LB_ISTAT_PCI_WR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"PCI target LB->PCI WRITE abort interrupt\0A\00", align 1
@V3_LB_ISTAT_PCI_INT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"PCI pin interrupt\0A\00", align 1
@V3_LB_ISTAT_PCI_PERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"PCI parity error interrupt\0A\00", align 1
@V3_LB_ISTAT_I2O_QWR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"I2O inbound post queue interrupt\0A\00", align 1
@V3_LB_ISTAT_DMA1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"DMA channel 1 interrupt\0A\00", align 1
@V3_LB_ISTAT_DMA0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"DMA channel 0 interrupt\0A\00", align 1
@INTEGRATOR_SC_PCI_OFFSET = common dso_local global i32 0, align 4
@INTEGRATOR_SC_PCI_ENABLE = common dso_local global i32 0, align 4
@INTEGRATOR_SC_PCI_INTCLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @v3_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v3_pci*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v3_pci*
  store %struct.v3_pci* %9, %struct.v3_pci** %5, align 8
  %10 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %11 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %14 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V3_PCI_STAT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readw(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @V3_PCI_STAT_PAR_ERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @V3_PCI_STAT_SYS_ERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @V3_PCI_STAT_M_ABORT_ERR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @V3_PCI_STAT_T_ABORT_ERR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %53 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V3_PCI_STAT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %51, i64 %56)
  %58 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %59 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V3_LB_ISTAT, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readb(i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @V3_LB_ISTAT_MAILBOX, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %50
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @V3_LB_ISTAT_PCI_RD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @V3_LB_ISTAT_PCI_WR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @V3_LB_ISTAT_PCI_INT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = call i32 @dev_info(%struct.device* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @V3_LB_ISTAT_PCI_PERR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @V3_LB_ISTAT_I2O_QWR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i32 @dev_info(%struct.device* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @V3_LB_ISTAT_DMA1, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = call i32 @dev_info(%struct.device* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @V3_LB_ISTAT_DMA0, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @dev_info(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %129 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @V3_LB_ISTAT, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writeb(i32 0, i64 %132)
  %134 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %135 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %127
  %139 = load %struct.v3_pci*, %struct.v3_pci** %5, align 8
  %140 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @INTEGRATOR_SC_PCI_OFFSET, align 4
  %143 = load i32, i32* @INTEGRATOR_SC_PCI_ENABLE, align 4
  %144 = load i32, i32* @INTEGRATOR_SC_PCI_INTCLR, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @regmap_write(i64 %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %138, %127
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %148
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
