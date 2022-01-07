; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dme_set_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dme_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.uic_command = type { i8*, i32, i8*, i32, i32 }

@ufshcd_dme_set_attr.action = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"dme-set\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dme-peer-set\00", align 1
@UFS_UIC_COMMAND_RETRIES = common dso_local global i32 0, align 4
@UIC_CMD_DME_PEER_SET = common dso_local global i32 0, align 4
@UIC_CMD_DME_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: attr-id 0x%x val 0x%x error code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: attr-id 0x%x val 0x%x failed %d retries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_dme_set_attr(%struct.ufs_hba* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ufs_hba*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.uic_command, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = bitcast %struct.uic_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ufshcd_dme_set_attr.action, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* @UFS_UIC_COMMAND_RETRIES, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @UIC_CMD_DME_PEER_SET, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @UIC_CMD_DME_SET, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %11, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %11, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @UIC_ARG_ATTR_TYPE(i64 %36)
  %38 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %11, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %67, %31
  %42 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %43 = call i32 @ufshcd_send_uic_cmd(%struct.ufs_hba* %42, %struct.uic_command* %11)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %48 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @UIC_GET_ATTR_ID(i8* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %63, %60, %57
  %68 = phi i1 [ false, %60 ], [ false, %57 ], [ %66, %63 ]
  br i1 %68, label %41, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %74 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @UIC_GET_ATTR_ID(i8* %77)
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @UFS_UIC_COMMAND_RETRIES, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %78, i8* %79, i32 %82)
  br label %84

84:                                               ; preds = %72, %69
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @UIC_ARG_ATTR_TYPE(i64) #2

declare dso_local i32 @ufshcd_send_uic_cmd(%struct.ufs_hba*, %struct.uic_command*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @UIC_GET_ATTR_ID(i8*) #2

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
