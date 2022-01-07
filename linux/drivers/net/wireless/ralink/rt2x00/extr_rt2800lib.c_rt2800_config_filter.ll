; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RX_FILTER_CFG = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CRC_ERROR = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_PHY_ERROR = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@CONFIG_MONITORING = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_NOT_MY_BSSD = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_VER_ERROR = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_MULTICAST = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BROADCAST = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_DUPLICATE = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CF_END_ACK = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CF_END = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_ACK = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CTS = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_RTS = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_PSPOLL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BA = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BAR = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_filter(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @RX_FILTER_CFG, align 4
  %8 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @RX_FILTER_CFG_DROP_CRC_ERROR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FIF_FCSFAIL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rt2x00_set_field32(i32* %5, i32 %9, i32 %15)
  %17 = load i32, i32* @RX_FILTER_CFG_DROP_PHY_ERROR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIF_PLCPFAIL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %5, i32 %17, i32 %23)
  %25 = load i32, i32* @RX_FILTER_CFG_DROP_NOT_TO_ME, align 4
  %26 = load i32, i32* @CONFIG_MONITORING, align 4
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 0
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %32)
  %34 = load i32, i32* @RX_FILTER_CFG_DROP_NOT_MY_BSSD, align 4
  %35 = call i32 @rt2x00_set_field32(i32* %5, i32 %34, i32 0)
  %36 = load i32, i32* @RX_FILTER_CFG_DROP_VER_ERROR, align 4
  %37 = call i32 @rt2x00_set_field32(i32* %5, i32 %36, i32 1)
  %38 = load i32, i32* @RX_FILTER_CFG_DROP_MULTICAST, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FIF_ALLMULTI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @rt2x00_set_field32(i32* %5, i32 %38, i32 %44)
  %46 = load i32, i32* @RX_FILTER_CFG_DROP_BROADCAST, align 4
  %47 = call i32 @rt2x00_set_field32(i32* %5, i32 %46, i32 0)
  %48 = load i32, i32* @RX_FILTER_CFG_DROP_DUPLICATE, align 4
  %49 = call i32 @rt2x00_set_field32(i32* %5, i32 %48, i32 1)
  %50 = load i32, i32* @RX_FILTER_CFG_DROP_CF_END_ACK, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @FIF_CONTROL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @rt2x00_set_field32(i32* %5, i32 %50, i32 %56)
  %58 = load i32, i32* @RX_FILTER_CFG_DROP_CF_END, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @FIF_CONTROL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @rt2x00_set_field32(i32* %5, i32 %58, i32 %64)
  %66 = load i32, i32* @RX_FILTER_CFG_DROP_ACK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @FIF_CONTROL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @rt2x00_set_field32(i32* %5, i32 %66, i32 %72)
  %74 = load i32, i32* @RX_FILTER_CFG_DROP_CTS, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @FIF_CONTROL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @rt2x00_set_field32(i32* %5, i32 %74, i32 %80)
  %82 = load i32, i32* @RX_FILTER_CFG_DROP_RTS, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FIF_CONTROL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @rt2x00_set_field32(i32* %5, i32 %82, i32 %88)
  %90 = load i32, i32* @RX_FILTER_CFG_DROP_PSPOLL, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @FIF_PSPOLL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @rt2x00_set_field32(i32* %5, i32 %90, i32 %96)
  %98 = load i32, i32* @RX_FILTER_CFG_DROP_BA, align 4
  %99 = call i32 @rt2x00_set_field32(i32* %5, i32 %98, i32 0)
  %100 = load i32, i32* @RX_FILTER_CFG_DROP_BAR, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @FIF_CONTROL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @rt2x00_set_field32(i32* %5, i32 %100, i32 %106)
  %108 = load i32, i32* @RX_FILTER_CFG_DROP_CNTL, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @FIF_CONTROL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @rt2x00_set_field32(i32* %5, i32 %108, i32 %114)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %117 = load i32, i32* @RX_FILTER_CFG, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
