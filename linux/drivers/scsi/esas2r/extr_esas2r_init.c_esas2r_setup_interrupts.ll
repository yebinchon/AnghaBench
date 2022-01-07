; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32, i32 }

@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"failed to enable MSI for adapter %d, falling back to legacy interrupts (err=%d)\00", align 1
@AF2_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"unknown interrupt_mode %d requested, falling back to legacy interrupt\00", align 1
@interrupt_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, i32)* @esas2r_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_setup_interrupts(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %32, %18, %7
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 0
  store i32 129, i32* %10, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_enable_msi(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, i32, ...) @esas2r_log(i32 %19, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %8

25:                                               ; preds = %11
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 0
  store i32 128, i32* %27, align 4
  %28 = load i32, i32* @AF2_MSI_ENABLED, align 4
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %34 = load i32, i32* @interrupt_mode, align 4
  %35 = call i32 (i32, i8*, i32, ...) @esas2r_log(i32 %33, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %8

36:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @esas2r_log(i32, i8*, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
