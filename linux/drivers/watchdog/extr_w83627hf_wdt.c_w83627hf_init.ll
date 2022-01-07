; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_w83627hf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_w83627hf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i8 }

@W83627HF_LD_WDT = common dso_local global i32 0, align 4
@cr_wdt_control = common dso_local global i32 0, align 4
@cr_wdt_timeout = common dso_local global i32 0, align 4
@early_disable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Stopping previously enabled watchdog until userland kicks in\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Watchdog already running. Resetting timeout to %d sec\0A\00", align 1
@cr_wdt_csr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @w83627hf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627hf_init(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @superio_enter()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %135

13:                                               ; preds = %2
  %14 = load i32, i32* @W83627HF_LD_WDT, align 4
  %15 = call i32 @superio_select(i32 %14)
  %16 = call i32 @superio_inb(i32 48)
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %7, align 1
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %13
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, 1
  %26 = trunc i32 %25 to i8
  %27 = call i32 @superio_outb(i32 48, i8 zeroext %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %93 [
    i32 137, label %30
    i32 136, label %30
    i32 129, label %36
    i32 128, label %46
    i32 135, label %52
    i32 140, label %59
    i32 139, label %59
    i32 133, label %75
    i32 130, label %76
    i32 138, label %82
    i32 134, label %82
    i32 132, label %82
    i32 131, label %82
    i32 148, label %82
    i32 147, label %82
    i32 146, label %82
    i32 145, label %82
    i32 144, label %82
    i32 143, label %82
    i32 142, label %82
    i32 141, label %82
    i32 149, label %82
  ]

30:                                               ; preds = %28, %28
  %31 = call i32 @superio_inb(i32 43)
  %32 = and i32 %31, -17
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @superio_outb(i32 43, i8 zeroext %34)
  br label %94

36:                                               ; preds = %28
  %37 = call i32 @superio_inb(i32 41)
  %38 = and i32 %37, -97
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, 32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %7, align 1
  %44 = load i8, i8* %7, align 1
  %45 = call i32 @superio_outb(i32 41, i8 zeroext %44)
  br label %94

46:                                               ; preds = %28
  %47 = call i32 @superio_inb(i32 43)
  %48 = and i32 %47, -5
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %7, align 1
  %51 = call i32 @superio_outb(i32 43, i8 zeroext %50)
  br label %94

52:                                               ; preds = %28
  %53 = call i32 @superio_inb(i32 43)
  %54 = and i32 %53, -9
  %55 = or i32 %54, 4
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  %57 = load i8, i8* %7, align 1
  %58 = call i32 @superio_outb(i32 43, i8 zeroext %57)
  br label %94

59:                                               ; preds = %28, %28
  %60 = call i32 @superio_inb(i32 45)
  %61 = and i32 %60, -2
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %7, align 1
  %63 = load i8, i8* %7, align 1
  %64 = call i32 @superio_outb(i32 45, i8 zeroext %63)
  %65 = load i32, i32* @cr_wdt_control, align 4
  %66 = call i32 @superio_inb(i32 %65)
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %7, align 1
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, 2
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %7, align 1
  %72 = load i32, i32* @cr_wdt_control, align 4
  %73 = load i8, i8* %7, align 1
  %74 = call i32 @superio_outb(i32 %72, i8 zeroext %73)
  br label %94

75:                                               ; preds = %28
  br label %94

76:                                               ; preds = %28
  %77 = call i32 @superio_inb(i32 44)
  %78 = and i32 %77, -129
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %7, align 1
  %80 = load i8, i8* %7, align 1
  %81 = call i32 @superio_outb(i32 44, i8 zeroext %80)
  br label %94

82:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %83 = load i32, i32* @cr_wdt_control, align 4
  %84 = call i32 @superio_inb(i32 %83)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %7, align 1
  %86 = load i8, i8* %7, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, 2
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %7, align 1
  %90 = load i32, i32* @cr_wdt_control, align 4
  %91 = load i8, i8* %7, align 1
  %92 = call i32 @superio_outb(i32 %90, i8 zeroext %91)
  br label %94

93:                                               ; preds = %28
  br label %94

94:                                               ; preds = %93, %82, %76, %75, %59, %52, %46, %36, %30
  %95 = load i32, i32* @cr_wdt_timeout, align 4
  %96 = call i32 @superio_inb(i32 %95)
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %7, align 1
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load i64, i64* @early_disable, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = call i32 @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @cr_wdt_timeout, align 4
  %107 = call i32 @superio_outb(i32 %106, i8 zeroext 0)
  br label %118

108:                                              ; preds = %101
  %109 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %110 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %111)
  %113 = load i32, i32* @cr_wdt_timeout, align 4
  %114 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %115 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %114, i32 0, i32 0
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @superio_outb(i32 %113, i8 zeroext %116)
  br label %118

118:                                              ; preds = %108, %104
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* @cr_wdt_control, align 4
  %121 = call i32 @superio_inb(i32 %120)
  %122 = and i32 %121, -13
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %7, align 1
  %124 = load i32, i32* @cr_wdt_control, align 4
  %125 = load i8, i8* %7, align 1
  %126 = call i32 @superio_outb(i32 %124, i8 zeroext %125)
  %127 = load i32, i32* @cr_wdt_csr, align 4
  %128 = call i32 @superio_inb(i32 %127)
  %129 = and i32 %128, -209
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %7, align 1
  %131 = load i32, i32* @cr_wdt_csr, align 4
  %132 = load i8, i8* %7, align 1
  %133 = call i32 @superio_outb(i32 %131, i8 zeroext %132)
  %134 = call i32 (...) @superio_exit()
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %119, %11
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_select(i32) #1

declare dso_local i32 @superio_inb(i32) #1

declare dso_local i32 @superio_outb(i32, i8 zeroext) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*, i8 zeroext) #1

declare dso_local i32 @superio_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
