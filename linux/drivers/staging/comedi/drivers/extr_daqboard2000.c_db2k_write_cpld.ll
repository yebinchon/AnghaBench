; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_write_cpld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_write_cpld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DB2K_REG_CPLD_WDATA = common dso_local global i64 0, align 8
@DB2K_REG_CPLD_STATUS = common dso_local global i64 0, align 8
@DB2K_CPLD_STATUS_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @db2k_write_cpld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db2k_write_cpld(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = call i32 @db2k_wait_cpld_txready(%struct.comedi_device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %3
  %20 = call i32 @usleep_range(i32 10, i32 20)
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DB2K_REG_CPLD_WDATA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 %22, i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DB2K_REG_CPLD_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readw(i64 %33)
  %35 = load i32, i32* @DB2K_CPLD_STATUS_INIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @db2k_wait_cpld_txready(%struct.comedi_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
