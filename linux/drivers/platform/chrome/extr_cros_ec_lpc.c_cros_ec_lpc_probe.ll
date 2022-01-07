; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_cros_ec_lpc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i8*)*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.acpi_device = type { i32 }
%struct.cros_ec_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.device* }

@EC_LPC_ADDR_MEMMAP = common dso_local global i64 0, align 8
@EC_MEMMAP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"couldn't reserve memmap region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cros_ec_lpc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cros_ec_lpc_mec_write_bytes = common dso_local global i32 0, align 4
@EC_MEMMAP_ID = common dso_local global i64 0, align 8
@cros_ec_lpc_write_bytes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EC ID not detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EC_HOST_CMD_REGION0 = common dso_local global i64 0, align 8
@EC_HOST_CMD_REGION_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't reserve region0\0A\00", align 1
@EC_HOST_CMD_REGION1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"couldn't reserve region1\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_cmd_xfer_lpc = common dso_local global i32 0, align 4
@cros_ec_pkt_xfer_lpc = common dso_local global i32 0, align 4
@cros_ec_lpc_readmem = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"couldn't retrieve IRQ number (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"couldn't register ec_dev (%d)\0A\00", align 1
@ACPI_ALL_NOTIFY = common dso_local global i32 0, align 4
@cros_ec_lpc_acpi_notify = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to register notifier %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_lpc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_lpc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i64, i64* @EC_LPC_ADDR_MEMMAP, align 8
  %15 = load i32, i32* @EC_MEMMAP_SIZE, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = call i32 @devm_request_region(%struct.device* %13, i64 %14, i32 %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %175

25:                                               ; preds = %1
  store i32 (i64, i32, i8*)* @cros_ec_lpc_mec_read_bytes, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %26 = load i32, i32* @cros_ec_lpc_mec_write_bytes, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %27 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %28 = load i64, i64* @EC_LPC_ADDR_MEMMAP, align 8
  %29 = load i64, i64* @EC_MEMMAP_ID, align 8
  %30 = add nsw i64 %28, %29
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %32 = call i32 %27(i64 %30, i32 2, i8* %31)
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 69
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 67
  br i1 %41, label %42, label %65

42:                                               ; preds = %37, %25
  store i32 (i64, i32, i8*)* @cros_ec_lpc_read_bytes, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %43 = load i32, i32* @cros_ec_lpc_write_bytes, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 1), align 8
  %44 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %45 = load i64, i64* @EC_LPC_ADDR_MEMMAP, align 8
  %46 = load i64, i64* @EC_MEMMAP_ID, align 8
  %47 = add nsw i64 %45, %46
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %49 = call i32 %44(i64 %47, i32 2, i8* %48)
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 69
  br i1 %53, label %59, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 67
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %42
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %175

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i64, i64* @EC_HOST_CMD_REGION0, align 8
  %68 = load i32, i32* @EC_HOST_CMD_REGION_SIZE, align 4
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_name(%struct.device* %69)
  %71 = call i32 @devm_request_region(%struct.device* %66, i64 %67, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %175

78:                                               ; preds = %65
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i64, i64* @EC_HOST_CMD_REGION1, align 8
  %81 = load i32, i32* @EC_HOST_CMD_REGION_SIZE, align 4
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_name(%struct.device* %82)
  %84 = call i32 @devm_request_region(%struct.device* %79, i64 %80, i32 %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %78
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %175

91:                                               ; preds = %78
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.cros_ec_device* @devm_kzalloc(%struct.device* %92, i32 40, i32 %93)
  store %struct.cros_ec_device* %94, %struct.cros_ec_device** %7, align 8
  %95 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %96 = icmp ne %struct.cros_ec_device* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %175

100:                                              ; preds = %91
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.cros_ec_device* %102)
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %106 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %105, i32 0, i32 7
  store %struct.device* %104, %struct.device** %106, align 8
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_name(%struct.device* %107)
  %109 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %110 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @cros_ec_cmd_xfer_lpc, align 4
  %112 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %113 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @cros_ec_pkt_xfer_lpc, align 4
  %115 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %116 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @cros_ec_lpc_readmem, align 4
  %118 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %119 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %121 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %120, i32 0, i32 0
  store i32 8, i32* %121, align 8
  %122 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %123 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %122, i32 0, i32 1
  store i32 4, i32* %123, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = call i32 @platform_get_irq(%struct.platform_device* %124, i32 0)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %100
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %131 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %143

132:                                              ; preds = %100
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @ENXIO, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %175

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %128
  %144 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %145 = call i32 @cros_ec_register(%struct.cros_ec_device* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %2, align 4
  br label %175

153:                                              ; preds = %143
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %154)
  store %struct.acpi_device* %155, %struct.acpi_device** %5, align 8
  %156 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %157 = icmp ne %struct.acpi_device* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %160 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ACPI_ALL_NOTIFY, align 4
  %163 = load i32, i32* @cros_ec_lpc_acpi_notify, align 4
  %164 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %165 = call i32 @acpi_install_notify_handler(i32 %161, i32 %162, i32 %163, %struct.cros_ec_device* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i64 @ACPI_FAILURE(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %158
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @dev_warn(%struct.device* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %169, %158
  br label %174

174:                                              ; preds = %173, %153
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %148, %137, %97, %86, %73, %59, %20
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @devm_request_region(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cros_ec_lpc_mec_read_bytes(i64, i32, i8*) #1

declare dso_local i32 @cros_ec_lpc_read_bytes(i64, i32, i8*) #1

declare dso_local %struct.cros_ec_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @cros_ec_register(%struct.cros_ec_device*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.cros_ec_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
