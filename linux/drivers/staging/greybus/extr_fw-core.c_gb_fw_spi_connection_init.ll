; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_spi_connection_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_fw-core.c_gb_fw_spi_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@spilib_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_connection*)* @gb_fw_spi_connection_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_fw_spi_connection_init(%struct.gb_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %3, align 8
  %5 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %6 = icmp ne %struct.gb_connection* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %10 = call i32 @gb_connection_enable(%struct.gb_connection* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %8
  %16 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %18 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @spilib_ops, align 4
  %22 = call i32 @gb_spilib_master_init(%struct.gb_connection* %16, i32* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %27 = call i32 @gb_connection_disable(%struct.gb_connection* %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %13, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_spilib_master_init(%struct.gb_connection*, i32*, i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
