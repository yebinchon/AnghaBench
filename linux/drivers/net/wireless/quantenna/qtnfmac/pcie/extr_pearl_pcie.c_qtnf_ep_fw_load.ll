; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_ep_fw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/pcie/extr_pearl_pcie.c_qtnf_ep_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_pcie_pearl_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@QTN_PCIE_FW_BUFSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"FW upload started: fw_addr=0x%p size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"FW upload failed: too many retries\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QTN_PCIE_FW_DLMASK = common dso_local global i32 0, align 4
@QTN_RC_FW_SYNC = common dso_local global i32 0, align 4
@QTN_EP_FW_SYNC = common dso_local global i32 0, align 4
@QTN_FW_DL_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"FW upload failed: SYNC timed out\0A\00", align 1
@QTN_EP_FW_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"FW upload retry: block #%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"FW upload completed: totally sent %d blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_pcie_pearl_state*, i32*, i32)* @qtnf_ep_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_ep_fw_load(%struct.qtnf_pcie_pearl_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_pcie_pearl_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qtnf_pcie_pearl_state* %0, %struct.qtnf_pcie_pearl_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @QTN_PCIE_FW_BUFSZ, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = srem i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = add nsw i32 %21, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %148, %136, %58, %3
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %155

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = icmp sgt i32 %40, 10000
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %158

46:                                               ; preds = %38
  %47 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %48 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @qtnf_ep_fw_send(i32 %50, i32 %51, i32 %52, i32* %53, i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %34

59:                                               ; preds = %46
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @QTN_PCIE_FW_DLMASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %148

70:                                               ; preds = %65, %59
  %71 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %72 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* @QTN_RC_FW_SYNC, align 4
  %76 = call i32 @qtnf_set_state(i32* %74, i32 %75)
  %77 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %78 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* @QTN_EP_FW_SYNC, align 4
  %82 = load i32, i32* @QTN_FW_DL_TIMEOUT_MS, align 4
  %83 = call i64 @qtnf_poll_state(i32* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %158

89:                                               ; preds = %70
  %90 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %91 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* @QTN_EP_FW_SYNC, align 4
  %95 = call i32 @qtnf_clear_state(i32* %93, i32 %94)
  %96 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %97 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* @QTN_EP_FW_RETRY, align 4
  %101 = call i64 @qtnf_is_state(i32* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %89
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @QTN_PCIE_FW_DLMASK, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32*, i32** %10, align 8
  %122 = sext i32 %120 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32* %124, i32** %10, align 8
  br label %136

125:                                              ; preds = %103
  %126 = load i32, i32* @QTN_PCIE_FW_DLMASK, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @QTN_PCIE_FW_DLMASK, align 4
  %130 = load i32, i32* %8, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32*, i32** %10, align 8
  %133 = sext i32 %131 to i64
  %134 = sub i64 0, %133
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32* %135, i32** %10, align 8
  br label %136

136:                                              ; preds = %125, %108
  %137 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %138 = getelementptr inbounds %struct.qtnf_pcie_pearl_state, %struct.qtnf_pcie_pearl_state* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* @QTN_EP_FW_RETRY, align 4
  %142 = call i32 @qtnf_clear_state(i32* %140, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  br label %34

145:                                              ; preds = %89
  %146 = load %struct.qtnf_pcie_pearl_state*, %struct.qtnf_pcie_pearl_state** %5, align 8
  %147 = call i32 @qtnf_pearl_data_tx_reclaim(%struct.qtnf_pcie_pearl_state* %146)
  br label %148

148:                                              ; preds = %145, %65
  %149 = load i32, i32* %13, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %10, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %34

155:                                              ; preds = %34
  %156 = load i32, i32* %12, align 4
  %157 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %85, %42
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qtnf_ep_fw_send(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @qtnf_set_state(i32*, i32) #1

declare dso_local i64 @qtnf_poll_state(i32*, i32, i32) #1

declare dso_local i32 @qtnf_clear_state(i32*, i32) #1

declare dso_local i64 @qtnf_is_state(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @qtnf_pearl_data_tx_reclaim(%struct.qtnf_pcie_pearl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
