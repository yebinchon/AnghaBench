; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_advance_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_advance_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.esp_cmd_entry = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }
%struct.esp_cmd_priv = type { i64, i64, i32, i32 }

@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Data transfer overflow.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cur_residue[%d] tot_residue[%d] len[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.esp_cmd_entry*, %struct.scsi_cmnd*, i32)* @esp_advance_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_advance_dma(%struct.esp* %0, %struct.esp_cmd_entry* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.esp_cmd_priv*, align 8
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.esp_cmd_entry* %1, %struct.esp_cmd_entry** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %11 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %10)
  store %struct.esp_cmd_priv* %11, %struct.esp_cmd_priv** %9, align 8
  %12 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %13 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %21 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %96

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %28 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %34 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %38 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %24
  %42 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %43 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %41, %24
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load %struct.esp*, %struct.esp** %5, align 8
  %49 = getelementptr inbounds %struct.esp, %struct.esp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %47, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load %struct.esp*, %struct.esp** %5, align 8
  %54 = getelementptr inbounds %struct.esp, %struct.esp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %57 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %60 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %52, i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %61, i32 %62)
  %64 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %65 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %67 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %46, %41
  %69 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %70 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %68
  %74 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %75 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %80 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %83 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %85 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sg_next(i32 %86)
  %88 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %89 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %91 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @sg_dma_len(i32 %92)
  %94 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %9, align 8
  %95 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %18, %78, %73, %68
  ret void
}

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i64 @sg_dma_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
