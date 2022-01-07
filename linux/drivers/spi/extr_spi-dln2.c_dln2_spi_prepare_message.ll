; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dln2.c_dln2_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i64 }
%struct.dln2_spi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @dln2_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_spi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dln2_spi*, align 8
  %8 = alloca %struct.spi_device*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.dln2_spi* %10, %struct.dln2_spi** %7, align 8
  %11 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %12 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %8, align 8
  %14 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %15 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dln2_spi_cs_set_one(%struct.dln2_spi* %22, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dln2_spi*, %struct.dln2_spi** %7, align 8
  %36 = getelementptr inbounds %struct.dln2_spi, %struct.dln2_spi* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.dln2_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dln2_spi_cs_set_one(%struct.dln2_spi*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
