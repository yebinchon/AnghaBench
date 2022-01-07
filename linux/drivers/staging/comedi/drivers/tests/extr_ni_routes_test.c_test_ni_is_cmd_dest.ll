; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_is_cmd_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_ni_is_cmd_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_AI_SampleClock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"check that AI/SampleClock is cmd destination\0A\00", align 1
@NI_AI_StartTrigger = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"check that AI/StartTrigger is cmd destination\0A\00", align 1
@NI_AI_ConvertClock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"check that AI/ConvertClock is cmd destination\0A\00", align 1
@NI_AO_SampleClock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"check that AO/SampleClock is cmd destination\0A\00", align 1
@NI_DO_SampleClock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"check that DO/SampleClock is cmd destination\0A\00", align 1
@NI_AO_SampleClockTimebase = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"check that AO/SampleClockTimebase _not_ cmd destination\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ni_is_cmd_dest() #0 {
  %1 = call i32 (...) @init_pci_fake()
  %2 = load i32, i32* @NI_AI_SampleClock, align 4
  %3 = call i32 @ni_is_cmd_dest(i32 %2)
  %4 = call i32 @unittest(i32 %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @NI_AI_StartTrigger, align 4
  %6 = call i32 @ni_is_cmd_dest(i32 %5)
  %7 = call i32 @unittest(i32 %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @NI_AI_ConvertClock, align 4
  %9 = call i32 @ni_is_cmd_dest(i32 %8)
  %10 = call i32 @unittest(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @NI_AO_SampleClock, align 4
  %12 = call i32 @ni_is_cmd_dest(i32 %11)
  %13 = call i32 @unittest(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @NI_DO_SampleClock, align 4
  %15 = call i32 @ni_is_cmd_dest(i32 %14)
  %16 = call i32 @unittest(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* @NI_AO_SampleClockTimebase, align 4
  %18 = call i32 @ni_is_cmd_dest(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @unittest(i32 %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @ni_is_cmd_dest(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
