; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_get_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, i64, i32, i32 }

@ESP_CONFIG1_PENABLE = common dso_local global i32 0, align 4
@ESP_CONFIG2_SCSI2ENAB = common dso_local global i32 0, align 4
@ESP_CONFIG2_REGPARITY = common dso_local global i32 0, align 4
@ESP_CFG2 = common dso_local global i32 0, align 4
@ESP_CONFIG2_MAGIC = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i32 0, align 4
@ESP_CFG3 = common dso_local global i32 0, align 4
@ESP100A = common dso_local global i32 0, align 4
@ESP_CCF_F5 = common dso_local global i64 0, align 8
@FAST = common dso_local global i32 0, align 4
@SYNC_DEFP_FAST = common dso_local global i32 0, align 4
@ESP236 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_get_revision(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %2, align 8
  %4 = load i32, i32* @ESP_CONFIG1_PENABLE, align 4
  %5 = load %struct.esp*, %struct.esp** %2, align 8
  %6 = getelementptr inbounds %struct.esp, %struct.esp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 7
  %9 = or i32 %4, %8
  %10 = load %struct.esp*, %struct.esp** %2, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.esp*, %struct.esp** %2, align 8
  %13 = getelementptr inbounds %struct.esp, %struct.esp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @ESP_CONFIG2_SCSI2ENAB, align 4
  %18 = load i32, i32* @ESP_CONFIG2_REGPARITY, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.esp*, %struct.esp** %2, align 8
  %21 = getelementptr inbounds %struct.esp, %struct.esp* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.esp*, %struct.esp** %2, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ESP_CFG2, align 4
  %26 = call i32 @esp_write8(i32 %24, i32 %25)
  %27 = load i32, i32* @ESP_CFG2, align 4
  %28 = call i32 @esp_read8(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @ESP_CONFIG2_MAGIC, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.esp*, %struct.esp** %2, align 8
  %34 = getelementptr inbounds %struct.esp, %struct.esp* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ESP_CONFIG2_SCSI2ENAB, align 4
  %37 = load i32, i32* @ESP_CONFIG2_REGPARITY, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %16
  %41 = load i32, i32* @ESP100, align 4
  %42 = load %struct.esp*, %struct.esp** %2, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  br label %102

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.esp*, %struct.esp** %2, align 8
  %47 = call i32 @esp_set_all_config3(%struct.esp* %46, i32 5)
  %48 = load %struct.esp*, %struct.esp** %2, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 3
  store i32 5, i32* %49, align 4
  %50 = load %struct.esp*, %struct.esp** %2, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ESP_CFG2, align 4
  %54 = call i32 @esp_write8(i32 %52, i32 %53)
  %55 = load i32, i32* @ESP_CFG3, align 4
  %56 = call i32 @esp_write8(i32 0, i32 %55)
  %57 = load %struct.esp*, %struct.esp** %2, align 8
  %58 = getelementptr inbounds %struct.esp, %struct.esp* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ESP_CFG3, align 4
  %61 = call i32 @esp_write8(i32 %59, i32 %60)
  %62 = load i32, i32* @ESP_CFG3, align 4
  %63 = call i32 @esp_read8(i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 5
  br i1 %65, label %66, label %70

66:                                               ; preds = %45
  %67 = load i32, i32* @ESP100A, align 4
  %68 = load %struct.esp*, %struct.esp** %2, align 8
  %69 = getelementptr inbounds %struct.esp, %struct.esp* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  br label %102

70:                                               ; preds = %45
  %71 = load %struct.esp*, %struct.esp** %2, align 8
  %72 = call i32 @esp_set_all_config3(%struct.esp* %71, i32 0)
  %73 = load %struct.esp*, %struct.esp** %2, align 8
  %74 = getelementptr inbounds %struct.esp, %struct.esp* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  %75 = load %struct.esp*, %struct.esp** %2, align 8
  %76 = getelementptr inbounds %struct.esp, %struct.esp* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ESP_CFG3, align 4
  %79 = call i32 @esp_write8(i32 %77, i32 %78)
  %80 = load %struct.esp*, %struct.esp** %2, align 8
  %81 = getelementptr inbounds %struct.esp, %struct.esp* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %70
  %85 = load %struct.esp*, %struct.esp** %2, align 8
  %86 = getelementptr inbounds %struct.esp, %struct.esp* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ESP_CCF_F5, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84, %70
  %91 = load i32, i32* @FAST, align 4
  %92 = load %struct.esp*, %struct.esp** %2, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @SYNC_DEFP_FAST, align 4
  %95 = load %struct.esp*, %struct.esp** %2, align 8
  %96 = getelementptr inbounds %struct.esp, %struct.esp* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  br label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @ESP236, align 4
  %99 = load %struct.esp*, %struct.esp** %2, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %40, %101, %66
  ret void
}

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @esp_set_all_config3(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
