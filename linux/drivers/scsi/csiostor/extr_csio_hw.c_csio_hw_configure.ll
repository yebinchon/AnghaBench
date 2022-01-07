; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i8, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.csio_hw*, i32)* }

@n_err_fatal = common dso_local global i32 0, align 4
@CSIO_HWE_FATAL = common dso_local global i32 0, align 4
@PL_REV_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to get serial flash params rv:%d\0A\00", align 1
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_COMP_TIMEOUT = common dso_local global i32 0, align 4
@MEMWIN_CSIOSTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Firmware revision\00", align 1
@CSIO_DEV_STATE_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Firmware doesn't support Firmware Configuration files\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not initialize adapter, error%d\0A\00", align 1
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@CSIO_HWE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_configure(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %7 = call i32 @csio_hw_dev_ready(%struct.csio_hw* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %12 = load i32, i32* @n_err_fatal, align 4
  %13 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %11, i32 %12)
  %14 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 2
  %16 = load i32, i32* @CSIO_HWE_FATAL, align 4
  %17 = call i32 @csio_post_event(i32* %15, i32 %16)
  br label %195

18:                                               ; preds = %1
  %19 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %20 = load i32, i32* @PL_REV_A, align 4
  %21 = call i64 @csio_rd_reg32(%struct.csio_hw* %19, i32 %20)
  %22 = trunc i64 %21 to i8
  %23 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %24 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 8
  %25 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %26 = call i32 @csio_hw_get_flash_params(%struct.csio_hw* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @csio_err(%struct.csio_hw* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %34 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %33, i32 0, i32 2
  %35 = load i32, i32* @CSIO_HWE_FATAL, align 4
  %36 = call i32 @csio_post_event(i32* %34, i32 %35)
  br label %195

37:                                               ; preds = %18
  %38 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %39 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @pci_is_pcie(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %45 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %48 = load i32, i32* @PCI_EXP_DEVCTL2_COMP_TIMEOUT, align 4
  %49 = call i32 @pcie_capability_clear_and_set_word(i32 %46, i32 %47, i32 %48, i32 13)
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %52 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %51, i32 0, i32 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.csio_hw*, i32)*, i32 (%struct.csio_hw*, i32)** %54, align 8
  %56 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %57 = load i32, i32* @MEMWIN_CSIOSTOR, align 4
  %58 = call i32 %55(%struct.csio_hw* %56, i32 %57)
  %59 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %60 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %61 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %60, i32 0, i32 6
  %62 = call i32 @csio_hw_get_fw_version(%struct.csio_hw* %59, i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %195

66:                                               ; preds = %50
  %67 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %68 = call i32 @csio_hw_print_fw_version(%struct.csio_hw* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %70 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %71 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %70, i32 0, i32 1
  %72 = call i32 @csio_do_hello(%struct.csio_hw* %69, i64* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %77 = load i32, i32* @n_err_fatal, align 4
  %78 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %76, i32 %77)
  %79 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %80 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %79, i32 0, i32 2
  %81 = load i32, i32* @CSIO_HWE_FATAL, align 4
  %82 = call i32 @csio_post_event(i32* %80, i32 %81)
  br label %195

83:                                               ; preds = %66
  %84 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %85 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %86 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %85, i32 0, i32 7
  %87 = call i32 @csio_hw_get_vpd_params(%struct.csio_hw* %84, i32* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %195

91:                                               ; preds = %83
  %92 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %93 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %94 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %93, i32 0, i32 6
  %95 = call i32 @csio_hw_get_fw_version(%struct.csio_hw* %92, i32* %94)
  %96 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %97 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %98 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %97, i32 0, i32 5
  %99 = call i32 @csio_hw_get_tp_version(%struct.csio_hw* %96, i32* %98)
  %100 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %101 = call i64 @csio_is_hw_master(%struct.csio_hw* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %157

103:                                              ; preds = %91
  %104 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %105 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %103
  %110 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %111 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %110, i32 0, i32 4
  %112 = call i32 @spin_unlock_irq(i32* %111)
  %113 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %114 = call i32 @csio_hw_flash_fw(%struct.csio_hw* %113, i32* %3)
  store i32 %114, i32* %4, align 4
  %115 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %116 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %115, i32 0, i32 4
  %117 = call i32 @spin_lock_irq(i32* %116)
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %195

121:                                              ; preds = %109
  %122 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %123 = call i32 @csio_hw_check_fwver(%struct.csio_hw* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %195

127:                                              ; preds = %121
  %128 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %129 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %130 = call i32 @csio_hw_check_fwconfig(%struct.csio_hw* %128, i32* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %135 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %195

136:                                              ; preds = %127
  %137 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %140 = call i32 @csio_hw_use_fwconfig(%struct.csio_hw* %137, i32 %138, i32* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @ENOENT, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %195

149:                                              ; preds = %136
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %195

156:                                              ; preds = %149
  br label %194

157:                                              ; preds = %103, %91
  %158 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %159 = call i32 @csio_hw_check_fwver(%struct.csio_hw* %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %195

163:                                              ; preds = %157
  %164 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %165 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @CSIO_DEV_STATE_INIT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %193

169:                                              ; preds = %163
  %170 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %171 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %172 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %176 = call i32 @csio_get_device_params(%struct.csio_hw* %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %195

180:                                              ; preds = %169
  %181 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %182 = call i32 @csio_config_device_caps(%struct.csio_hw* %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %195

186:                                              ; preds = %180
  %187 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %188 = call i32 @csio_wr_sge_init(%struct.csio_hw* %187)
  %189 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %190 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %189, i32 0, i32 2
  %191 = load i32, i32* @CSIO_HWE_INIT, align 4
  %192 = call i32 @csio_post_event(i32* %190, i32 %191)
  br label %195

193:                                              ; preds = %163
  br label %194

194:                                              ; preds = %193, %156
  br label %195

195:                                              ; preds = %194, %186, %185, %179, %162, %152, %145, %133, %126, %120, %90, %75, %65, %29, %10
  ret void
}

declare dso_local i32 @csio_hw_dev_ready(%struct.csio_hw*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i64 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_hw_get_flash_params(%struct.csio_hw*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(i32, i32, i32, i32) #1

declare dso_local i32 @csio_hw_get_fw_version(%struct.csio_hw*, i32*) #1

declare dso_local i32 @csio_hw_print_fw_version(%struct.csio_hw*, i8*) #1

declare dso_local i32 @csio_do_hello(%struct.csio_hw*, i64*) #1

declare dso_local i32 @csio_hw_get_vpd_params(%struct.csio_hw*, i32*) #1

declare dso_local i32 @csio_hw_get_tp_version(%struct.csio_hw*, i32*) #1

declare dso_local i64 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_hw_flash_fw(%struct.csio_hw*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_hw_check_fwver(%struct.csio_hw*) #1

declare dso_local i32 @csio_hw_check_fwconfig(%struct.csio_hw*, i32*) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @csio_hw_use_fwconfig(%struct.csio_hw*, i32, i32*) #1

declare dso_local i32 @csio_get_device_params(%struct.csio_hw*) #1

declare dso_local i32 @csio_config_device_caps(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_sge_init(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
