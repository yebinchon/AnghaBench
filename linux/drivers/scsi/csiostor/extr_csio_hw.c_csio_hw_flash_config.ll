; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i64 }
%union.anon = type { i32 }

@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@FW_CFG_NAME_T5 = common dso_local global i8* null, align 8
@FW_CFG_NAME_T6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"could not find config file %s, err: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"config file upgraded to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"/lib/firmware/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32*, i8*)* @csio_hw_flash_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_flash_config(%struct.csio_hw* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %union.anon, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %21 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %20, i32 0, i32 0
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  store %struct.pci_dev* %22, %struct.pci_dev** %10, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  store %struct.device* %24, %struct.device** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @csio_is_t5(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i8*, i8** @FW_CFG_NAME_T5, align 8
  store i8* %33, i8** %16, align 8
  br label %36

34:                                               ; preds = %3
  %35 = load i8*, i8** @FW_CFG_NAME_T6, align 8
  store i8* %35, i8** %16, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i8*, i8** %16, align 8
  %38 = load %struct.device*, %struct.device** %11, align 8
  %39 = call i64 @request_firmware(%struct.firmware** %9, i8* %37, %struct.device* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @csio_err(%struct.csio_hw* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %165

48:                                               ; preds = %36
  %49 = load %struct.firmware*, %struct.firmware** %9, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.firmware*, %struct.firmware** %9, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = srem i32 %57, 4
  %59 = sub nsw i32 4, %58
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.firmware*, %struct.firmware** %9, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32* @kzalloc(i32 %65, i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %159

73:                                               ; preds = %60
  %74 = load i32*, i32** %14, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load %struct.firmware*, %struct.firmware** %9, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.firmware*, %struct.firmware** %9, align 8
  %81 = getelementptr inbounds %struct.firmware, %struct.firmware* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(i8* %75, i8* %79, i32 %82)
  %84 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @csio_hw_check_fwconfig(%struct.csio_hw* %84, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %159

91:                                               ; preds = %73
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FW_PARAMS_PARAM_Y_G(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @FW_PARAMS_PARAM_Z_G(i32 %96)
  %98 = shl i32 %97, 16
  store i32 %98, i32* %13, align 4
  %99 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.firmware*, %struct.firmware** %9, align 8
  %103 = getelementptr inbounds %struct.firmware, %struct.firmware* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @csio_memory_write(%struct.csio_hw* %99, i32 %100, i32 %101, i32 %106, i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %91
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %111
  %115 = load %struct.firmware*, %struct.firmware** %9, align 8
  %116 = getelementptr inbounds %struct.firmware, %struct.firmware* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, -4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %18, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = load i64, i64* %18, align 8
  %122 = lshr i64 %121, 2
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = bitcast %union.anon* %17 to i32*
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %135, %114
  %128 = load i32, i32* %19, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = bitcast %union.anon* %17 to [4 x i8]*
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %131, i64 0, i64 %133
  store i8 0, i8* %134, align 1
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %127

138:                                              ; preds = %127
  %139 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %18, align 8
  %144 = add i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = bitcast %union.anon* %17 to i32*
  %147 = call i32 @csio_memory_write(%struct.csio_hw* %139, i32 %140, i32 %145, i32 4, i32* %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %138, %111, %91
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = call i32 @csio_info(%struct.csio_hw* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  %155 = load i8*, i8** %7, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 @snprintf(i8* %155, i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %151, %148
  br label %159

159:                                              ; preds = %158, %88, %70
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @kfree(i32* %160)
  %162 = load %struct.firmware*, %struct.firmware** %9, align 8
  %163 = call i32 @release_firmware(%struct.firmware* %162)
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %159, %41
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i8*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @csio_hw_check_fwconfig(%struct.csio_hw*, i32*) #1

declare dso_local i32 @FW_PARAMS_PARAM_Y_G(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Z_G(i32) #1

declare dso_local i32 @csio_memory_write(%struct.csio_hw*, i32, i32, i32, i32*) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
