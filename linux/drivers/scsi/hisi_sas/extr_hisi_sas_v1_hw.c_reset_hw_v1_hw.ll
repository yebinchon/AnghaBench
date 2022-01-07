; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_reset_hw_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_reset_hw_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i64, i64, i64, %struct.device* }
%struct.device = type { i32 }

@PHY_CTRL = common dso_local global i32 0, align 4
@PHY_CTRL_RESET_MSK = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DMA_TX_STATUS = common dso_local global i32 0, align 4
@DMA_RX_STATUS = common dso_local global i32 0, align 4
@DMA_TX_STATUS_BUSY_MSK = common dso_local global i64 0, align 8
@DMA_RX_STATUS_BUSY_MSK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AXI_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_RST\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reset failed\0A\00", align 1
@RESET_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"De-reset failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no reset method\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @reset_hw_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_hw_v1_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 5
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PHY_CTRL, align 4
  %26 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %23, i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* @PHY_CTRL_RESET_MSK, align 8
  %28 = load i64, i64* %8, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %8, align 8
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PHY_CTRL, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %30, i32 %31, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %16

38:                                               ; preds = %16
  %39 = call i32 @msleep(i32 1)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %80, %38
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %43 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 1000)
  %49 = add i64 %47, %48
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %46, %78
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DMA_TX_STATUS, align 4
  %54 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %51, i32 %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @DMA_RX_STATUS, align 4
  %58 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %55, i32 %56, i32 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @DMA_TX_STATUS_BUSY_MSK, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @DMA_RX_STATUS_BUSY_MSK, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %79

69:                                               ; preds = %63, %50
  %70 = call i32 @msleep(i32 20)
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @time_after(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %205

78:                                               ; preds = %69
  br label %50

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %40

83:                                               ; preds = %40
  %84 = load i64, i64* @jiffies, align 8
  %85 = call i64 @msecs_to_jiffies(i32 1000)
  %86 = add i64 %84, %85
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %83, %103
  %88 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %89 = load i32, i32* @AXI_CFG, align 4
  %90 = call i64 @hisi_sas_read32(%struct.hisi_hba* %88, i32 %89)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %104

94:                                               ; preds = %87
  %95 = call i32 @msleep(i32 20)
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i64 @time_after(i64 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %205

103:                                              ; preds = %94
  br label %87

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = call i64 @ACPI_HANDLE(%struct.device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = call i64 @ACPI_HANDLE(%struct.device* %109)
  %111 = call i32 @acpi_evaluate_object(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i64 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %205

120:                                              ; preds = %108
  br label %204

121:                                              ; preds = %104
  %122 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %123 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %198

126:                                              ; preds = %121
  %127 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %128 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %131 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @RESET_VALUE, align 8
  %134 = call i32 @regmap_write(i64 %129, i64 %132, i64 %133)
  %135 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %136 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %139 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 4
  %142 = load i64, i64* @RESET_VALUE, align 8
  %143 = call i32 @regmap_write(i64 %137, i64 %141, i64 %142)
  %144 = call i32 @msleep(i32 1)
  %145 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %146 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %149 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @regmap_read(i64 %147, i32 %150, i64* %6)
  %152 = load i64, i64* @RESET_VALUE, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @RESET_VALUE, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %126
  %158 = load %struct.device*, %struct.device** %7, align 8
  %159 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %205

162:                                              ; preds = %126
  %163 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %164 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %167 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 4
  %170 = load i64, i64* @RESET_VALUE, align 8
  %171 = call i32 @regmap_write(i64 %165, i64 %169, i64 %170)
  %172 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %173 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %176 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @RESET_VALUE, align 8
  %179 = call i32 @regmap_write(i64 %174, i64 %177, i64 %178)
  %180 = call i32 @msleep(i32 1)
  %181 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %182 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %185 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @regmap_read(i64 %183, i32 %186, i64* %6)
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* @RESET_VALUE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %162
  %193 = load %struct.device*, %struct.device** %7, align 8
  %194 = call i32 @dev_err(%struct.device* %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %205

197:                                              ; preds = %162
  br label %203

198:                                              ; preds = %121
  %199 = load %struct.device*, %struct.device** %7, align 8
  %200 = call i32 @dev_warn(%struct.device* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %205

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %120
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %198, %192, %157, %115, %100, %75
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i64 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_object(i64, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i64, i64, i64) #1

declare dso_local i32 @regmap_read(i64, i32, i64*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
