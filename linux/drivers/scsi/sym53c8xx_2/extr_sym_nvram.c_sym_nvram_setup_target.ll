; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_nvram_setup_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_nvram_setup_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_tcb = type { i32 }
%struct.sym_nvram = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_nvram_setup_target(%struct.sym_tcb* %0, i32 %1, %struct.sym_nvram* %2) #0 {
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_nvram*, align 8
  store %struct.sym_tcb* %0, %struct.sym_tcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sym_nvram* %2, %struct.sym_nvram** %6, align 8
  %7 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %8 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %17
  ]

10:                                               ; preds = %3
  %11 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %14 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @sym_Symbios_setup_target(%struct.sym_tcb* %11, i32 %12, i32* %15)
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %21 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @sym_Tekram_setup_target(%struct.sym_tcb* %18, i32 %19, i32* %22)
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %17, %10
  ret void
}

declare dso_local i32 @sym_Symbios_setup_target(%struct.sym_tcb*, i32, i32*) #1

declare dso_local i32 @sym_Tekram_setup_target(%struct.sym_tcb*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
