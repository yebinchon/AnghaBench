; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_check_spur_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_check_spur_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ESP_STAT_INTR = common dso_local global i32 0, align 4
@ESP_INTR_SR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Spurious irq, sreg=%02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_check_spur_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_check_spur_intr(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  %4 = load %struct.esp*, %struct.esp** %3, align 8
  %5 = getelementptr inbounds %struct.esp, %struct.esp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %14 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @ESP_STAT_INTR, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.esp*, %struct.esp** %3, align 8
  %11 = getelementptr inbounds %struct.esp, %struct.esp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.esp*, %struct.esp** %3, align 8
  %16 = getelementptr inbounds %struct.esp, %struct.esp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ESP_STAT_INTR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %14
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ESP_INTR_SR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load %struct.esp*, %struct.esp** %3, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.esp*)**
  %35 = load i32 (%struct.esp*)*, i32 (%struct.esp*)** %34, align 8
  %36 = load %struct.esp*, %struct.esp** %3, align 8
  %37 = call i32 %35(%struct.esp* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load %struct.esp*, %struct.esp** %3, align 8
  %42 = getelementptr inbounds %struct.esp, %struct.esp* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.esp*, %struct.esp** %3, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %40, i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %2, align 4
  br label %56

48:                                               ; preds = %29
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load %struct.esp*, %struct.esp** %3, align 8
  %51 = getelementptr inbounds %struct.esp, %struct.esp* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %49, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %56

54:                                               ; preds = %14
  br label %55

55:                                               ; preds = %54, %7
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48, %39, %28
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
