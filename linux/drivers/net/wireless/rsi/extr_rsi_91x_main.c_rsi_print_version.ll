; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_main.c_rsi_print_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_main.c_rsi_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"================================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"================ RSI Version Info ==============\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FW Version\09: %d.%d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Operating mode\09: %d [%s]\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Firmware file\09: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_print_version(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %3 = load i32, i32* @ERR_ZONE, align 4
  %4 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ERR_ZONE, align 4
  %6 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @ERR_ZONE, align 4
  %8 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ERR_ZONE, align 4
  %10 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %11 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %15 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %19 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %17, i32 %21)
  %23 = load i32, i32* @ERR_ZONE, align 4
  %24 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %25 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %28 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @opmode_str(i32 %29)
  %31 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i32, i32* @ERR_ZONE, align 4
  %33 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %34 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ERR_ZONE, align 4
  %40 = call i32 (i32, i8*, ...) @rsi_dbg(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rsi_dbg(i32, i8*, ...) #1

declare dso_local i32 @opmode_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
