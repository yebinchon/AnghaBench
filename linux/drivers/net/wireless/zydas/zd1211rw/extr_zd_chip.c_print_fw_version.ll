; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_print_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_print_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.wiphy = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wiphy* }

@FW_REG_FIRMWARE_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"firmware version %04hx\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04hx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*)* @print_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_fw_version(%struct.zd_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  %7 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %8 = call %struct.TYPE_4__* @zd_chip_to_mac(%struct.zd_chip* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  store %struct.wiphy* %12, %struct.wiphy** %4, align 8
  %13 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %14 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %15 = load i32, i32* @FW_REG_FIRMWARE_VER, align 4
  %16 = call i32 @fw_reg_addr(%struct.zd_chip* %14, i32 %15)
  %17 = call i32 @zd_ioread16_locked(%struct.zd_chip* %13, i32* %6, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %24 = call i32 @zd_chip_dev(%struct.zd_chip* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %28 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_4__* @zd_chip_to_mac(%struct.zd_chip*) #1

declare dso_local i32 @zd_ioread16_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @fw_reg_addr(%struct.zd_chip*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
