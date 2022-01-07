; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_esp_dma_length_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mac_esp.c_mac_esp_dma_length_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, i32, i32)* @mac_esp_dma_length_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_esp_dma_length_limit(%struct.esp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.esp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 65535
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 65535, %9 ], [ %11, %10 ]
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
