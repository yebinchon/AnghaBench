; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_dma_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_dma_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, %struct.esp_cmd_entry* }
%struct.esp_cmd_entry = type { i32 }

@ESP_STAT_PMASK = common dso_local global i32 0, align 4
@ESP_DOP = common dso_local global i32 0, align 4
@ESP_DIP = common dso_local global i32 0, align 4
@ESP_FFLAGS = common dso_local global i32 0, align 4
@ESP_FF_FBYTES = common dso_local global i32 0, align 4
@ESP_DMA_CMD_DIR = common dso_local global i32 0, align 4
@ESP_DMA_CMD_BLAST = common dso_local global i32 0, align 4
@ESP_DMA_CMD = common dso_local global i32 0, align 4
@ESP_DMA_STATUS = common dso_local global i32 0, align 4
@ESP_DMA_STAT_BCMPLT = common dso_local global i32 0, align 4
@ESP_DMA_CMD_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DMA blast done (%d tries, %d bytes left)\0A\00", align 1
@ESP_CMD_FLAG_RESIDUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @pci_esp_dma_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_esp_dma_drain(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_cmd_entry*, align 8
  store %struct.esp* %0, %struct.esp** %2, align 8
  store i32 1000, i32* %4, align 4
  %6 = load %struct.esp*, %struct.esp** %2, align 8
  %7 = getelementptr inbounds %struct.esp, %struct.esp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ESP_STAT_PMASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @ESP_DOP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.esp*, %struct.esp** %2, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ESP_STAT_PMASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @ESP_DIP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  br label %83

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.esp*, %struct.esp** %2, align 8
  %29 = load i32, i32* @ESP_FFLAGS, align 4
  %30 = call i32 @pci_esp_read8(%struct.esp* %28, i32 %29)
  %31 = load i32, i32* @ESP_FF_FBYTES, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %38

36:                                               ; preds = %27
  %37 = call i32 (...) @cpu_relax()
  br label %23

38:                                               ; preds = %35, %23
  store i32 1000, i32* %4, align 4
  %39 = load %struct.esp*, %struct.esp** %2, align 8
  %40 = load i32, i32* @ESP_DMA_CMD_DIR, align 4
  %41 = load i32, i32* @ESP_DMA_CMD_BLAST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ESP_DMA_CMD, align 4
  %44 = call i32 @pci_esp_write8(%struct.esp* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %57, %38
  %46 = load %struct.esp*, %struct.esp** %2, align 8
  %47 = load i32, i32* @ESP_DMA_STATUS, align 4
  %48 = call i32 @pci_esp_read8(%struct.esp* %46, i32 %47)
  %49 = load i32, i32* @ESP_DMA_STAT_BCMPLT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @cpu_relax()
  br label %45

59:                                               ; preds = %56, %45
  %60 = load %struct.esp*, %struct.esp** %2, align 8
  %61 = load i32, i32* @ESP_DMA_CMD_DIR, align 4
  %62 = load i32, i32* @ESP_DMA_CMD_IDLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ESP_DMA_CMD, align 4
  %65 = call i32 @pci_esp_write8(%struct.esp* %60, i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @esp_dma_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON_ONCE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load %struct.esp*, %struct.esp** %2, align 8
  %76 = getelementptr inbounds %struct.esp, %struct.esp* %75, i32 0, i32 1
  %77 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %76, align 8
  store %struct.esp_cmd_entry* %77, %struct.esp_cmd_entry** %5, align 8
  %78 = load i32, i32* @ESP_CMD_FLAG_RESIDUAL, align 4
  %79 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %5, align 8
  %80 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %21, %74, %59
  ret void
}

declare dso_local i32 @pci_esp_read8(%struct.esp*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pci_esp_write8(%struct.esp*, i32, i32) #1

declare dso_local i32 @esp_dma_log(i8*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
