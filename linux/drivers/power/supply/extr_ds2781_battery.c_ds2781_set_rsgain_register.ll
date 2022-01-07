; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_set_rsgain_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_set_rsgain_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2781_device_info = type { i32 }

@DS2781_RSGAIN_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2781_device_info*, i32)* @ds2781_set_rsgain_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2781_set_rsgain_register(%struct.ds2781_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds2781_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.ds2781_device_info* %0, %struct.ds2781_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %16 = load i32, i32* @DS2781_RSGAIN_MSB, align 4
  %17 = call i32 @ds2781_write(%struct.ds2781_device_info* %14, i32* %15, i32 %16, i32 8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %24 = load i32, i32* @DS2781_RSGAIN_MSB, align 4
  %25 = call i32 @ds2781_save_eeprom(%struct.ds2781_device_info* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ds2781_write(%struct.ds2781_device_info*, i32*, i32, i32) #1

declare dso_local i32 @ds2781_save_eeprom(%struct.ds2781_device_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
