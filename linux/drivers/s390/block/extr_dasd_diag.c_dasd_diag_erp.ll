; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_diag_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_dasd_diag_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: The access mode of a DIAG device changed to read-only\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: DIAG ERP failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @dasd_diag_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_diag_erp(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = call i32 @mdsk_term_io(%struct.dasd_device* %4)
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mdsk_init_io(%struct.dasd_device* %6, i32 %11, i32 0, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 1
  %19 = call i32 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_name(i32* %25)
  %27 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @dev_name(i32* %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @mdsk_term_io(%struct.dasd_device*) #1

declare dso_local i32 @mdsk_init_io(%struct.dasd_device*, i32, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
