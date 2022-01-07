; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_vm_request_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_vm_request_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diag26c_mac_resp = type { i32, i64, i64, i32*, i32, i32 }
%struct.diag26c_mac_req = type { i32, i64, i64, i32*, i32, i32 }
%struct.ccw_dev_id = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vmreqmac\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIAG26C_VERSION2 = common dso_local global i64 0, align 8
@DIAG26C_GET_MAC = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@DIAG26C_MAC_SERVICES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"badresp\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"badmac\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_vm_request_mac(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.diag26c_mac_resp*, align 8
  %4 = alloca %struct.diag26c_mac_req*, align 8
  %5 = alloca %struct.ccw_dev_id, align 4
  %6 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.diag26c_mac_resp* @kzalloc(i32 40, i32 %11)
  %13 = bitcast %struct.diag26c_mac_resp* %12 to %struct.diag26c_mac_req*
  store %struct.diag26c_mac_req* %13, %struct.diag26c_mac_req** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.diag26c_mac_resp* @kzalloc(i32 40, i32 %16)
  store %struct.diag26c_mac_resp* %17, %struct.diag26c_mac_resp** %3, align 8
  %18 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %19 = icmp ne %struct.diag26c_mac_req* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %22 = icmp ne %struct.diag26c_mac_resp* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %113

26:                                               ; preds = %20
  %27 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %28 = call i32 @CARD_DDEV(%struct.qeth_card* %27)
  %29 = call i32 @ccw_device_get_id(i32 %28, %struct.ccw_dev_id* %5)
  %30 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %31 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %30, i32 0, i32 0
  store i32 40, i32* %31, align 8
  %32 = load i64, i64* @DIAG26C_VERSION2, align 8
  %33 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %34 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @DIAG26C_GET_MAC, align 4
  %36 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %37 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %41 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @CTRL, align 4
  %43 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %44 = bitcast %struct.diag26c_mac_req* %43 to %struct.diag26c_mac_resp*
  %45 = call i32 @QETH_DBF_HEX(i32 %42, i32 2, %struct.diag26c_mac_resp* %44, i32 40)
  %46 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %47 = bitcast %struct.diag26c_mac_req* %46 to %struct.diag26c_mac_resp*
  %48 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %49 = load i32, i32* @DIAG26C_MAC_SERVICES, align 4
  %50 = call i32 @diag26c(%struct.diag26c_mac_resp* %47, %struct.diag26c_mac_resp* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @CTRL, align 4
  %52 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %53 = bitcast %struct.diag26c_mac_req* %52 to %struct.diag26c_mac_resp*
  %54 = call i32 @QETH_DBF_HEX(i32 %51, i32 2, %struct.diag26c_mac_resp* %53, i32 40)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %26
  br label %113

58:                                               ; preds = %26
  %59 = load i32, i32* @CTRL, align 4
  %60 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %61 = call i32 @QETH_DBF_HEX(i32 %59, i32 2, %struct.diag26c_mac_resp* %60, i32 40)
  %62 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %63 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 40
  br i1 %66, label %75, label %67

67:                                               ; preds = %58
  %68 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %69 = getelementptr inbounds %struct.diag26c_mac_resp, %struct.diag26c_mac_resp* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %72 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %67, %58
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  %78 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %79 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %78, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %81 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %82 = getelementptr inbounds %struct.diag26c_mac_req, %struct.diag26c_mac_req* %81, i32 0, i32 0
  %83 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %80, i32 2, i32* %82, i32 4)
  br label %112

84:                                               ; preds = %67
  %85 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %86 = getelementptr inbounds %struct.diag26c_mac_resp, %struct.diag26c_mac_resp* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @is_valid_ether_addr(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  %93 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %94 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %93, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %96 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %97 = getelementptr inbounds %struct.diag26c_mac_resp, %struct.diag26c_mac_resp* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %95, i32 2, i32* %98, i32 %99)
  br label %111

101:                                              ; preds = %84
  %102 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %108 = getelementptr inbounds %struct.diag26c_mac_resp, %struct.diag26c_mac_resp* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ether_addr_copy(i32 %106, i32* %109)
  br label %111

111:                                              ; preds = %101, %90
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %57, %23
  %114 = load %struct.diag26c_mac_resp*, %struct.diag26c_mac_resp** %3, align 8
  %115 = call i32 @kfree(%struct.diag26c_mac_resp* %114)
  %116 = load %struct.diag26c_mac_req*, %struct.diag26c_mac_req** %4, align 8
  %117 = bitcast %struct.diag26c_mac_req* %116 to %struct.diag26c_mac_resp*
  %118 = call i32 @kfree(%struct.diag26c_mac_resp* %117)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.diag26c_mac_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.diag26c_mac_resp*, i32) #1

declare dso_local i32 @diag26c(%struct.diag26c_mac_resp*, %struct.diag26c_mac_resp*, i32) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @kfree(%struct.diag26c_mac_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
