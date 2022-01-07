; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_hpwdt.c_hpwdt_settimeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_hpwdt.c_hpwdt_settimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"set_timeout = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pretimeout < timeout. Setting to zero\0A\00", align 1
@pretimeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @hpwdt_settimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpwdt_settimeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %6 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i32, i8*, ...) @dev_dbg(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ule i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  store i64 0, i64* @pretimeout, align 8
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %26 = call i64 @watchdog_active(%struct.watchdog_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %30 = call i32 @hpwdt_start(%struct.watchdog_device* %29)
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %34 = call i32 @hpwdt_ping(%struct.watchdog_device* %33)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @hpwdt_start(%struct.watchdog_device*) #1

declare dso_local i32 @hpwdt_ping(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
