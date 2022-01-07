; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_err_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_get_err_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_cmd = type { i32, i32, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@cmd_status = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_cmd*)* @ibmvfc_get_err_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvfc_cmd* %0, %struct.ibmvfc_cmd** %3, align 8
  %7 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %7, i32 0, i32 2
  store %struct.ibmvfc_fcp_rsp* %8, %struct.ibmvfc_fcp_rsp** %5, align 8
  %9 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %10 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @be32_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %22, %19
  %29 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %25
  %36 = load i32, i32* @DID_ERROR, align 4
  %37 = shl i32 %36, 16
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %28, %1
  %39 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = call i32 @ibmvfc_get_err_index(i32 %42, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %38
  %51 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %52 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cmd_status, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %53, %60
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %38
  %63 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %5, align 8
  %64 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DID_ERROR, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %65, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %50, %35
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_get_err_index(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
