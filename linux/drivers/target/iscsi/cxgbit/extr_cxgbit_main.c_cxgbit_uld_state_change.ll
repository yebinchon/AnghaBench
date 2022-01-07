; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_uld_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_uld_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CDEV_STATE_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cdev %s state UP.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cdev %s state RECOVERY.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cdev %s state DOWN.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cdev %s state DETACH.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cdev %s unknown state %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @cxgbit_uld_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_uld_state_change(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgbit_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.cxgbit_device*
  store %struct.cxgbit_device* %7, %struct.cxgbit_device** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %53 [
    i32 128, label %9
    i32 129, label %20
    i32 130, label %33
    i32 131, label %40
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @CDEV_STATE_UP, align 4
  %11 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %12 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %15 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_name(i32 %17)
  %19 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %61

20:                                               ; preds = %2
  %21 = load i32, i32* @CDEV_STATE_UP, align 4
  %22 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %23 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %22, i32 0, i32 1
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %26 = call i32 @cxgbit_close_conn(%struct.cxgbit_device* %25)
  %27 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %28 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_name(i32 %30)
  %32 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %35 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_name(i32 %37)
  %39 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %61

40:                                               ; preds = %2
  %41 = load i32, i32* @CDEV_STATE_UP, align 4
  %42 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %43 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %42, i32 0, i32 1
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %46 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_name(i32 %48)
  %50 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %52 = call i32 @cxgbit_detach_cdev(%struct.cxgbit_device* %51)
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.cxgbit_device*, %struct.cxgbit_device** %5, align 8
  %55 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pci_name(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %40, %33, %20, %9
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cxgbit_close_conn(%struct.cxgbit_device*) #1

declare dso_local i32 @cxgbit_detach_cdev(%struct.cxgbit_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
