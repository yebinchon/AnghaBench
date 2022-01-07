; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_nci.c_s3fwrn5_nci_rf_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_nci.c_s3fwrn5_nci_rf_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.nci_prop_fw_cfg_cmd = type { i32, i32, i32 }
%struct.nci_prop_set_rfreg_cmd = type { i64, i32 }
%struct.nci_prop_stop_rfreg_cmd = type { i32 }

@NCI_PROP_FW_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rfreg configuration update: %s\0A\00", align 1
@NCI_PROP_START_RFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to start rfreg update\0A\00", align 1
@S3FWRN5_RFREG_SECTION_SIZE = common dso_local global i32 0, align 4
@NCI_PROP_SET_RFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rfreg update error (code=%d)\0A\00", align 1
@NCI_PROP_STOP_RFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to stop rfreg update\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"rfreg configuration update: success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3fwrn5_nci_rf_configure(%struct.s3fwrn5_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3fwrn5_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.nci_prop_fw_cfg_cmd, align 4
  %8 = alloca %struct.nci_prop_set_rfreg_cmd, align 8
  %9 = alloca %struct.nci_prop_stop_rfreg_cmd, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.s3fwrn5_info* %0, %struct.s3fwrn5_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %16 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @request_firmware(%struct.firmware** %6, i8* %14, i32* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %3, align 4
  br label %179

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.firmware*, %struct.firmware** %6, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.firmware*, %struct.firmware** %6, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %11, align 4
  br label %27

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, %struct.nci_prop_fw_cfg_cmd* %7, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, %struct.nci_prop_fw_cfg_cmd* %7, i32 0, i32 1
  store i32 255, i32* %49, align 4
  %50 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, %struct.nci_prop_fw_cfg_cmd* %7, i32 0, i32 2
  store i32 255, i32* %50, align 4
  %51 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %52 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* @NCI_PROP_FW_CFG, align 4
  %55 = bitcast %struct.nci_prop_fw_cfg_cmd* %7 to i32*
  %56 = call i32 @nci_prop_cmd(%struct.TYPE_4__* %53, i32 %54, i32 12, i32* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %175

60:                                               ; preds = %47
  %61 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %62 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %70 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* @NCI_PROP_START_RFREG, align 4
  %73 = call i32 @nci_prop_cmd(%struct.TYPE_4__* %71, i32 %72, i32 0, i32* null)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %78 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %175

84:                                               ; preds = %60
  %85 = getelementptr inbounds %struct.nci_prop_set_rfreg_cmd, %struct.nci_prop_set_rfreg_cmd* %8, i32 0, i32 0
  store i64 0, i64* %85, align 8
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %143, %84
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.firmware*, %struct.firmware** %6, align 8
  %89 = getelementptr inbounds %struct.firmware, %struct.firmware* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %86
  %93 = load %struct.firmware*, %struct.firmware** %6, align 8
  %94 = getelementptr inbounds %struct.firmware, %struct.firmware* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* @S3FWRN5_RFREG_SECTION_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.firmware*, %struct.firmware** %6, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  br label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @S3FWRN5_RFREG_SECTION_SIZE, align 4
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %105, %100 ], [ %107, %106 ]
  store i32 %109, i32* %12, align 4
  %110 = getelementptr inbounds %struct.nci_prop_set_rfreg_cmd, %struct.nci_prop_set_rfreg_cmd* %8, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.firmware*, %struct.firmware** %6, align 8
  %113 = getelementptr inbounds %struct.firmware, %struct.firmware* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @memcpy(i32 %111, i64 %117, i32 %118)
  %120 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %121 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* @NCI_PROP_SET_RFREG, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = bitcast %struct.nci_prop_set_rfreg_cmd* %8 to i32*
  %127 = call i32 @nci_prop_cmd(%struct.TYPE_4__* %122, i32 %123, i32 %125, i32* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %108
  %131 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %132 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %13, align 4
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %175

139:                                              ; preds = %108
  %140 = getelementptr inbounds %struct.nci_prop_set_rfreg_cmd, %struct.nci_prop_set_rfreg_cmd* %8, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @S3FWRN5_RFREG_SECTION_SIZE, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %86

147:                                              ; preds = %86
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 65535
  %150 = getelementptr inbounds %struct.nci_prop_stop_rfreg_cmd, %struct.nci_prop_stop_rfreg_cmd* %9, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %152 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* @NCI_PROP_STOP_RFREG, align 4
  %155 = bitcast %struct.nci_prop_stop_rfreg_cmd* %9 to i32*
  %156 = call i32 @nci_prop_cmd(%struct.TYPE_4__* %153, i32 %154, i32 4, i32* %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %147
  %160 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %161 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = call i32 (i32*, i8*, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %175

167:                                              ; preds = %147
  %168 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %4, align 8
  %169 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_info(i32* %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %167, %159, %130, %76, %59
  %176 = load %struct.firmware*, %struct.firmware** %6, align 8
  %177 = call i32 @release_firmware(%struct.firmware* %176)
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %175, %24
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @nci_prop_cmd(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
