; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_channel_is_pfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/tests/extr_ni_routes_test.c_test_channel_is_pfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"check First pfi channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"check 10th pfi channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"check last pfi channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"check first non pfi channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_channel_is_pfi() #0 {
  %1 = call i32 (...) @init_pci_fake()
  %2 = call i64 @NI_PFI(i32 0)
  %3 = call i32 @channel_is_pfi(i64 %2)
  %4 = call i32 @unittest(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @NI_PFI(i32 10)
  %6 = call i32 @channel_is_pfi(i64 %5)
  %7 = call i32 @unittest(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i64 @NI_PFI(i32 -1)
  %9 = call i32 @channel_is_pfi(i64 %8)
  %10 = call i32 @unittest(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i64 @NI_PFI(i32 -1)
  %12 = add nsw i64 %11, 1
  %13 = call i32 @channel_is_pfi(i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @unittest(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @init_pci_fake(...) #1

declare dso_local i32 @unittest(i32, i8*) #1

declare dso_local i32 @channel_is_pfi(i64) #1

declare dso_local i64 @NI_PFI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
