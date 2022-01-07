; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.pn533_i2c_phy* }
%struct.pn533_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@pn533_i2c_send_ack.ack = internal constant [6 x i32] [i32 0, i32 0, i32 255, i32 0, i32 255, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, i32)* @pn533_i2c_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_i2c_send_ack(%struct.pn533* %0, i32 %1) #0 {
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn533_i2c_phy*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pn533*, %struct.pn533** %3, align 8
  %9 = getelementptr inbounds %struct.pn533, %struct.pn533* %8, i32 0, i32 0
  %10 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %9, align 8
  store %struct.pn533_i2c_phy* %10, %struct.pn533_i2c_phy** %5, align 8
  %11 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %5, align 8
  %12 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %11, i32 0, i32 0
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call i32 @i2c_master_send(%struct.i2c_client* %14, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @pn533_i2c_send_ack.ack, i64 0, i64 0), i32 6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
