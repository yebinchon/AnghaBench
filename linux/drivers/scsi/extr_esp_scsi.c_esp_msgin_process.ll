; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_msgin_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32*, i32, i32*, i32, i32, %struct.esp_cmd_entry*, i32 }
%struct.esp_cmd_entry = type { i32, i32 }
%struct.esp_cmd_priv = type { i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected msgin identify\0A\00", align 1
@ESP_EVENT_FREE_BUS = common dso_local global i32 0, align 4
@ESP_FLAG_QUICKIRQ_CHECK = common dso_local global i32 0, align 4
@ESP_CMD_SATN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_msgin_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_msgin_process(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.esp_cmd_priv*, align 8
  %8 = alloca %struct.esp_cmd_entry*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  %9 = load %struct.esp*, %struct.esp** %3, align 8
  %10 = getelementptr inbounds %struct.esp, %struct.esp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @shost_printk(i32 %21, i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %133

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %122 [
    i32 133, label %28
    i32 132, label %45
    i32 130, label %91
    i32 129, label %92
    i32 128, label %98
    i32 135, label %104
    i32 134, label %104
    i32 131, label %119
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %133

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.esp*, %struct.esp** %3, align 8
  %35 = getelementptr inbounds %struct.esp, %struct.esp* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = icmp slt i32 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %133

42:                                               ; preds = %32
  %43 = load %struct.esp*, %struct.esp** %3, align 8
  %44 = call i32 @esp_msgin_extended(%struct.esp* %43)
  store i32 0, i32* %2, align 4
  br label %133

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %133

49:                                               ; preds = %45
  %50 = load %struct.esp*, %struct.esp** %3, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %123

57:                                               ; preds = %49
  %58 = load %struct.esp*, %struct.esp** %3, align 8
  %59 = getelementptr inbounds %struct.esp, %struct.esp* %58, i32 0, i32 5
  %60 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %59, align 8
  store %struct.esp_cmd_entry* %60, %struct.esp_cmd_entry** %6, align 8
  %61 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %62 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(i32 %63)
  store %struct.esp_cmd_priv* %64, %struct.esp_cmd_priv** %7, align 8
  %65 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %66 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %69 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sg_dma_len(i32 %70)
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %75 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %78 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %80 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %86

81:                                               ; preds = %57
  %82 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %83 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %7, align 8
  %88 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %2, align 4
  br label %133

91:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %133

92:                                               ; preds = %26
  %93 = load %struct.esp*, %struct.esp** %3, align 8
  %94 = load %struct.esp*, %struct.esp** %3, align 8
  %95 = getelementptr inbounds %struct.esp, %struct.esp* %94, i32 0, i32 5
  %96 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %95, align 8
  %97 = call i32 @esp_restore_pointers(%struct.esp* %93, %struct.esp_cmd_entry* %96)
  store i32 0, i32* %2, align 4
  br label %133

98:                                               ; preds = %26
  %99 = load %struct.esp*, %struct.esp** %3, align 8
  %100 = load %struct.esp*, %struct.esp** %3, align 8
  %101 = getelementptr inbounds %struct.esp, %struct.esp* %100, i32 0, i32 5
  %102 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %101, align 8
  %103 = call i32 @esp_save_pointers(%struct.esp* %99, %struct.esp_cmd_entry* %102)
  store i32 0, i32* %2, align 4
  br label %133

104:                                              ; preds = %26, %26
  %105 = load %struct.esp*, %struct.esp** %3, align 8
  %106 = getelementptr inbounds %struct.esp, %struct.esp* %105, i32 0, i32 5
  %107 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %106, align 8
  store %struct.esp_cmd_entry* %107, %struct.esp_cmd_entry** %8, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %8, align 8
  %110 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.esp*, %struct.esp** %3, align 8
  %112 = load i32, i32* @ESP_EVENT_FREE_BUS, align 4
  %113 = call i32 @esp_event(%struct.esp* %111, i32 %112)
  %114 = load i32, i32* @ESP_FLAG_QUICKIRQ_CHECK, align 4
  %115 = load %struct.esp*, %struct.esp** %3, align 8
  %116 = getelementptr inbounds %struct.esp, %struct.esp* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  store i32 0, i32* %2, align 4
  br label %133

119:                                              ; preds = %26
  %120 = load %struct.esp*, %struct.esp** %3, align 8
  %121 = call i32 @esp_msgin_reject(%struct.esp* %120)
  store i32 0, i32* %2, align 4
  br label %133

122:                                              ; preds = %26
  br label %123

123:                                              ; preds = %122, %56
  %124 = load %struct.esp*, %struct.esp** %3, align 8
  %125 = getelementptr inbounds %struct.esp, %struct.esp* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 131, i32* %127, align 4
  %128 = load %struct.esp*, %struct.esp** %3, align 8
  %129 = getelementptr inbounds %struct.esp, %struct.esp* %128, i32 0, i32 3
  store i32 1, i32* %129, align 8
  %130 = load %struct.esp*, %struct.esp** %3, align 8
  %131 = load i32, i32* @ESP_CMD_SATN, align 4
  %132 = call i32 @scsi_esp_cmd(%struct.esp* %130, i32 %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %123, %119, %104, %98, %92, %91, %86, %48, %42, %41, %31, %20
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

declare dso_local i32 @esp_msgin_extended(%struct.esp*) #1

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @esp_restore_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_save_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_event(%struct.esp*, i32) #1

declare dso_local i32 @esp_msgin_reject(%struct.esp*) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
