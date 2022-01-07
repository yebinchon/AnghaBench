; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_reset_hw_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_reset_hw_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i64, i64, i64, %struct.device* }
%struct.device = type { i32 }

@DLVRY_QUEUE_ENABLE = common dso_local global i32 0, align 4
@PHY_CFG = common dso_local global i32 0, align 4
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
@.str.2 = private unnamed_addr constant [17 x i8] c"SAS reset fail.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SAS de-reset fail.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"no reset method\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @reset_hw_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_hw_v2_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 5
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 2097151, i32* %5, align 4
  br label %23

22:                                               ; preds = %1
  store i32 524287, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %25 = load i32, i32* @DLVRY_QUEUE_ENABLE, align 4
  %26 = call i32 @hisi_sas_write32(%struct.hisi_hba* %24, i32 %25, i32 0)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %30 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PHY_CFG, align 4
  %37 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %34, i32 %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @PHY_CTRL_RESET_MSK, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %9, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PHY_CFG, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %42, i32 %43, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %27

50:                                               ; preds = %27
  %51 = call i32 @udelay(i32 50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %92, %50
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = load i64, i64* @jiffies, align 8
  %60 = call i64 @msecs_to_jiffies(i32 1000)
  %61 = add i64 %59, %60
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %90
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DMA_TX_STATUS, align 4
  %66 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %63, i32 %64, i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DMA_RX_STATUS, align 4
  %70 = call i64 @hisi_sas_phy_read32(%struct.hisi_hba* %67, i32 %68, i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @DMA_TX_STATUS_BUSY_MSK, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @DMA_RX_STATUS_BUSY_MSK, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %91

81:                                               ; preds = %75, %62
  %82 = call i32 @msleep(i32 20)
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @time_after(i64 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %220

90:                                               ; preds = %81
  br label %62

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %52

95:                                               ; preds = %52
  %96 = load i64, i64* @jiffies, align 8
  %97 = call i64 @msecs_to_jiffies(i32 1000)
  %98 = add i64 %96, %97
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %95, %115
  %100 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %101 = load i32, i32* @AXI_CFG, align 4
  %102 = call i64 @hisi_sas_read32(%struct.hisi_hba* %100, i32 %101)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %116

106:                                              ; preds = %99
  %107 = call i32 @msleep(i32 20)
  %108 = load i64, i64* @jiffies, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @time_after(i64 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %220

115:                                              ; preds = %106
  br label %99

116:                                              ; preds = %105
  %117 = load %struct.device*, %struct.device** %8, align 8
  %118 = call i64 @ACPI_HANDLE(%struct.device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load %struct.device*, %struct.device** %8, align 8
  %122 = call i64 @ACPI_HANDLE(%struct.device* %121)
  %123 = call i32 @acpi_evaluate_object(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @ACPI_FAILURE(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.device*, %struct.device** %8, align 8
  %129 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %220

132:                                              ; preds = %120
  br label %219

133:                                              ; preds = %116
  %134 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %135 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %213

138:                                              ; preds = %133
  %139 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %140 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %143 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @regmap_write(i64 %141, i64 %144, i32 %145)
  %147 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %148 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %151 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @regmap_write(i64 %149, i64 %153, i32 %154)
  %156 = call i32 @msleep(i32 1)
  %157 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %158 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %161 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @regmap_read(i64 %159, i32 %162, i64* %6)
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %6, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = and i64 %166, %168
  %170 = icmp ne i64 %165, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %138
  %172 = load %struct.device*, %struct.device** %8, align 8
  %173 = call i32 @dev_err(%struct.device* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %220

176:                                              ; preds = %138
  %177 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %178 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %181 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @regmap_write(i64 %179, i64 %183, i32 %184)
  %186 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %187 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %190 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @regmap_write(i64 %188, i64 %191, i32 %192)
  %194 = call i32 @msleep(i32 1)
  %195 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %196 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %199 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @regmap_read(i64 %197, i32 %200, i64* %6)
  %202 = load i64, i64* %6, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = and i64 %202, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %176
  %208 = load %struct.device*, %struct.device** %8, align 8
  %209 = call i32 @dev_err(%struct.device* %208, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %220

212:                                              ; preds = %176
  br label %218

213:                                              ; preds = %133
  %214 = load %struct.device*, %struct.device** %8, align 8
  %215 = call i32 @dev_err(%struct.device* %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %220

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %132
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %219, %213, %207, %171, %127, %112, %87
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i64 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_object(i64, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i64, i64, i32) #1

declare dso_local i32 @regmap_read(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
