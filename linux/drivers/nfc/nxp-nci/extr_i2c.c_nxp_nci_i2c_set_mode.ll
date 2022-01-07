; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_i2c_phy = type { i64, i32, i32 }

@NXP_NCI_MODE_FW = common dso_local global i32 0, align 4
@NXP_NCI_MODE_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @nxp_nci_i2c_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_i2c_set_mode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nxp_nci_i2c_phy*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nxp_nci_i2c_phy*
  store %struct.nxp_nci_i2c_phy* %7, %struct.nxp_nci_i2c_phy** %5, align 8
  %8 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %5, align 8
  %9 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NXP_NCI_MODE_FW, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = call i32 @gpiod_set_value(i32 %10, i32 %15)
  %17 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %5, align 8
  %18 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NXP_NCI_MODE_COLD, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = call i32 @gpiod_set_value(i32 %19, i32 %24)
  %26 = call i32 @usleep_range(i32 10000, i32 15000)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NXP_NCI_MODE_COLD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %5, align 8
  %32 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %2
  ret i32 0
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
