; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_zorro_esp.c_zorro_esp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_zorro_esp.c_zorro_esp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i32 }
%struct.zorro_esp_priv = type { i32, i64, %struct.esp* }
%struct.esp = type { i32, i32, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zorro_dev*)* @zorro_esp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zorro_esp_remove(%struct.zorro_dev* %0) #0 {
  %2 = alloca %struct.zorro_dev*, align 8
  %3 = alloca %struct.zorro_esp_priv*, align 8
  %4 = alloca %struct.esp*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %2, align 8
  %6 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %7 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %6, i32 0, i32 0
  %8 = call %struct.zorro_esp_priv* @dev_get_drvdata(i32* %7)
  store %struct.zorro_esp_priv* %8, %struct.zorro_esp_priv** %3, align 8
  %9 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %3, align 8
  %10 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %9, i32 0, i32 2
  %11 = load %struct.esp*, %struct.esp** %10, align 8
  store %struct.esp* %11, %struct.esp** %4, align 8
  %12 = load %struct.esp*, %struct.esp** %4, align 8
  %13 = getelementptr inbounds %struct.esp, %struct.esp* %12, i32 0, i32 5
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.esp*, %struct.esp** %4, align 8
  %16 = call i32 @scsi_esp_unregister(%struct.esp* %15)
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.esp*, %struct.esp** %4, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.esp* %20)
  %22 = load %struct.esp*, %struct.esp** %4, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.esp*, %struct.esp** %4, align 8
  %26 = getelementptr inbounds %struct.esp, %struct.esp* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.esp*, %struct.esp** %4, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %24, i32 16, i32 %27, i32 %30)
  %32 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %3, align 8
  %33 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %3, align 8
  %38 = getelementptr inbounds %struct.zorro_esp_priv, %struct.zorro_esp_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @iounmap(i32 %39)
  %41 = load %struct.esp*, %struct.esp** %4, align 8
  %42 = getelementptr inbounds %struct.esp, %struct.esp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iounmap(i32 %43)
  br label %45

45:                                               ; preds = %36, %1
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 16777215
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.esp*, %struct.esp** %4, align 8
  %52 = getelementptr inbounds %struct.esp, %struct.esp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @iounmap(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %57 = call i32 @scsi_host_put(%struct.Scsi_Host* %56)
  %58 = load %struct.zorro_dev*, %struct.zorro_dev** %2, align 8
  %59 = call i32 @zorro_release_device(%struct.zorro_dev* %58)
  %60 = load %struct.zorro_esp_priv*, %struct.zorro_esp_priv** %3, align 8
  %61 = call i32 @kfree(%struct.zorro_esp_priv* %60)
  ret void
}

declare dso_local %struct.zorro_esp_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @scsi_esp_unregister(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @zorro_release_device(%struct.zorro_dev*) #1

declare dso_local i32 @kfree(%struct.zorro_esp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
