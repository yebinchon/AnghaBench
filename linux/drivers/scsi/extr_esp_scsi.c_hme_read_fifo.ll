; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_hme_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_hme_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i32, i32 }

@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_FDATA = common dso_local global i32 0, align 4
@ESP_STAT2_F1BYTE = common dso_local global i32 0, align 4
@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @hme_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_read_fifo(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %5 = load i32, i32* @ESP_FFLAGS, align 4
  %6 = call i32 @esp_read8(i32 %5)
  %7 = load i32, i32* @ESP_FF_FBYTES, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load i32, i32* @ESP_FDATA, align 4
  %15 = call i32 @esp_read8(i32 %14)
  %16 = load %struct.esp*, %struct.esp** %2, align 8
  %17 = getelementptr inbounds %struct.esp, %struct.esp* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  %23 = load i32, i32* @ESP_FDATA, align 4
  %24 = call i32 @esp_read8(i32 %23)
  %25 = load %struct.esp*, %struct.esp** %2, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.esp*, %struct.esp** %2, align 8
  %34 = getelementptr inbounds %struct.esp, %struct.esp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ESP_STAT2_F1BYTE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i32, i32* @ESP_FDATA, align 4
  %41 = call i32 @esp_write8(i32 0, i32 %40)
  %42 = load i32, i32* @ESP_FDATA, align 4
  %43 = call i32 @esp_read8(i32 %42)
  %44 = load %struct.esp*, %struct.esp** %2, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  %51 = load %struct.esp*, %struct.esp** %2, align 8
  %52 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %53 = call i32 @scsi_esp_cmd(%struct.esp* %51, i32 %52)
  br label %54

54:                                               ; preds = %39, %32
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.esp*, %struct.esp** %2, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
