; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_io_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_io_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i64 }
%struct.pci_dev = type { i32 }
%struct.rtw_pci = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to request pci regions\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to map pci memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.pci_dev*)* @rtw_pci_io_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_io_mapping(%struct.rtw_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.rtw_pci*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rtw_pci*
  store %struct.rtw_pci* %13, %struct.rtw_pci** %6, align 8
  store i32 2, i32* %8, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load i32, i32* @KBUILD_MODNAME, align 4
  %16 = call i32 @pci_request_regions(%struct.pci_dev* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %21 = call i32 @rtw_err(%struct.rtw_dev* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @pci_resource_len(%struct.pci_dev* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @pci_iomap(%struct.pci_dev* %27, i32 %28, i64 %29)
  %31 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %32 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rtw_pci*, %struct.rtw_pci** %6, align 8
  %34 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %23
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %39 = call i32 @rtw_err(%struct.rtw_dev* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
