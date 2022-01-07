; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_write_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_fw_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i32, i64, i64, i64, i64, i32 }

@FW_WORK_STATE_WAIT_WRITE_ANSWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn544_i2c_phy*)* @pn544_hci_i2c_fw_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_fw_write_chunk(%struct.pn544_i2c_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pn544_i2c_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %3, align 8
  %5 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %6 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %9 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %12 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %16 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %19 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %23 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %26 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i32 @pn544_hci_i2c_fw_write_cmd(i32 %7, i64 %14, i64 %21, i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %38 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* @FW_WORK_STATE_WAIT_WRITE_ANSWER, align 4
  %42 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %3, align 8
  %43 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pn544_hci_i2c_fw_write_cmd(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
