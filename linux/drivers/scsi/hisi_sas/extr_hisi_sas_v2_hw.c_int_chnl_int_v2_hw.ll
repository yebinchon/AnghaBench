; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_int_chnl_int_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_int_chnl_int_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_hw_error = type { i32, i32 }
%struct.hisi_hba = type { %struct.hisi_sas_phy*, i32, i32, %struct.device* }
%struct.hisi_sas_phy = type { i32 }
%struct.device = type { i32 }

@ENT_INT_SRC_MSK3 = common dso_local global i32 0, align 4
@ENT_INT_SRC_MSK3_ENT95_MSK_MSK = common dso_local global i32 0, align 4
@HGC_INVLD_DQE_INFO = common dso_local global i32 0, align 4
@HGC_INVLD_DQE_INFO_FB_CH3_OFF = common dso_local global i32 0, align 4
@CHL_INT0 = common dso_local global i32 0, align 4
@CHL_INT1 = common dso_local global i32 0, align 4
@CHL_INT2 = common dso_local global i32 0, align 4
@port_ecc_axi_error = common dso_local global %struct.hisi_sas_hw_error* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s error (phy%d 0x%x) found!\0A\00", align 1
@CHL_INT2_SL_IDAF_TOUT_CONF_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"phy%d identify timeout\0A\00", align 1
@HISI_PHYE_LINK_RESET = common dso_local global i32 0, align 4
@CHL_INT0_SL_RX_BCST_ACK_MSK = common dso_local global i32 0, align 4
@CHL_INT0_PHY_RDY_MSK = common dso_local global i32 0, align 4
@CHL_INT0_HOTPLUG_TOUT_MSK = common dso_local global i32 0, align 4
@CHL_INT0_SL_PHY_ENABLE_MSK = common dso_local global i32 0, align 4
@CHL_INT0_NOT_RDY_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @int_chnl_int_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_chnl_int_v2_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hisi_sas_hw_error*, align 8
  %16 = alloca %struct.hisi_sas_phy*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.hisi_hba*
  store %struct.hisi_hba* %18, %struct.hisi_hba** %5, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 3
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %6, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %23 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %24 = call i32 @hisi_sas_read32(%struct.hisi_hba* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @ENT_INT_SRC_MSK3_ENT95_MSK_MSK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %30 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hisi_sas_write32(%struct.hisi_hba* %29, i32 %30, i32 %31)
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %34 = load i32, i32* @HGC_INVLD_DQE_INFO, align 4
  %35 = call i32 @hisi_sas_read32(%struct.hisi_hba* %33, i32 %34)
  %36 = load i32, i32* @HGC_INVLD_DQE_INFO_FB_CH3_OFF, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 511
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %180, %2
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %188

42:                                               ; preds = %39
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @CHL_INT0, align 4
  %46 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CHL_INT1, align 4
  %50 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @CHL_INT2, align 4
  %54 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %51, i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %95, %63
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @port_ecc_axi_error, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @port_ecc_axi_error, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %70, i64 %72
  store %struct.hisi_sas_hw_error* %73, %struct.hisi_sas_hw_error** %15, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %15, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %95

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %15, align 8
  %84 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %90 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %93 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %92, i32 0, i32 1
  %94 = call i32 @queue_work(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %81, %80
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %64

98:                                               ; preds = %64
  %99 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @CHL_INT1, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %60, %42
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 1, %106
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %115 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %114, i32 0, i32 0
  %116 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %116, i64 %118
  store %struct.hisi_sas_phy* %119, %struct.hisi_sas_phy** %16, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @CHL_INT2_SL_IDAF_TOUT_CONF_OFF, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %16, align 8
  %130 = load i32, i32* @HISI_PHYE_LINK_RESET, align 4
  %131 = call i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy* %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %113
  %133 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @CHL_INT2, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %110, %104
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = shl i32 1, %140
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %180

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @CHL_INT0_SL_RX_BCST_ACK_MSK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %155 = call i32 @phy_bcast_v2_hw(i32 %153, %struct.hisi_hba* %154)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @CHL_INT0_PHY_RDY_MSK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @hisi_sas_phy_oob_ready(%struct.hisi_hba* %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @CHL_INT0, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @CHL_INT0_HOTPLUG_TOUT_MSK, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load i32, i32* @CHL_INT0_SL_PHY_ENABLE_MSK, align 4
  %174 = xor i32 %173, -1
  %175 = and i32 %172, %174
  %176 = load i32, i32* @CHL_INT0_NOT_RDY_MSK, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %175, %177
  %179 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %166, i32 %167, i32 %168, i32 %178)
  br label %180

180:                                              ; preds = %165, %144, %138
  %181 = load i32, i32* %10, align 4
  %182 = shl i32 1, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %9, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %39

188:                                              ; preds = %39
  %189 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %190 = load i32, i32* @ENT_INT_SRC_MSK3, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @hisi_sas_write32(%struct.hisi_hba* %189, i32 %190, i32 %191)
  %193 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %193
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy*, i32) #1

declare dso_local i32 @phy_bcast_v2_hw(i32, %struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_phy_oob_ready(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
