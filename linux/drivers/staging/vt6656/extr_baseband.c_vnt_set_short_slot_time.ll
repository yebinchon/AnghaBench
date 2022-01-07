; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_set_short_slot_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_baseband.c_vnt_set_short_slot_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i64*, i64 }

@MESSAGE_REQUEST_BBREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_set_short_slot_time(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 223
  store i32 %13, i32* %11, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 32
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %21 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %22 = call i32 @vnt_control_in_u8(%struct.vnt_private* %20, i32 %21, i32 231, i64* %4)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %46

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %36 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, 32
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %41 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %42 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vnt_control_out_u8(%struct.vnt_private* %40, i32 %41, i32 10, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @vnt_control_in_u8(%struct.vnt_private*, i32, i32, i64*) #1

declare dso_local i32 @vnt_control_out_u8(%struct.vnt_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
