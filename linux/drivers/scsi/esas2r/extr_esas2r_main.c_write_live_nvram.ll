; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_write_live_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_write_live_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i32 }
%struct.esas2r_sas_nvram = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @write_live_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_live_nvram(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.esas2r_adapter*, align 8
  %15 = alloca %struct.esas2r_request*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.esas2r_adapter* @esas2r_adapter_from_kobj(%struct.kobject* %17)
  store %struct.esas2r_adapter* %18, %struct.esas2r_adapter** %14, align 8
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %22 = call %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter* %21)
  store %struct.esas2r_request* %22, %struct.esas2r_request** %15, align 8
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %15, align 8
  %24 = icmp eq %struct.esas2r_request* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %43

28:                                               ; preds = %6
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %30 = load %struct.esas2r_request*, %struct.esas2r_request** %15, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast i8* %31 to %struct.esas2r_sas_nvram*
  %33 = call i64 @esas2r_write_params(%struct.esas2r_adapter* %29, %struct.esas2r_request* %30, %struct.esas2r_sas_nvram* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %13, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %14, align 8
  %40 = load %struct.esas2r_request*, %struct.esas2r_request** %15, align 8
  %41 = call i32 @esas2r_free_request(%struct.esas2r_adapter* %39, %struct.esas2r_request* %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.esas2r_adapter* @esas2r_adapter_from_kobj(%struct.kobject*) #1

declare dso_local %struct.esas2r_request* @esas2r_alloc_request(%struct.esas2r_adapter*) #1

declare dso_local i64 @esas2r_write_params(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sas_nvram*) #1

declare dso_local i32 @esas2r_free_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
