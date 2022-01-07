; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-nb-wmi.c_asus_q500a_i8042_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-nb-wmi.c_asus_q500a_i8042_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }

@asus_q500a_i8042_filter.extended = internal global i32 0, align 4
@I8042_STR_AUXDATA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8, %struct.serio*)* @asus_q500a_i8042_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_q500a_i8042_filter(i8 zeroext %0, i8 zeroext %1, %struct.serio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.serio*, align 8
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store %struct.serio* %2, %struct.serio** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @I8042_STR_AUXDATA, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 225
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* @asus_q500a_i8042_filter.extended, align 4
  store i32 1, i32* %8, align 4
  br label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @asus_q500a_i8042_filter.extended, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* @asus_q500a_i8042_filter.extended, align 4
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
