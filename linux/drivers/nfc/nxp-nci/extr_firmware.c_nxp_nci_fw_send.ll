; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_info = type { %struct.nxp_nci_fw_info }
%struct.nxp_nci_fw_info = type { i64, i32, i64*, i32, i32, i32, i64, i64 }

@NXP_NCI_FW_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@NXP_NCI_FW_HDR_LEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@NXP_NCI_FW_CMD_RESET = common dso_local global i64 0, align 8
@NXP_NCI_FW_ANSWER_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_nci_info*)* @nxp_nci_fw_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_fw_send(%struct.nxp_nci_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxp_nci_info*, align 8
  %4 = alloca %struct.nxp_nci_fw_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nxp_nci_info* %0, %struct.nxp_nci_info** %3, align 8
  %7 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %8 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %7, i32 0, i32 0
  store %struct.nxp_nci_fw_info* %8, %struct.nxp_nci_fw_info** %4, align 8
  %9 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %10 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %9, i32 0, i32 4
  %11 = call i32 @reinit_completion(i32* %10)
  %12 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %13 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %18 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @get_unaligned_be16(i64* %19)
  %21 = load i32, i32* @NXP_NCI_FW_FRAME_LEN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %24 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @NXP_NCI_FW_HDR_LEN, align 8
  %26 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %27 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 %25
  store i64* %29, i64** %27, align 8
  %30 = load i64, i64* @NXP_NCI_FW_HDR_LEN, align 8
  %31 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %32 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  br label %37

37:                                               ; preds = %16, %1
  %38 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %39 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %42 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %92

48:                                               ; preds = %37
  %49 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %3, align 8
  %50 = call i32 @nxp_nci_fw_send_chunk(%struct.nxp_nci_info* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %92

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %59 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %63 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NXP_NCI_FW_CMD_RESET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %55
  %69 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %70 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %72 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %77 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %76, i32 0, i32 5
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %68
  br label %91

80:                                               ; preds = %55
  %81 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %4, align 8
  %82 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %81, i32 0, i32 4
  %83 = load i32, i32* @NXP_NCI_FW_ANSWER_TIMEOUT, align 4
  %84 = call i64 @wait_for_completion_interruptible_timeout(i32* %82, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %79
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %87, %53, %45
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @get_unaligned_be16(i64*) #1

declare dso_local i32 @nxp_nci_fw_send_chunk(%struct.nxp_nci_info*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
