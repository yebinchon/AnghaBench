; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_phdr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_phdr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_phdr = type { i64, i32, i32 }

@PT_LOAD = common dso_local global i64 0, align 8
@QCOM_MDT_TYPE_MASK = common dso_local global i32 0, align 4
@QCOM_MDT_TYPE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf32_phdr*)* @q6v5_phdr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_phdr_valid(%struct.elf32_phdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf32_phdr*, align 8
  store %struct.elf32_phdr* %0, %struct.elf32_phdr** %3, align 8
  %4 = load %struct.elf32_phdr*, %struct.elf32_phdr** %3, align 8
  %5 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PT_LOAD, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.elf32_phdr*, %struct.elf32_phdr** %3, align 8
  %12 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @QCOM_MDT_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @QCOM_MDT_TYPE_HASH, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %26

19:                                               ; preds = %10
  %20 = load %struct.elf32_phdr*, %struct.elf32_phdr** %3, align 8
  %21 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %18, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
