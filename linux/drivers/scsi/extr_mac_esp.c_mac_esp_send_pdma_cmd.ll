; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_esp_send_pdma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_esp_send_pdma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64 }
%struct.mac_esp_priv = type { i32 }

@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@ESP_TCLOW = common dso_local global i32 0, align 4
@ESP_TCMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%4@,%0@+\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%0@+,%4@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32, i32, i32, i32, i32)* @mac_esp_send_pdma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_esp_send_pdma_cmd(%struct.esp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.esp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mac_esp_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.esp*, %struct.esp** %7, align 8
  %20 = call %struct.mac_esp_priv* @MAC_ESP_GET_PRIV(%struct.esp* %19)
  store %struct.mac_esp_priv* %20, %struct.mac_esp_priv** %13, align 8
  %21 = load %struct.esp*, %struct.esp** %7, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load %struct.esp*, %struct.esp** %7, align 8
  %27 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %28 = call i32 @scsi_esp_cmd(%struct.esp* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = load i32, i32* @ESP_TCLOW, align 4
  %34 = call i32 @esp_write8(i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load i32, i32* @ESP_TCMED, align 4
  %39 = call i32 @esp_write8(i32 %37, i32 %38)
  %40 = load %struct.esp*, %struct.esp** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @scsi_esp_cmd(%struct.esp* %40, i32 %41)
  br label %43

43:                                               ; preds = %86, %29
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 5
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 31
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.esp*, %struct.esp** %7, align 8
  %53 = call i64 @mac_esp_wait_for_dreq(%struct.esp* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %89

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = call i32 @MAC_ESP_PDMA_LOOP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %17, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %85

66:                                               ; preds = %56
  %67 = call i32 @MAC_ESP_PDMA_LOOP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.esp*, %struct.esp** %7, align 8
  %69 = call i64 @mac_esp_wait_for_empty_fifo(%struct.esp* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %89

72:                                               ; preds = %66
  %73 = load i32, i32* @ESP_TCMED, align 4
  %74 = call i32 @esp_read8(i32 %73)
  %75 = shl i32 %74, 8
  %76 = load i32, i32* @ESP_TCLOW, align 4
  %77 = call i32 @esp_read8(i32 %76)
  %78 = add nsw i32 %75, %77
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %79, %80
  %82 = load i32, i32* %18, align 4
  %83 = sub i32 %81, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %72, %59
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %43, label %89

89:                                               ; preds = %86, %71, %55
  ret void
}

declare dso_local %struct.mac_esp_priv* @MAC_ESP_GET_PRIV(%struct.esp*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i64 @mac_esp_wait_for_dreq(%struct.esp*) #1

declare dso_local i32 @MAC_ESP_PDMA_LOOP(i8*) #1

declare dso_local i64 @mac_esp_wait_for_empty_fifo(%struct.esp*) #1

declare dso_local i32 @esp_read8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
