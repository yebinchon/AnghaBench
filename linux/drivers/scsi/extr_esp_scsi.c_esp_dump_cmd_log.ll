; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_dump_cmd_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_dump_cmd_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, %struct.esp_event_ent* }
%struct.esp_event_ent = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Dumping command log\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"ent[%d] %s val[%02x] sreg[%02x] seqreg[%02x] sreg2[%02x] ireg[%02x] ss[%02x] event[%02x]\0A\00", align 1
@ESP_EVENT_TYPE_CMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"EVENT\00", align 1
@ESP_EVENT_LOG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_dump_cmd_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_dump_cmd_log(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_event_ent*, align 8
  store %struct.esp* %0, %struct.esp** %2, align 8
  %6 = load %struct.esp*, %struct.esp** %2, align 8
  %7 = getelementptr inbounds %struct.esp, %struct.esp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @KERN_INFO, align 4
  %11 = load %struct.esp*, %struct.esp** %2, align 8
  %12 = getelementptr inbounds %struct.esp, %struct.esp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %10, i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %61, %1
  %16 = load %struct.esp*, %struct.esp** %2, align 8
  %17 = getelementptr inbounds %struct.esp, %struct.esp* %16, i32 0, i32 2
  %18 = load %struct.esp_event_ent*, %struct.esp_event_ent** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %18, i64 %20
  store %struct.esp_event_ent* %21, %struct.esp_event_ent** %5, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load %struct.esp*, %struct.esp** %2, align 8
  %24 = getelementptr inbounds %struct.esp, %struct.esp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %28 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ESP_EVENT_TYPE_CMD, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %34 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %35 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %38 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %41 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %44 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %47 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %50 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.esp_event_ent*, %struct.esp_event_ent** %5, align 8
  %53 = getelementptr inbounds %struct.esp_event_ent, %struct.esp_event_ent* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %22, i32 %25, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @ESP_EVENT_LOG_SZ, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %57, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %15
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %15, label %65

65:                                               ; preds = %61
  ret void
}

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
