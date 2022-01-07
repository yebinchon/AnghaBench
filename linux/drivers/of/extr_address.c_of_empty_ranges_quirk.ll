; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_empty_ranges_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_empty_ranges_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@CONFIG_PPC = common dso_local global i32 0, align 4
@of_empty_ranges_quirk.quirk_state = internal global i32 -1, align 4
@.str = private unnamed_addr constant [10 x i8] c"1682m-sdc\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Power Macintosh\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"MacRISC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @of_empty_ranges_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_empty_ranges_quirk(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %4 = load i32, i32* @CONFIG_PPC, align 4
  %5 = call i64 @IS_ENABLED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i64 @of_device_is_compatible(%struct.device_node* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %27

12:                                               ; preds = %7
  %13 = load i32, i32* @of_empty_ranges_quirk.quirk_state, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ true, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* @of_empty_ranges_quirk.quirk_state, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* @of_empty_ranges_quirk.quirk_state, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
