; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_scsi_esp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_scsi_esp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@scsi_esp_register.instance = internal global i32 0, align 4
@ESP_DEFAULT_TAGS = common dso_local global i64 0, align 8
@esp_transport_template = common dso_local global i32 0, align 4
@ESP_MAX_LUN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"esp%u: regs[%1p:%1p] irq[%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"esp%u: is a %s, %u MHz (ccf=%u), SCSI ID %u\0A\00", align 1
@esp_chip_names = common dso_local global i32* null, align 8
@esp_bus_reset_settle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_esp_register(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  %5 = load %struct.esp*, %struct.esp** %3, align 8
  %6 = getelementptr inbounds %struct.esp, %struct.esp* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @ESP_DEFAULT_TAGS, align 8
  %11 = load %struct.esp*, %struct.esp** %3, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 8
  store i64 %10, i64* %12, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @esp_transport_template, align 4
  %15 = load %struct.esp*, %struct.esp** %3, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @ESP_MAX_LUN, align 4
  %20 = load %struct.esp*, %struct.esp** %3, align 8
  %21 = getelementptr inbounds %struct.esp, %struct.esp* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %19, i32* %23, align 4
  %24 = load %struct.esp*, %struct.esp** %3, align 8
  %25 = getelementptr inbounds %struct.esp, %struct.esp* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = load i32, i32* @scsi_esp_register.instance, align 4
  %29 = load %struct.esp*, %struct.esp** %3, align 8
  %30 = getelementptr inbounds %struct.esp, %struct.esp* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.esp*, %struct.esp** %3, align 8
  %34 = call i32 @esp_set_clock_params(%struct.esp* %33)
  %35 = load %struct.esp*, %struct.esp** %3, align 8
  %36 = call i32 @esp_get_revision(%struct.esp* %35)
  %37 = load %struct.esp*, %struct.esp** %3, align 8
  %38 = call i32 @esp_init_swstate(%struct.esp* %37)
  %39 = load %struct.esp*, %struct.esp** %3, align 8
  %40 = call i32 @esp_bootup_reset(%struct.esp* %39)
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.esp*, %struct.esp** %3, align 8
  %43 = getelementptr inbounds %struct.esp, %struct.esp* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.esp*, %struct.esp** %3, align 8
  %46 = getelementptr inbounds %struct.esp, %struct.esp* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.esp*, %struct.esp** %3, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.esp*, %struct.esp** %3, align 8
  %54 = getelementptr inbounds %struct.esp, %struct.esp* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.esp*, %struct.esp** %3, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i32, i8*, i32, i32, i32, i32, ...) @dev_printk(i32 %41, i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i32 %60)
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load %struct.esp*, %struct.esp** %3, align 8
  %64 = getelementptr inbounds %struct.esp, %struct.esp* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.esp*, %struct.esp** %3, align 8
  %67 = getelementptr inbounds %struct.esp, %struct.esp* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @esp_chip_names, align 8
  %72 = load %struct.esp*, %struct.esp** %3, align 8
  %73 = getelementptr inbounds %struct.esp, %struct.esp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.esp*, %struct.esp** %3, align 8
  %78 = getelementptr inbounds %struct.esp, %struct.esp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %79, 1000000
  %81 = load %struct.esp*, %struct.esp** %3, align 8
  %82 = getelementptr inbounds %struct.esp, %struct.esp* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.esp*, %struct.esp** %3, align 8
  %85 = getelementptr inbounds %struct.esp, %struct.esp* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i32, i8*, i32, i32, i32, i32, ...) @dev_printk(i32 %62, i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %76, i32 %80, i32 %83, i32 %86)
  %88 = load i32, i32* @esp_bus_reset_settle, align 4
  %89 = call i32 @ssleep(i32 %88)
  %90 = load %struct.esp*, %struct.esp** %3, align 8
  %91 = getelementptr inbounds %struct.esp, %struct.esp* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.esp*, %struct.esp** %3, align 8
  %94 = getelementptr inbounds %struct.esp, %struct.esp* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @scsi_add_host(%struct.TYPE_3__* %92, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %13
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %108

101:                                              ; preds = %13
  %102 = load i32, i32* @scsi_esp_register.instance, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @scsi_esp_register.instance, align 4
  %104 = load %struct.esp*, %struct.esp** %3, align 8
  %105 = getelementptr inbounds %struct.esp, %struct.esp* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @scsi_scan_host(%struct.TYPE_3__* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %99
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @esp_set_clock_params(%struct.esp*) #1

declare dso_local i32 @esp_get_revision(%struct.esp*) #1

declare dso_local i32 @esp_init_swstate(%struct.esp*) #1

declare dso_local i32 @esp_bootup_reset(%struct.esp*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @scsi_add_host(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @scsi_scan_host(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
