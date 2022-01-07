; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_gidft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_gidft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64 }

@LPFC_ENABLE_BOTH = common dso_local global i64 0, align 8
@LPFC_ENABLE_FCP = common dso_local global i64 0, align 8
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4
@SLI_CTPT_FCP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"0604 %s FC TYPE %x %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to issue GID_FT to \00", align 1
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Finishing discovery.\00", align 1
@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@SLI_CTPT_NVME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"0605 %s FC_TYPE %x %s %d\0A\00", align 1
@FC_TYPE_NVME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Finishing discovery: gidftinp \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_gidft(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %4 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %5 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LPFC_ENABLE_BOTH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPFC_ENABLE_FCP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9, %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %18 = load i32, i32* @SLI_CTPT_FCP, align 4
  %19 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %16, i32 %17, i32 0, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* @LOG_SLI, align 4
  %25 = load i32, i32* @FC_TYPE_FCP, align 4
  %26 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

27:                                               ; preds = %15
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %27, %9
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LPFC_ENABLE_BOTH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %38, %32
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %46 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %47 = load i32, i32* @SLI_CTPT_NVME, align 4
  %48 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %45, i32 %46, i32 0, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load i32, i32* @LOG_SLI, align 4
  %54 = load i32, i32* @FC_TYPE_NVME, align 4
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %76

64:                                               ; preds = %50
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %67 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %64
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %63, %21
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
