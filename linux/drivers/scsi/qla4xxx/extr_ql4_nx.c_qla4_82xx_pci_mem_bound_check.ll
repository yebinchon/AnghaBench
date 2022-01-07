; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_pci_mem_bound_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_pci_mem_bound_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA8XXX_ADDR_DDR_NET = common dso_local global i32 0, align 4
@QLA8XXX_ADDR_DDR_NET_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_qla_host*, i64, i32)* @qla4_82xx_pci_mem_bound_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qla4_82xx_pci_mem_bound_check(%struct.scsi_qla_host* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i32, i32* @QLA8XXX_ADDR_DDR_NET, align 4
  %10 = load i32, i32* @QLA8XXX_ADDR_DDR_NET_MAX, align 4
  %11 = call i32 @QLA8XXX_ADDR_IN_RANGE(i64 %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = sub i64 %17, 1
  %19 = load i32, i32* @QLA8XXX_ADDR_DDR_NET, align 4
  %20 = load i32, i32* @QLA8XXX_ADDR_DDR_NET_MAX, align 4
  %21 = call i32 @QLA8XXX_ADDR_IN_RANGE(i64 %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %13, %3
  store i64 0, i64* %4, align 8
  br label %37

36:                                               ; preds = %32, %29, %26, %23
  store i64 1, i64* %4, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32 @QLA8XXX_ADDR_IN_RANGE(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
