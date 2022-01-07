; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_request_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_request_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.MEGASAS_REQUEST_DESCRIPTOR_UNION = type { i32 }
%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.MEGASAS_REQUEST_DESCRIPTOR_UNION* (%struct.megasas_instance*, i32)* @megasas_get_request_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 0
  %9 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  store %struct.fusion_context* %9, %struct.fusion_context** %6, align 8
  %10 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %11 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*
  ret %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
