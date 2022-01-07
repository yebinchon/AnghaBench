; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3290.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_bbp_3290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@BBP47_TSSI_ADC6 = common dso_local global i32 0, align 4
@BBP3_ADC_MODE_SWITCH = common dso_local global i32 0, align 4
@BBP3_ADC_INIT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_bbp_3290 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_bbp_3290(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = call i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev* %4)
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %6, i32 31, i32 8)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %8, i32 65, i32 44)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %10, i32 66, i32 56)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %12, i32 68, i32 11)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %14, i32 69, i32 18)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %17 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %16, i32 73, i32 19)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %18, i32 75, i32 70)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %21 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %20, i32 76, i32 40)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %22, i32 77, i32 88)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %24, i32 70, i32 10)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %27 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %26, i32 74, i32 11)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %28, i32 79, i32 24)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %30, i32 80, i32 9)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %32, i32 81, i32 51)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %34, i32 82, i32 98)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %36, i32 83, i32 122)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %39 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %38, i32 84, i32 154)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %40, i32 86, i32 56)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %42, i32 91, i32 4)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %44, i32 92, i32 2)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %46, i32 103, i32 192)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %48, i32 104, i32 146)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %50, i32 105, i32 28)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 106, i32 3)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %54, i32 128, i32 18)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %56, i32 67, i32 36)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %59 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %58, i32 143, i32 4)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %60, i32 142, i32 153)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %62, i32 150, i32 48)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %64, i32 151, i32 46)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %66, i32 152, i32 32)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %68, i32 153, i32 52)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %70, i32 154, i32 64)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %72, i32 155, i32 59)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %74, i32 253, i32 4)
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %77 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %76, i32 47)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @BBP47_TSSI_ADC6, align 4
  %79 = call i32 @rt2x00_set_field8(i32* %3, i32 %78, i32 1)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %80, i32 47, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %83, i32 3)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @BBP3_ADC_MODE_SWITCH, align 4
  %86 = call i32 @rt2x00_set_field8(i32* %3, i32 %85, i32 1)
  %87 = load i32, i32* @BBP3_ADC_INIT_MODE, align 4
  %88 = call i32 @rt2x00_set_field8(i32* %3, i32 %87, i32 1)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %89, i32 3, i32 %90)
  ret void
}

declare dso_local i32 @rt2800_bbp4_mac_if_ctrl(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
