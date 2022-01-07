; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1216.c_ds1216_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1216.c_ds1216_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.ds1216_priv = type { i32 }
%struct.ds1216_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@DS1216_HOUR_1224 = common dso_local global i32 0, align 4
@DS1216_HOUR_AMPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1216_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1216_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ds1216_priv*, align 8
  %6 = alloca %struct.ds1216_regs, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ds1216_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.ds1216_priv* %8, %struct.ds1216_priv** %5, align 8
  %9 = load %struct.ds1216_priv*, %struct.ds1216_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ds1216_priv, %struct.ds1216_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ds1216_switch_ds_to_clock(i32 %11)
  %13 = load %struct.ds1216_priv*, %struct.ds1216_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ds1216_priv, %struct.ds1216_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %struct.ds1216_regs* %6 to i32*
  %17 = call i32 @ds1216_read(i32 %15, i32* %16)
  %18 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @bcd2bin(i32 %24)
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DS1216_HOUR_1224, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 31
  %37 = call i8* @bcd2bin(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DS1216_HOUR_AMPM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 12
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %33
  br label %60

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 63
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %52, %51
  %61 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 63
  %70 = call i8* @bcd2bin(i32 %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 31
  %76 = call i8* @bcd2bin(i32 %75)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds %struct.ds1216_regs, %struct.ds1216_regs* %6, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @bcd2bin(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 70
  br i1 %88, label %89, label %94

89:                                               ; preds = %60
  %90 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 100
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %89, %60
  ret i32 0
}

declare dso_local %struct.ds1216_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ds1216_switch_ds_to_clock(i32) #1

declare dso_local i32 @ds1216_read(i32, i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
