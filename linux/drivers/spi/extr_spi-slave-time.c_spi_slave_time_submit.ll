; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-time.c_spi_slave_time_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-time.c_spi_slave_time_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave_time_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i8** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.spi_slave_time_priv*, i32 }

@spi_slave_time_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"spi_async() failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_slave_time_priv*)* @spi_slave_time_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_slave_time_submit(%struct.spi_slave_time_priv* %0) #0 {
  %2 = alloca %struct.spi_slave_time_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_slave_time_priv* %0, %struct.spi_slave_time_priv** %2, align 8
  %6 = call i32 (...) @local_clock()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @do_div(i32 %7, i32 1000000000)
  %9 = sdiv i32 %8, 1000
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %13 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %12, i32 0, i32 3
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %19 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %18, i32 0, i32 3
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %17, i8** %21, align 8
  %22 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %23 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %22, i32 0, i32 1
  %24 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %25 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %24, i32 0, i32 2
  %26 = call i32 @spi_message_init_with_transfers(%struct.TYPE_4__* %23, i32* %25, i32 1)
  %27 = load i32, i32* @spi_slave_time_complete, align 4
  %28 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %29 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %32 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %33 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.spi_slave_time_priv* %31, %struct.spi_slave_time_priv** %34, align 8
  %35 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %36 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %39 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %38, i32 0, i32 1
  %40 = call i32 @spi_async(%struct.TYPE_5__* %37, %struct.TYPE_4__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %2, align 8
  %45 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %1
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @spi_message_init_with_transfers(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @spi_async(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
