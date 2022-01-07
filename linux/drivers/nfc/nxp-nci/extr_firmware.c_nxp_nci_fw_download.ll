; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nxp_nci_info = type { i32, i32, i32, %struct.TYPE_8__*, %struct.nxp_nci_fw_info }
%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 }
%struct.nxp_nci_fw_info = type { i32, i64, i64, i64, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NXP_NCI_MODE_FW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nxp_nci_fw_download(%struct.nci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nxp_nci_info*, align 8
  %6 = alloca %struct.nxp_nci_fw_info*, align 8
  %7 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %9 = call %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev* %8)
  store %struct.nxp_nci_info* %9, %struct.nxp_nci_info** %5, align 8
  %10 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %11 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %10, i32 0, i32 4
  store %struct.nxp_nci_fw_info* %11, %struct.nxp_nci_fw_info** %6, align 8
  %12 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %13 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %16 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %23 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %107

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %107

43:                                               ; preds = %34
  %44 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %45 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcpy(i32 %46, i8* %47)
  %49 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %50 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %49, i32 0, i32 4
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @request_firmware(%struct.TYPE_9__** %50, i8* %51, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %107

62:                                               ; preds = %43
  %63 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %64 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %69 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NXP_NCI_MODE_FW, align 4
  %72 = call i32 %67(i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %62
  %76 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %77 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %76, i32 0, i32 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i32 @release_firmware(%struct.TYPE_9__* %78)
  br label %107

80:                                               ; preds = %62
  %81 = load i32, i32* @NXP_NCI_MODE_FW, align 4
  %82 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %83 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %85 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %90 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %92 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %91, i32 0, i32 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %97 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %99 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %101 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %103 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %105 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %104, i32 0, i32 0
  %106 = call i32 @schedule_work(i32* %105)
  br label %107

107:                                              ; preds = %80, %75, %61, %40, %28
  %108 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %109 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_9__**, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_9__*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
