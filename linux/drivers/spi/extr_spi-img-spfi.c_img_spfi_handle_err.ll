; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_handle_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { i32 }
%struct.img_spfi = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_message*)* @img_spfi_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_spfi_handle_err(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.img_spfi*, align 8
  %6 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.img_spfi* %8, %struct.img_spfi** %5, align 8
  %9 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %10 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %9, i32 0, i32 2
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %14 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %19 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17, %2
  %23 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %24 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %26 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %28 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dmaengine_terminate_all(i32 %29)
  %31 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %32 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dmaengine_terminate_all(i32 %33)
  br label %35

35:                                               ; preds = %22, %17
  %36 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %37 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %36, i32 0, i32 2
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
