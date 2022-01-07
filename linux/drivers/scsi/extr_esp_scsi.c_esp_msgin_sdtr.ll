; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_sdtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i32, i32, i32, i64, i32, i32* }
%struct.esp_target_data = type { i32, i32, i32 }

@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@FAS236 = common dso_local global i64 0, align 8
@MESSAGE_REJECT = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_target_data*)* @esp_msgin_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_msgin_sdtr(%struct.esp* %0, %struct.esp_target_data* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_target_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.esp_target_data* %1, %struct.esp_target_data** %4, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %20 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %81

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %81

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.esp*, %struct.esp** %3, align 8
  %36 = getelementptr inbounds %struct.esp, %struct.esp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %92

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.esp*, %struct.esp** %3, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %81

47:                                               ; preds = %40
  %48 = load %struct.esp*, %struct.esp** %3, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 1000
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 2
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @DIV_ROUND_UP(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %47
  %59 = load %struct.esp*, %struct.esp** %3, align 8
  %60 = getelementptr inbounds %struct.esp, %struct.esp* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FAS236, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 50
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %58, %47
  br label %73

72:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.esp*, %struct.esp** %3, align 8
  %75 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @esp_setsync(%struct.esp* %74, %struct.esp_target_data* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  br label %115

81:                                               ; preds = %46, %29, %25
  %82 = load i32, i32* @MESSAGE_REJECT, align 4
  %83 = load %struct.esp*, %struct.esp** %3, align 8
  %84 = getelementptr inbounds %struct.esp, %struct.esp* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %82, i32* %86, align 4
  %87 = load %struct.esp*, %struct.esp** %3, align 8
  %88 = getelementptr inbounds %struct.esp, %struct.esp* %87, i32 0, i32 5
  store i32 1, i32* %88, align 8
  %89 = load %struct.esp*, %struct.esp** %3, align 8
  %90 = load i32, i32* @ESP_CMD_SATN, align 4
  %91 = call i32 @scsi_esp_cmd(%struct.esp* %89, i32 %90)
  br label %115

92:                                               ; preds = %39
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %95 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %98 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.esp*, %struct.esp** %3, align 8
  %100 = getelementptr inbounds %struct.esp, %struct.esp* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %104 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.esp_target_data*, %struct.esp_target_data** %4, align 8
  %107 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spi_populate_sync_msg(i32* %102, i32 %105, i32 %108)
  %110 = load %struct.esp*, %struct.esp** %3, align 8
  %111 = getelementptr inbounds %struct.esp, %struct.esp* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.esp*, %struct.esp** %3, align 8
  %113 = load i32, i32* @ESP_CMD_SATN, align 4
  %114 = call i32 @scsi_esp_cmd(%struct.esp* %112, i32 %113)
  br label %115

115:                                              ; preds = %92, %81, %73
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @esp_setsync(%struct.esp*, %struct.esp_target_data*, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @spi_populate_sync_msg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
