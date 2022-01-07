; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c___tcs_buffer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c___tcs_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i32 }
%struct.tcs_request = type { i32, %struct.tcs_cmd*, i64 }
%struct.tcs_cmd = type { i32, i32, i32 }

@CMD_MSGID_LEN = common dso_local global i32 0, align 4
@CMD_MSGID_RESP_REQ = common dso_local global i32 0, align 4
@CMD_MSGID_WRITE = common dso_local global i32 0, align 4
@RSC_DRV_CMD_WAIT_FOR_CMPL = common dso_local global i32 0, align 4
@RSC_DRV_CMD_MSGID = common dso_local global i32 0, align 4
@RSC_DRV_CMD_ADDR = common dso_local global i32 0, align 4
@RSC_DRV_CMD_DATA = common dso_local global i32 0, align 4
@RSC_DRV_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsc_drv*, i32, i32, %struct.tcs_request*)* @__tcs_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcs_buffer_write(%struct.rsc_drv* %0, i32 %1, i32 %2, %struct.tcs_request* %3) #0 {
  %5 = alloca %struct.rsc_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcs_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcs_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rsc_drv* %0, %struct.rsc_drv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.tcs_request* %3, %struct.tcs_request** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @CMD_MSGID_LEN, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tcs_request*, %struct.tcs_request** %8, align 8
  %18 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @CMD_MSGID_RESP_REQ, align 4
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @CMD_MSGID_WRITE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %32 = load i32, i32* @RSC_DRV_CMD_WAIT_FOR_CMPL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @read_tcs_reg(%struct.rsc_drv* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %100, %24
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.tcs_request*, %struct.tcs_request** %8, align 8
  %39 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = load %struct.tcs_request*, %struct.tcs_request** %8, align 8
  %44 = getelementptr inbounds %struct.tcs_request, %struct.tcs_request* %43, i32 0, i32 1
  %45 = load %struct.tcs_cmd*, %struct.tcs_cmd** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %45, i64 %47
  store %struct.tcs_cmd* %48, %struct.tcs_cmd** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load %struct.tcs_cmd*, %struct.tcs_cmd** %13, align 8
  %54 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.tcs_cmd*, %struct.tcs_cmd** %13, align 8
  %62 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %42
  %66 = load i32, i32* @CMD_MSGID_RESP_REQ, align 4
  br label %68

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %73 = load i32, i32* @RSC_DRV_CMD_MSGID, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @write_tcs_cmd(%struct.rsc_drv* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %79 = load i32, i32* @RSC_DRV_CMD_ADDR, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.tcs_cmd*, %struct.tcs_cmd** %13, align 8
  %83 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @write_tcs_cmd(%struct.rsc_drv* %78, i32 %79, i32 %80, i32 %81, i32 %84)
  %86 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %87 = load i32, i32* @RSC_DRV_CMD_DATA, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.tcs_cmd*, %struct.tcs_cmd** %13, align 8
  %91 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_tcs_cmd(%struct.rsc_drv* %86, i32 %87, i32 %88, i32 %89, i32 %92)
  %94 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.tcs_cmd*, %struct.tcs_cmd** %13, align 8
  %99 = call i32 @trace_rpmh_send_msg(%struct.rsc_drv* %94, i32 %95, i32 %96, i32 %97, %struct.tcs_cmd* %98)
  br label %100

100:                                              ; preds = %68
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %36

105:                                              ; preds = %36
  %106 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %107 = load i32, i32* @RSC_DRV_CMD_WAIT_FOR_CMPL, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @write_tcs_reg(%struct.rsc_drv* %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %112 = load i32, i32* @RSC_DRV_CMD_ENABLE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @read_tcs_reg(%struct.rsc_drv* %111, i32 %112, i32 %113, i32 0)
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load %struct.rsc_drv*, %struct.rsc_drv** %5, align 8
  %118 = load i32, i32* @RSC_DRV_CMD_ENABLE, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @write_tcs_reg(%struct.rsc_drv* %117, i32 %118, i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @read_tcs_reg(%struct.rsc_drv*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @write_tcs_cmd(%struct.rsc_drv*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_rpmh_send_msg(%struct.rsc_drv*, i32, i32, i32, %struct.tcs_cmd*) #1

declare dso_local i32 @write_tcs_reg(%struct.rsc_drv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
