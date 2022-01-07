; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_reply_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_free_reply_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { i32, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_free_reply_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_free_reply_fusion(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 0
  %6 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  store %struct.fusion_context* %6, %struct.fusion_context** %3, align 8
  %7 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %8 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %7, i32 0, i32 2
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %15 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %18 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %23 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_pool_free(i32 %16, i64 %21, i32 %26)
  br label %28

28:                                               ; preds = %13, %1
  %29 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %30 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dma_pool_destroy(i32 %31)
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
