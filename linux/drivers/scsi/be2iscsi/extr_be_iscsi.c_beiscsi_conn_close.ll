; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_endpoint = type { i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BS_%d : invalidate conn failed cid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"BS_%d : upload conn failed cid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_endpoint*)* @beiscsi_conn_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_conn_close(%struct.beiscsi_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_endpoint*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.beiscsi_endpoint* %0, %struct.beiscsi_endpoint** %3, align 8
  %8 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %9 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %8, i32 0, i32 1
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  store %struct.beiscsi_hba* %10, %struct.beiscsi_hba** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = icmp ult i32 %12, 3
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %17 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %18 = call i32 @beiscsi_invalidate_cxn(%struct.beiscsi_hba* %16, %struct.beiscsi_endpoint* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %22, i32 %23, i32* null, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %21
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %32 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @beiscsi_log(%struct.beiscsi_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %15
  br label %11

37:                                               ; preds = %27, %11
  %38 = call i32 @msleep(i32 250)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %40 = call i32 @beiscsi_flush_cq(%struct.beiscsi_hba* %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %76

44:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = icmp ult i32 %46, 3
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %51 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %52 = call i32 @beiscsi_upload_cxn(%struct.beiscsi_hba* %50, %struct.beiscsi_endpoint* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %56, i32 %57, i32* null, i32* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %71

62:                                               ; preds = %55
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %66 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %3, align 8
  %67 = getelementptr inbounds %struct.beiscsi_endpoint, %struct.beiscsi_endpoint* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @beiscsi_log(%struct.beiscsi_hba* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %49
  br label %45

71:                                               ; preds = %61, %45
  %72 = load i32, i32* %6, align 4
  %73 = icmp ugt i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74, %43
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @beiscsi_invalidate_cxn(%struct.beiscsi_hba*, %struct.beiscsi_endpoint*) #1

declare dso_local i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba*, i32, i32*, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @beiscsi_flush_cq(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_upload_cxn(%struct.beiscsi_hba*, %struct.beiscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
