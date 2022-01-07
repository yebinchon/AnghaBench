; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idt_gen2.c_idtg2_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { %struct.device }
%struct.device = type { i32 }

@dev_attr_errlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable create sysfs errlog file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_dev*, i32)* @idtg2_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtg2_sysfs(%struct.rio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @device_create_file(%struct.device* %12, i32* @dev_attr_errlog)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @device_remove_file(%struct.device* %21, i32* @dev_attr_errlog)
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
