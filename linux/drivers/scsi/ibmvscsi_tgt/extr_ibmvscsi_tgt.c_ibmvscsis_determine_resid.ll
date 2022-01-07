; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_determine_resid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_determine_resid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32 }
%struct.srp_rsp = type { i8*, i32, i8* }

@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SRP_RSP_FLAG_DOUNDER = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SRP_RSP_FLAG_DIUNDER = common dso_local global i32 0, align 4
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DOOVER = common dso_local global i32 0, align 4
@SRP_RSP_FLAG_DIOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*, %struct.srp_rsp*)* @ibmvscsis_determine_resid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_determine_resid(%struct.se_cmd* %0, %struct.srp_rsp* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.srp_rsp*, align 8
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store %struct.srp_rsp* %1, %struct.srp_rsp** %4, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %87

12:                                               ; preds = %2
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_TO_DEVICE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @SRP_RSP_FLAG_DOUNDER, align 4
  %27 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %28 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %32 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %48

33:                                               ; preds = %19
  %34 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* @SRP_RSP_FLAG_DIUNDER, align 4
  %41 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %42 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %46 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %33
  br label %48

48:                                               ; preds = %47, %25
  br label %87

49:                                               ; preds = %12
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %49
  %57 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_TO_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* @SRP_RSP_FLAG_DOOVER, align 4
  %64 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %65 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %69 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %85

70:                                               ; preds = %56
  %71 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* @SRP_RSP_FLAG_DIOVER, align 4
  %78 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %79 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i8* @cpu_to_be32(i32 %80)
  %82 = load %struct.srp_rsp*, %struct.srp_rsp** %4, align 8
  %83 = getelementptr inbounds %struct.srp_rsp, %struct.srp_rsp* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %76, %70
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %49
  br label %87

87:                                               ; preds = %11, %86, %48
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
