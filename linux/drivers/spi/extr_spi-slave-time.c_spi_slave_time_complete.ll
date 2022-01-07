; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-time.c_spi_slave_time_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-time.c_spi_slave_time_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_slave_time_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Terminating\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spi_slave_time_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_slave_time_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_slave_time_priv*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.spi_slave_time_priv*
  store %struct.spi_slave_time_priv* %6, %struct.spi_slave_time_priv** %3, align 8
  %7 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %3, align 8
  %8 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %3, align 8
  %16 = call i32 @spi_slave_time_submit(%struct.spi_slave_time_priv* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  br label %30

21:                                               ; preds = %19, %13
  %22 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %3, align 8
  %23 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.spi_slave_time_priv*, %struct.spi_slave_time_priv** %3, align 8
  %28 = getelementptr inbounds %struct.spi_slave_time_priv, %struct.spi_slave_time_priv* %27, i32 0, i32 0
  %29 = call i32 @complete(i32* %28)
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @spi_slave_time_submit(%struct.spi_slave_time_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
