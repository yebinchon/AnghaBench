; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_oas_lun_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_name = type { i32 }

@EPERM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpfc_hba*, i32*, i32*, i32, i64, i32)* @lpfc_oas_lun_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_oas_lun_state_set(%struct.lpfc_hba* %0, i32* %1, i32* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* @EPERM, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %7, align 8
  br label %51

22:                                               ; preds = %6
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast i32* %27 to %struct.lpfc_name*
  %29 = load i32*, i32** %10, align 8
  %30 = bitcast i32* %29 to %struct.lpfc_name*
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @lpfc_enable_oas_lun(%struct.lpfc_hba* %26, %struct.lpfc_name* %28, %struct.lpfc_name* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %35, %25
  br label %48

39:                                               ; preds = %22
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = bitcast i32* %41 to %struct.lpfc_name*
  %43 = load i32*, i32** %10, align 8
  %44 = bitcast i32* %43 to %struct.lpfc_name*
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @lpfc_disable_oas_lun(%struct.lpfc_hba* %40, %struct.lpfc_name* %42, %struct.lpfc_name* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %38
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %48, %19
  %52 = load i64, i64* %7, align 8
  ret i64 %52
}

declare dso_local i32 @lpfc_enable_oas_lun(%struct.lpfc_hba*, %struct.lpfc_name*, %struct.lpfc_name*, i32, i32) #1

declare dso_local i32 @lpfc_disable_oas_lun(%struct.lpfc_hba*, %struct.lpfc_name*, %struct.lpfc_name*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
