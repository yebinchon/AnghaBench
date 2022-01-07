; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32, i32, %struct.beiscsi_conn*, %struct.beiscsi_hba* }
%struct.beiscsi_conn = type { i32 }
%struct.beiscsi_hba = type { i32**, i32, i32* }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BS_%d : In beiscsi_ep_disconnect for ep_cid = %u\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"BS_%d : ep_array at %u cid %u empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"BS_%d : HBA in error 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"BS_%d : close conn failed cid %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"BS_%d : conn_table empty at %u: cid %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.beiscsi_endpoint*, align 8
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i64, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %7 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %7, i32 0, i32 0
  %9 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %8, align 8
  store %struct.beiscsi_endpoint* %9, %struct.beiscsi_endpoint** %3, align 8
  %10 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %10, i32 0, i32 3
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %11, align 8
  store %struct.beiscsi_hba* %12, %struct.beiscsi_hba** %5, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %16 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @beiscsi_log(%struct.beiscsi_hba* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @BE_GET_CRI_FROM_CID(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %1
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %36 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.beiscsi_hba*, i32, i8*, i64, ...) @__beiscsi_log(%struct.beiscsi_hba* %32, i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %34, i32 %37)
  br label %105

39:                                               ; preds = %1
  %40 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %41 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %40, i32 0, i32 2
  %42 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %41, align 8
  %43 = icmp ne %struct.beiscsi_conn* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %46 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %45, i32 0, i32 2
  %47 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %46, align 8
  store %struct.beiscsi_conn* %47, %struct.beiscsi_conn** %4, align 8
  %48 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %49 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iscsi_suspend_queue(i32 %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %54 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %61 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @beiscsi_log(%struct.beiscsi_hba* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %77

64:                                               ; preds = %52
  %65 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %66 = call i64 @beiscsi_conn_close(%struct.beiscsi_endpoint* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %72 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (%struct.beiscsi_hba*, i32, i8*, i64, ...) @__beiscsi_log(%struct.beiscsi_hba* %69, i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %68, %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %79 = call i32 @beiscsi_free_ep(%struct.beiscsi_endpoint* %78)
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %81 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %92 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.beiscsi_hba*, i32, i8*, i64, ...) @__beiscsi_log(%struct.beiscsi_hba* %88, i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %77
  %96 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %97 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  store i32* null, i32** %100, align 8
  %101 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %102 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @iscsi_destroy_endpoint(i32 %103)
  br label %105

105:                                              ; preds = %95, %31
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i64, ...) #1

declare dso_local i32 @iscsi_suspend_queue(i32) #1

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i64 @beiscsi_conn_close(%struct.beiscsi_endpoint*) #1

declare dso_local i32 @beiscsi_free_ep(%struct.beiscsi_endpoint*) #1

declare dso_local i32 @iscsi_destroy_endpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
