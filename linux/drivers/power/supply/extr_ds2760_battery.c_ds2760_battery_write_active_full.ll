; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_write_active_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_write_active_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2760_device_info = type { i8*, i32 }

@DS2760_ACTIVE_FULL = common dso_local global i64 0, align 8
@DS2760_EEPROM_BLOCK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds2760_device_info*, i32)* @ds2760_battery_write_active_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2760_battery_write_active_full(%struct.ds2760_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ds2760_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  store %struct.ds2760_device_info* %0, %struct.ds2760_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 8
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %6, align 1
  %10 = getelementptr inbounds i8, i8* %6, i64 1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %28, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %71

39:                                               ; preds = %25, %2
  %40 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %41 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %44 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %45 = call i32 @w1_ds2760_write(i32 %42, i8* %43, i64 %44, i32 2)
  %46 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DS2760_EEPROM_BLOCK0, align 4
  %50 = call i32 @w1_ds2760_store_eeprom(i32 %48, i32 %49)
  %51 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %52 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DS2760_EEPROM_BLOCK0, align 4
  %55 = call i32 @w1_ds2760_recall_eeprom(i32 %53, i32 %54)
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %59 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %3, align 8
  %66 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* @DS2760_ACTIVE_FULL, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %64, i8* %70, align 1
  br label %71

71:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @w1_ds2760_write(i32, i8*, i64, i32) #1

declare dso_local i32 @w1_ds2760_store_eeprom(i32, i32) #1

declare dso_local i32 @w1_ds2760_recall_eeprom(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
