; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_put_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_put_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.ulp_cid_info**, %struct.hwi_controller* }
%struct.ulp_cid_info = type { i16*, i64, i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i64 }

@BE_INVALID_CID = common dso_local global i16 0, align 2
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BS_%d : failed to put cid %u: available %u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i16)* @beiscsi_put_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_put_cid(%struct.beiscsi_hba* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca %struct.hwi_wrb_context*, align 8
  %7 = alloca %struct.hwi_controller*, align 8
  %8 = alloca %struct.ulp_cid_info*, align 8
  %9 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i16 %1, i16* %4, align 2
  %10 = load i16, i16* %4, align 2
  %11 = call i64 @BE_GET_CRI_FROM_CID(i16 zeroext %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 1
  %14 = load %struct.hwi_controller*, %struct.hwi_controller** %13, align 8
  store %struct.hwi_controller* %14, %struct.hwi_controller** %7, align 8
  %15 = load %struct.hwi_controller*, %struct.hwi_controller** %7, align 8
  %16 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %15, i32 0, i32 0
  %17 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %17, i64 %18
  store %struct.hwi_wrb_context* %19, %struct.hwi_wrb_context** %6, align 8
  %20 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %6, align 8
  %21 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %25, i64 %26
  %28 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %27, align 8
  store %struct.ulp_cid_info* %28, %struct.ulp_cid_info** %8, align 8
  %29 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %30 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %29, i32 0, i32 0
  %31 = load i16*, i16** %30, align 8
  %32 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %33 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i16, i16* %31, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @BE_INVALID_CID, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i16, i16* %4, align 2
  %45 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %46 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %49 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %42, i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %44, i32 %47, i64 %50)
  br label %77

52:                                               ; preds = %2
  %53 = load i16, i16* %4, align 2
  %54 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %55 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %54, i32 0, i32 0
  %56 = load i16*, i16** %55, align 8
  %57 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %58 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = getelementptr inbounds i16, i16* %56, i64 %59
  store i16 %53, i16* %61, align 2
  %62 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %63 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %65, i64 %66)
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %71 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %52
  %73 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %8, align 8
  %74 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %72, %41
  ret void
}

declare dso_local i64 @BE_GET_CRI_FROM_CID(i16 zeroext) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i16 zeroext, i32, i64) #1

declare dso_local i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
