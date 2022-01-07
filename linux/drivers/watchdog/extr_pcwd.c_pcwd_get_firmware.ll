; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@CMD_ISA_VERSION_INTEGER = common dso_local global i32 0, align 4
@CMD_ISA_VERSION_TENTH = common dso_local global i32 0, align 4
@CMD_ISA_VERSION_HUNDRETH = common dso_local global i32 0, align 4
@CMD_ISA_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%c.%c%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcwd_get_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcwd_get_firmware() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 4
  %6 = call i32 @strcpy(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 (...) @set_command_mode()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %0
  %10 = load i32, i32* @CMD_ISA_VERSION_INTEGER, align 4
  %11 = call i32 @send_isa_command(i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @CMD_ISA_VERSION_TENTH, align 4
  %13 = call i32 @send_isa_command(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* @CMD_ISA_VERSION_HUNDRETH, align 4
  %15 = call i32 @send_isa_command(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CMD_ISA_VERSION_MINOR, align 4
  %17 = call i32 @send_isa_command(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sprintf(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %9, %0
  %25 = call i32 (...) @unset_command_mode()
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @set_command_mode(...) #1

declare dso_local i32 @send_isa_command(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unset_command_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
