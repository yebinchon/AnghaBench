; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_record_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_record_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_fcf_rec = type { i64, i32, i32, i32, i32 }
%struct.fcf_record = type { i64 }

@LPFC_FCOE_IGNORE_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_fcf_rec*, %struct.fcf_record*, i64)* @lpfc_sli4_fcf_record_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_fcf_record_match(%struct.lpfc_hba* %0, %struct.lpfc_fcf_rec* %1, %struct.fcf_record* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_fcf_rec*, align 8
  %8 = alloca %struct.fcf_record*, align 8
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_fcf_rec* %1, %struct.lpfc_fcf_rec** %7, align 8
  store %struct.fcf_record* %2, %struct.fcf_record** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPFC_FCOE_IGNORE_VID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @lpfc_vlan_id_match(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %56

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fcf_record*, %struct.fcf_record** %8, align 8
  %27 = call i32 @lpfc_mac_addr_match(i32 %25, %struct.fcf_record* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fcf_record*, %struct.fcf_record** %8, align 8
  %35 = call i32 @lpfc_sw_name_match(i32 %33, %struct.fcf_record* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fcf_record*, %struct.fcf_record** %8, align 8
  %43 = call i32 @lpfc_fab_name_match(i32 %41, %struct.fcf_record* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %56

46:                                               ; preds = %38
  %47 = load %struct.lpfc_fcf_rec*, %struct.lpfc_fcf_rec** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_fcf_rec, %struct.lpfc_fcf_rec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fcf_record*, %struct.fcf_record** %8, align 8
  %51 = getelementptr inbounds %struct.fcf_record, %struct.fcf_record* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %56

55:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54, %45, %37, %29, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @lpfc_vlan_id_match(i32, i64) #1

declare dso_local i32 @lpfc_mac_addr_match(i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_sw_name_match(i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_fab_name_match(i32, %struct.fcf_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
