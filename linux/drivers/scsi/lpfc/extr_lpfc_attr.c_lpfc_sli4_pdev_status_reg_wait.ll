; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_status_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_sli4_pdev_status_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_register = type { i32, i32 }

@lpfc_sliport_status_rn = common dso_local global i32 0, align 4
@lpfc_sliport_status_err = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT = common dso_local global i32 0, align 4
@lpfc_sliport_status_rdy = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_register, align 4
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = bitcast %struct.lpfc_register* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = call i32 @msleep(i32 100)
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %4, i32 0, i32 0
  %15 = call i32 @lpfc_readl(i32 %13, i32* %14)
  %16 = load i32, i32* @lpfc_sliport_status_rn, align 4
  %17 = call i32 @bf_get(i32 %16, %struct.lpfc_register* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @lpfc_sliport_status_err, align 4
  %21 = call i32 @bf_get(i32 %20, %struct.lpfc_register* %4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %19, %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %56, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %4, i32 0, i32 0
  %40 = call i32 @lpfc_readl(i32 %38, i32* %39)
  %41 = load i32, i32* @lpfc_sliport_status_err, align 4
  %42 = call i32 @bf_get(i32 %41, %struct.lpfc_register* %4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %31
  br label %56

45:                                               ; preds = %31
  %46 = load i32, i32* @lpfc_sliport_status_rn, align 4
  %47 = call i32 @bf_get(i32 %46, %struct.lpfc_register* %4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @lpfc_sliport_status_rdy, align 4
  %52 = call i32 @bf_get(i32 %51, %struct.lpfc_register* %4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %54, %49, %44
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %27

59:                                               ; preds = %55, %27
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %63, %23
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @lpfc_readl(i32, i32*) #2

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
