; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_firmware_feature_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_is_firmware_feature_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_config_table_firmware_features = type { i32*, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_config_table_firmware_features*, i32)* @pqi_is_firmware_feature_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_is_firmware_feature_supported(%struct.pqi_config_table_firmware_features* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_config_table_firmware_features*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pqi_config_table_firmware_features* %0, %struct.pqi_config_table_firmware_features** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BITS_PER_BYTE, align 4
  %9 = udiv i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.pqi_config_table_firmware_features*, %struct.pqi_config_table_firmware_features** %4, align 8
  %12 = getelementptr inbounds %struct.pqi_config_table_firmware_features, %struct.pqi_config_table_firmware_features* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = icmp uge i32 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.pqi_config_table_firmware_features*, %struct.pqi_config_table_firmware_features** %4, align 8
  %19 = getelementptr inbounds %struct.pqi_config_table_firmware_features, %struct.pqi_config_table_firmware_features* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BITS_PER_BYTE, align 4
  %27 = urem i32 %25, %26
  %28 = shl i32 1, %27
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
