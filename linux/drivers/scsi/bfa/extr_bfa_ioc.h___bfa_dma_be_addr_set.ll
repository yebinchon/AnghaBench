; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.h___bfa_dma_be_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.h___bfa_dma_be_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bfi_addr_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.bfi_addr_u*, i32)* @__bfa_dma_be_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_dma_be_addr_set(%union.bfi_addr_u* %0, i32 %1) #0 {
  %3 = alloca %union.bfi_addr_u*, align 8
  %4 = alloca i32, align 4
  store %union.bfi_addr_u* %0, %union.bfi_addr_u** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i8* @cpu_to_be32(i32 %5)
  %7 = load %union.bfi_addr_u*, %union.bfi_addr_u** %3, align 8
  %8 = bitcast %union.bfi_addr_u* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i8* %6, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 32
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %union.bfi_addr_u*, %union.bfi_addr_u** %3, align 8
  %14 = bitcast %union.bfi_addr_u* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
