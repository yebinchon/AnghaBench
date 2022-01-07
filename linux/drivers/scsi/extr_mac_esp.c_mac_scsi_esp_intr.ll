; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_scsi_esp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_scsi_esp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@esp_chips = common dso_local global i64* null, align 8
@ESP_STATUS = common dso_local global i32 0, align 4
@ESP_STAT_INTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mac_scsi_esp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_scsi_esp_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %47, %2
  store i32 0, i32* %5, align 4
  %7 = load i64*, i64** @esp_chips, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load i64*, i64** @esp_chips, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ESP_STATUS, align 4
  %16 = call i32 @mac_esp_read8(i64 %14, i32 %15)
  %17 = load i32, i32* @ESP_STAT_INTR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = load i64*, i64** @esp_chips, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @scsi_esp_intr(i32 %21, i64 %24)
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %11, %6
  %27 = load i64*, i64** @esp_chips, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64*, i64** @esp_chips, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ESP_STATUS, align 4
  %36 = call i32 @mac_esp_read8(i64 %34, i32 %35)
  %37 = load i32, i32* @ESP_STAT_INTR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = load i64*, i64** @esp_chips, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @scsi_esp_intr(i32 %41, i64 %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %31, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %6, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local i32 @mac_esp_read8(i64, i32) #1

declare dso_local i32 @scsi_esp_intr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
