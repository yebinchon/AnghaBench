; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_vm_detect_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_vm_detect_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.diag26c_vnic_resp = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.diag26c_vnic_req = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.ccw_dev_id = type { i32 }

@QETH_DISCIPLINE_UNDETERMINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vmlayer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"QUERY USERID\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIAG26C_VERSION6_VM65918 = common dso_local global i64 0, align 8
@DIAG26C_VNIC_INFO = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@DIAG26C_PORT_VNIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VNIC_INFO_PROT_L2 = common dso_local global i64 0, align 8
@QETH_DISCIPLINE_LAYER2 = common dso_local global i32 0, align 4
@VNIC_INFO_PROT_L3 = common dso_local global i64 0, align 8
@QETH_DISCIPLINE_LAYER3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"err%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_vm_detect_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_vm_detect_layer(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.diag26c_vnic_resp*, align 8
  %5 = alloca %struct.diag26c_vnic_req*, align 8
  %6 = alloca %struct.ccw_dev_id, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %9 = load i32, i32* @QETH_DISCIPLINE_UNDETERMINED, align 4
  store i32 %9, i32* %3, align 4
  store %struct.diag26c_vnic_resp* null, %struct.diag26c_vnic_resp** %4, align 8
  store %struct.diag26c_vnic_req* null, %struct.diag26c_vnic_req** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %11 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %10, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %13 = call i32 @cpcmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 80, i32* %8)
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %111

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* @GFP_DMA, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.diag26c_vnic_resp* @kzalloc(i32 48, i32 %20)
  %22 = bitcast %struct.diag26c_vnic_resp* %21 to %struct.diag26c_vnic_req*
  store %struct.diag26c_vnic_req* %22, %struct.diag26c_vnic_req** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @GFP_DMA, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.diag26c_vnic_resp* @kzalloc(i32 48, i32 %25)
  store %struct.diag26c_vnic_resp* %26, %struct.diag26c_vnic_resp** %4, align 8
  %27 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %28 = icmp ne %struct.diag26c_vnic_req* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %31 = icmp ne %struct.diag26c_vnic_resp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %111

35:                                               ; preds = %29
  %36 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %37 = call i32 @CARD_RDEV(%struct.qeth_card* %36)
  %38 = call i32 @ccw_device_get_id(i32 %37, %struct.ccw_dev_id* %6)
  %39 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %40 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %39, i32 0, i32 0
  store i32 48, i32* %40, align 8
  %41 = load i64, i64* @DIAG26C_VERSION6_VM65918, align 8
  %42 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %43 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @DIAG26C_VNIC_INFO, align 4
  %45 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %46 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %48 = call i32 @ASCEBC(i8* %47, i32 8)
  %49 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %50 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %49, i32 0, i32 5
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %52 = call i32 @memcpy(i32* %50, i8* %51, i32 8)
  %53 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %56 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @CTRL, align 4
  %58 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %59 = bitcast %struct.diag26c_vnic_req* %58 to %struct.diag26c_vnic_resp*
  %60 = call i32 @QETH_DBF_HEX(i32 %57, i32 2, %struct.diag26c_vnic_resp* %59, i32 48)
  %61 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %62 = bitcast %struct.diag26c_vnic_req* %61 to %struct.diag26c_vnic_resp*
  %63 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %64 = load i32, i32* @DIAG26C_PORT_VNIC, align 4
  %65 = call i32 @diag26c(%struct.diag26c_vnic_resp* %62, %struct.diag26c_vnic_resp* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @CTRL, align 4
  %67 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %68 = bitcast %struct.diag26c_vnic_req* %67 to %struct.diag26c_vnic_resp*
  %69 = call i32 @QETH_DBF_HEX(i32 %66, i32 2, %struct.diag26c_vnic_resp* %68, i32 48)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %35
  br label %111

73:                                               ; preds = %35
  %74 = load i32, i32* @CTRL, align 4
  %75 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %76 = call i32 @QETH_DBF_HEX(i32 %74, i32 2, %struct.diag26c_vnic_resp* %75, i32 48)
  %77 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %78 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 48
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %84 = getelementptr inbounds %struct.diag26c_vnic_resp, %struct.diag26c_vnic_resp* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %87 = getelementptr inbounds %struct.diag26c_vnic_req, %struct.diag26c_vnic_req* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %73
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %111

93:                                               ; preds = %82
  %94 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %95 = getelementptr inbounds %struct.diag26c_vnic_resp, %struct.diag26c_vnic_resp* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VNIC_INFO_PROT_L2, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @QETH_DISCIPLINE_LAYER2, align 4
  store i32 %100, i32* %3, align 4
  br label %110

101:                                              ; preds = %93
  %102 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %103 = getelementptr inbounds %struct.diag26c_vnic_resp, %struct.diag26c_vnic_resp* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VNIC_INFO_PROT_L3, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @QETH_DISCIPLINE_LAYER3, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %101
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110, %90, %72, %32, %16
  %112 = load %struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp** %4, align 8
  %113 = call i32 @kfree(%struct.diag26c_vnic_resp* %112)
  %114 = load %struct.diag26c_vnic_req*, %struct.diag26c_vnic_req** %5, align 8
  %115 = bitcast %struct.diag26c_vnic_req* %114 to %struct.diag26c_vnic_resp*
  %116 = call i32 @kfree(%struct.diag26c_vnic_resp* %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %120, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %111
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

declare dso_local %struct.diag26c_vnic_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.diag26c_vnic_resp*, i32) #1

declare dso_local i32 @diag26c(%struct.diag26c_vnic_resp*, %struct.diag26c_vnic_resp*, i32) #1

declare dso_local i32 @kfree(%struct.diag26c_vnic_resp*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
