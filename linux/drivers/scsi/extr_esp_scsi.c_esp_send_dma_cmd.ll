; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_send_dma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_send_dma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.esp*, i32, i32, i32, i32, i32)* }

@ESP_FLAG_USE_FIFO = common dso_local global i32 0, align 4
@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@ESP_FDATA = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32)* @esp_send_dma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_send_dma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.esp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.esp*, %struct.esp** %5, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ESP_FLAG_USE_FIFO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load %struct.esp*, %struct.esp** %5, align 8
  %18 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %19 = call i32 @scsi_esp_cmd(%struct.esp* %17, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %34, %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.esp*, %struct.esp** %5, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ESP_FDATA, align 4
  %33 = call i32 @esp_write8(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.esp*, %struct.esp** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @scsi_esp_cmd(%struct.esp* %38, i32 %39)
  br label %68

41:                                               ; preds = %4
  %42 = load %struct.esp*, %struct.esp** %5, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FASHME, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.esp*, %struct.esp** %5, align 8
  %49 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %50 = call i32 @scsi_esp_cmd(%struct.esp* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i32, i32* @ESP_CMD_DMA, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.esp*, %struct.esp** %5, align 8
  %56 = getelementptr inbounds %struct.esp, %struct.esp* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.esp*, i32, i32, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32, i32, i32)** %58, align 8
  %60 = load %struct.esp*, %struct.esp** %5, align 8
  %61 = load %struct.esp*, %struct.esp** %5, align 8
  %62 = getelementptr inbounds %struct.esp, %struct.esp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %59(%struct.esp* %60, i32 %63, i32 %64, i32 %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
