; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fatal_axi_int_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_fatal_axi_int_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_hw_error = type { i32, i32, i64, i64, %struct.hisi_sas_hw_error* }
%struct.hisi_hba = type { %struct.hisi_sas_device*, i32, i32, %struct.pci_dev*, %struct.device* }
%struct.hisi_sas_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }

@ENT_INT_SRC_MSK3 = common dso_local global i64 0, align 8
@ENT_INT_SRC3 = common dso_local global i64 0, align 8
@fatal_axi_error = common dso_local global %struct.hisi_sas_hw_error* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s error (0x%x) found!\0A\00", align 1
@AXI_MASTER_CFG_BASE = common dso_local global i64 0, align 8
@AM_CTRL_GLOBAL = common dso_local global i64 0, align 8
@AM_CTRL_SHUTDOWN_REQ_MSK = common dso_local global i32 0, align 4
@ENT_INT_SRC3_ITC_INT_OFF = common dso_local global i32 0, align 4
@ITCT_CLR = common dso_local global i64 0, align 8
@ITCT_DEV_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"clear ITCT ok\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fatal_axi_int_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatal_axi_int_v3_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hisi_sas_hw_error*, align 8
  %12 = alloca %struct.hisi_sas_hw_error*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hisi_sas_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.hisi_hba*
  store %struct.hisi_hba* %19, %struct.hisi_hba** %7, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 4
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %9, align 8
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %27 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %28 = call i32 @hisi_sas_read32(%struct.hisi_hba* %26, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %30 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 122624
  %33 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i64 %30, i32 %32)
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %35 = load i64, i64* @ENT_INT_SRC3, align 8
  %36 = call i32 @hisi_sas_read32(%struct.hisi_hba* %34, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %143, %2
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @fatal_axi_error, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %146

46:                                               ; preds = %41
  %47 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @fatal_axi_error, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %47, i64 %49
  store %struct.hisi_sas_hw_error* %50, %struct.hisi_sas_hw_error** %11, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %11, align 8
  %53 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %143

58:                                               ; preds = %46
  %59 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %11, align 8
  %60 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %59, i32 0, i32 4
  %61 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %60, align 8
  %62 = icmp ne %struct.hisi_sas_hw_error* %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  %64 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %11, align 8
  %65 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %64, i32 0, i32 4
  %66 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %65, align 8
  store %struct.hisi_sas_hw_error* %66, %struct.hisi_sas_hw_error** %12, align 8
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %68 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %11, align 8
  %69 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @hisi_sas_read32(%struct.hisi_hba* %67, i64 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %105, %63
  %73 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %74 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %79 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ true, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %87 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %105

92:                                               ; preds = %84
  %93 = load %struct.device*, %struct.device** %8, align 8
  %94 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %95 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %96, i32 %97)
  %99 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %100 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %103 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %102, i32 0, i32 1
  %104 = call i32 @queue_work(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %92, %91
  %106 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %12, align 8
  %107 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %106, i32 1
  store %struct.hisi_sas_hw_error* %107, %struct.hisi_sas_hw_error** %12, align 8
  br label %72

108:                                              ; preds = %82
  br label %122

109:                                              ; preds = %58
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %11, align 8
  %112 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %113, i32 %114)
  %116 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %117 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %120 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %119, i32 0, i32 1
  %121 = call i32 @queue_work(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %109, %108
  %123 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 33
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %129 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %130 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @hisi_sas_read32(%struct.hisi_hba* %128, i64 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* @AM_CTRL_SHUTDOWN_REQ_MSK, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %137 = load i64, i64* @AXI_MASTER_CFG_BASE, align 8
  %138 = load i64, i64* @AM_CTRL_GLOBAL, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @hisi_sas_write32(%struct.hisi_hba* %136, i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %127, %122
  br label %143

143:                                              ; preds = %142, %57
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %41

146:                                              ; preds = %41
  %147 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %148 = call i32 @fatal_ecc_int_v3_hw(%struct.hisi_hba* %147)
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ENT_INT_SRC3_ITC_INT_OFF, align 4
  %151 = call i32 @BIT(i32 %150)
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %176

154:                                              ; preds = %146
  %155 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %156 = load i64, i64* @ITCT_CLR, align 8
  %157 = call i32 @hisi_sas_read32(%struct.hisi_hba* %155, i64 %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @ITCT_DEV_MSK, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %16, align 4
  %161 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %162 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %161, i32 0, i32 0
  %163 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %163, i64 %165
  store %struct.hisi_sas_device* %166, %struct.hisi_sas_device** %17, align 8
  %167 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %168 = load i64, i64* @ITCT_CLR, align 8
  %169 = call i32 @hisi_sas_write32(%struct.hisi_hba* %167, i64 %168, i32 0)
  %170 = load %struct.device*, %struct.device** %8, align 8
  %171 = call i32 @dev_dbg(%struct.device* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %172 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %17, align 8
  %173 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @complete(i32 %174)
  br label %176

176:                                              ; preds = %154, %146
  %177 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %178 = load i64, i64* @ENT_INT_SRC3, align 8
  %179 = load i32, i32* %5, align 4
  %180 = and i32 %179, 122624
  %181 = call i32 @hisi_sas_write32(%struct.hisi_hba* %177, i64 %178, i32 %180)
  %182 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %183 = load i64, i64* @ENT_INT_SRC_MSK3, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @hisi_sas_write32(%struct.hisi_hba* %182, i64 %183, i32 %184)
  %186 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %186
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @fatal_ecc_int_v3_hw(%struct.hisi_hba*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
