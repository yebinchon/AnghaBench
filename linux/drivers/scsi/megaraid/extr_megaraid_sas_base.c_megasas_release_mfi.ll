; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_release_mfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_release_mfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_release_mfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_release_mfi(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_free_coherent(i32* %19, i32 %20, i64 %23, i32 %26)
  br label %28

28:                                               ; preds = %15, %1
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %30 = call i32 @megasas_free_cmds(%struct.megasas_instance* %29)
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @pci_release_selected_regions(%struct.TYPE_2__* %37, i32 %41)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @megasas_free_cmds(%struct.megasas_instance*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_selected_regions(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
