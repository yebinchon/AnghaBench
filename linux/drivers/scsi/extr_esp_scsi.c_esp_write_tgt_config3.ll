; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_write_tgt_config3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_write_tgt_config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ESP100A = common dso_local global i64 0, align 8
@ESP_CFG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, i32)* @esp_write_tgt_config3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_write_tgt_config3(%struct.esp* %0, i32 %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.esp* %0, %struct.esp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.esp*, %struct.esp** %3, align 8
  %7 = getelementptr inbounds %struct.esp, %struct.esp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ESP100A, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.esp*, %struct.esp** %3, align 8
  %13 = getelementptr inbounds %struct.esp, %struct.esp* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.esp*, %struct.esp** %3, align 8
  %22 = getelementptr inbounds %struct.esp, %struct.esp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.esp*, %struct.esp** %3, align 8
  %28 = getelementptr inbounds %struct.esp, %struct.esp* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @ESP_CFG3, align 4
  %31 = call i32 @esp_write8(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %11
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @esp_write8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
