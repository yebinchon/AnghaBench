; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mac_addr_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mac_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcf_record = type { i32 }

@lpfc_fcf_record_mac_0 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_1 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_2 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_3 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_4 = common dso_local global i32 0, align 4
@lpfc_fcf_record_mac_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.fcf_record*)* @lpfc_mac_addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_mac_addr_match(i64* %0, %struct.fcf_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.fcf_record*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.fcf_record* %1, %struct.fcf_record** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @lpfc_fcf_record_mac_0, align 4
  %10 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %11 = call i64 @bf_get(i32 %9, %struct.fcf_record* %10)
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @lpfc_fcf_record_mac_1, align 4
  %19 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %20 = call i64 @bf_get(i32 %18, %struct.fcf_record* %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %60

23:                                               ; preds = %14
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @lpfc_fcf_record_mac_2, align 4
  %28 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %29 = call i64 @bf_get(i32 %27, %struct.fcf_record* %28)
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %60

32:                                               ; preds = %23
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @lpfc_fcf_record_mac_3, align 4
  %37 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %38 = call i64 @bf_get(i32 %36, %struct.fcf_record* %37)
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %60

41:                                               ; preds = %32
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 4
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @lpfc_fcf_record_mac_4, align 4
  %46 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %47 = call i64 @bf_get(i32 %45, %struct.fcf_record* %46)
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load i64*, i64** %4, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 5
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @lpfc_fcf_record_mac_5, align 4
  %55 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %56 = call i64 @bf_get(i32 %54, %struct.fcf_record* %55)
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %40, %31, %22, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @bf_get(i32, %struct.fcf_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
