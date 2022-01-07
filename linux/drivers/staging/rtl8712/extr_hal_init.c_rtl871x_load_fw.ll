; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl871x_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"r8712u: Loading firmware from \22%s\22\0A\00", align 1
@firmware_file = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl871x_load_fw_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"r8712u: Firmware request error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl871x_load_fw(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* @firmware_file, align 4
  %15 = call i32 @dev_info(%struct.device* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = load i32, i32* @firmware_file, align 4
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct._adapter*, %struct._adapter** %2, align 8
  %21 = load i32, i32* @rtl871x_load_fw_cb, align 4
  %22 = call i32 @request_firmware_nowait(i32 %16, i32 1, i32 %17, %struct.device* %18, i32 %19, %struct._adapter* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, %struct.device*, i32, %struct._adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
