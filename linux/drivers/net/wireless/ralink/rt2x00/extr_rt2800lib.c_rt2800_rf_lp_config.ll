; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rf_lp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_rf_lp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RF_CONTROL0 = common dso_local global i32 0, align 4
@RF_BYPASS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800_rf_lp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_rf_lp_config(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = load i32, i32* @RF_CONTROL0, align 4
  %11 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %9, i32 %10, i32 4)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @RF_CONTROL0, align 4
  %15 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %13, i32 %14, i32 2)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @RF_BYPASS0, align 4
  %19 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 6)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %20, i32 5, i32 17)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* %5, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %24, i32 5, i32 17, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %16
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %30, i32 5, i32 18, i32 193)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %32, i32 5, i32 19, i32 32)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %34, i32 5, i32 20, i32 2)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %36, i32 5, i32 3)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -64
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 63
  store i32 %41, i32* %5, align 4
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %42, i32 5, i32 3, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %45, i32 5, i32 4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, -64
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 63
  store i32 %50, i32* %5, align 4
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %51, i32 5, i32 4, i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %54, i32 5, i32 5, i32 49)
  br label %81

56:                                               ; preds = %16
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %57, i32 5, i32 18, i32 241)
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %60 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %59, i32 5, i32 19, i32 24)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %62 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %61, i32 5, i32 20, i32 2)
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %64 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %63, i32 5, i32 3)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, -64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, 52
  store i32 %68, i32* %5, align 4
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %69, i32 5, i32 3, i32 %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %72, i32 5, i32 4)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, -64
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, 52
  store i32 %77, i32* %5, align 4
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %78, i32 5, i32 4, i32 %79)
  br label %81

81:                                               ; preds = %56, %29
  ret i32 0
}

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
