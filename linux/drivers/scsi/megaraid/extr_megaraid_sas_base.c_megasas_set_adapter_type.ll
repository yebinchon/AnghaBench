; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_adapter_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_adapter_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PCI_VENDOR_ID_DELL = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_DELL_PERC5 = common dso_local global i32 0, align 4
@MFI_SERIES = common dso_local global i8* null, align 8
@AERO_SERIES = common dso_local global i8* null, align 8
@VENTURA_SERIES = common dso_local global i8* null, align 8
@THUNDERBOLT_SERIES = common dso_local global i8* null, align 8
@INVADER_SERIES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_set_adapter_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_set_adapter_type(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %4 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCI_VENDOR_ID_DELL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PCI_DEVICE_ID_DELL_PERC5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i8*, i8** @MFI_SERIES, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %49

22:                                               ; preds = %10, %1
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %44 [
    i32 145, label %28
    i32 144, label %28
    i32 143, label %28
    i32 142, label %28
    i32 129, label %32
    i32 141, label %32
    i32 135, label %32
    i32 130, label %32
    i32 128, label %32
    i32 140, label %32
    i32 136, label %36
    i32 131, label %36
    i32 132, label %40
    i32 134, label %40
    i32 133, label %40
    i32 139, label %40
    i32 138, label %40
    i32 137, label %40
  ]

28:                                               ; preds = %22, %22, %22, %22
  %29 = load i8*, i8** @AERO_SERIES, align 8
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %48

32:                                               ; preds = %22, %22, %22, %22, %22, %22
  %33 = load i8*, i8** @VENTURA_SERIES, align 8
  %34 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %35 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %48

36:                                               ; preds = %22, %22
  %37 = load i8*, i8** @THUNDERBOLT_SERIES, align 8
  %38 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %39 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %48

40:                                               ; preds = %22, %22, %22, %22, %22, %22
  %41 = load i8*, i8** @INVADER_SERIES, align 8
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %48

44:                                               ; preds = %22
  %45 = load i8*, i8** @MFI_SERIES, align 8
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %40, %36, %32, %28
  br label %49

49:                                               ; preds = %48, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
