; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_nfcmrvl_fw_dnld_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nfcmrvl_private = type { i64, %struct.nfcmrvl_fw_dnld, %struct.TYPE_12__*, %struct.TYPE_10__*, i32, i32 }
%struct.nfcmrvl_fw_dnld = type { i32, %struct.nfcmrvl_fw*, i32, %struct.TYPE_9__*, %struct.TYPE_13__*, i32 }
%struct.nfcmrvl_fw = type { i64, i64, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.nfcmrvl_private*, i32*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to retrieve FW %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NFCMRVL_FW_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"bad firmware binary %s magic=0x%x phy=%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"loading helper\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"loading firmware\00", align 1
@fw_dnld_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FW_DNLD_TIMEOUT = common dso_local global i32 0, align 4
@STATE_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfcmrvl_fw_dnld_start(%struct.nci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfcmrvl_private*, align 8
  %7 = alloca %struct.nfcmrvl_fw_dnld*, align 8
  %8 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %10 = call %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev* %9)
  store %struct.nfcmrvl_private* %10, %struct.nfcmrvl_private** %6, align 8
  %11 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %12 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %11, i32 0, i32 1
  store %struct.nfcmrvl_fw_dnld* %12, %struct.nfcmrvl_fw_dnld** %7, align 8
  %13 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %14 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %173

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %173

31:                                               ; preds = %23
  %32 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %33 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcpy(i32 %34, i8* %35)
  %37 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %38 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %37, i32 0, i32 4
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @request_firmware(%struct.TYPE_13__** %38, i8* %39, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %31
  %48 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %49 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @nfc_err(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %173

55:                                               ; preds = %31
  %56 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %57 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %57, i32 0, i32 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.nfcmrvl_fw*
  %63 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %64 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %63, i32 0, i32 1
  store %struct.nfcmrvl_fw* %62, %struct.nfcmrvl_fw** %64, align 8
  %65 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %66 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %65, i32 0, i32 1
  %67 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %66, align 8
  %68 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NFCMRVL_FW_MAGIC, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %55
  %73 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %74 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %73, i32 0, i32 1
  %75 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %74, align 8
  %76 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %79 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %72, %55
  %83 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %84 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %88 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %87, i32 0, i32 1
  %89 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %88, align 8
  %90 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %93 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %92, i32 0, i32 1
  %94 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %93, align 8
  %95 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @nfc_err(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %86, i64 %91, i64 %96)
  %98 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %99 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %98, i32 0, i32 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = call i32 @release_firmware(%struct.TYPE_13__* %100)
  %102 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %103 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %102, i32 0, i32 1
  store %struct.nfcmrvl_fw* null, %struct.nfcmrvl_fw** %103, align 8
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %173

106:                                              ; preds = %72
  %107 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %108 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %107, i32 0, i32 1
  %109 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %108, align 8
  %110 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %116 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @nfc_info(i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %120 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %119, i32 0, i32 1
  %121 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %120, align 8
  %122 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %121, i32 0, i32 4
  %123 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %124 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %123, i32 0, i32 3
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %124, align 8
  br label %136

125:                                              ; preds = %106
  %126 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %127 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @nfc_info(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %130 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %131 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %130, i32 0, i32 1
  %132 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %131, align 8
  %133 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %132, i32 0, i32 3
  %134 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %135 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %134, i32 0, i32 3
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %135, align 8
  br label %136

136:                                              ; preds = %125, %114
  %137 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %138 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %138, i32 0, i32 2
  %140 = load i32, i32* @fw_dnld_timeout, align 4
  %141 = call i32 @timer_setup(i32* %139, i32 %140, i32 0)
  %142 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %143 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %143, i32 0, i32 2
  %145 = load i64, i64* @jiffies, align 8
  %146 = load i32, i32* @FW_DNLD_TIMEOUT, align 4
  %147 = call i64 @msecs_to_jiffies(i32 %146)
  %148 = add nsw i64 %145, %147
  %149 = call i32 @mod_timer(i32* %144, i64 %148)
  %150 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %151 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %150, i32 0, i32 3
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32 (%struct.nfcmrvl_private*, i32*)*, i32 (%struct.nfcmrvl_private*, i32*)** %153, align 8
  %155 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %156 = load %struct.nfcmrvl_fw_dnld*, %struct.nfcmrvl_fw_dnld** %7, align 8
  %157 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %156, i32 0, i32 1
  %158 = load %struct.nfcmrvl_fw*, %struct.nfcmrvl_fw** %157, align 8
  %159 = getelementptr inbounds %struct.nfcmrvl_fw, %struct.nfcmrvl_fw* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = call i32 %154(%struct.nfcmrvl_private* %155, i32* %160)
  %162 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %163 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %162, i32 0, i32 2
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = call i32 @atomic_set(i32* %165, i32 1)
  %167 = load i32, i32* @STATE_RESET, align 4
  %168 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %169 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.nfcmrvl_fw_dnld, %struct.nfcmrvl_fw_dnld* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %6, align 8
  %172 = call i32 @nfcmrvl_chip_reset(%struct.nfcmrvl_private* %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %136, %82, %47, %28, %17
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.nfcmrvl_private* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_13__**, i8*, i32*) #1

declare dso_local i32 @nfc_err(i32, i8*, i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_13__*) #1

declare dso_local i32 @nfc_info(i32, i8*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfcmrvl_chip_reset(%struct.nfcmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
