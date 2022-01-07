; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_hotkeys_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_hotkeys_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_nc_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to decode event 0x%.2x 0x%.2x\0A\00", align 1
@sony_100_events = common dso_local global %struct.sony_nc_event* null, align 8
@sony_127_events = common dso_local global %struct.sony_nc_event* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Unknown hotkey 0x%.2x/0x%.2x (handle 0x%.2x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sony_nc_hotkeys_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_hotkeys_decode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sony_nc_event*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @sony_call_snc_handle(i32 %11, i32 512, i32* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.sony_nc_event*, %struct.sony_nc_event** @sony_100_events, align 8
  store %struct.sony_nc_event* %26, %struct.sony_nc_event** %8, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.sony_nc_event*, %struct.sony_nc_event** @sony_127_events, align 8
  store %struct.sony_nc_event* %28, %struct.sony_nc_event** %8, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %46, %29
  %31 = load %struct.sony_nc_event*, %struct.sony_nc_event** %8, align 8
  %32 = getelementptr inbounds %struct.sony_nc_event, %struct.sony_nc_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.sony_nc_event*, %struct.sony_nc_event** %8, align 8
  %37 = getelementptr inbounds %struct.sony_nc_event, %struct.sony_nc_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.sony_nc_event*, %struct.sony_nc_event** %8, align 8
  %43 = getelementptr inbounds %struct.sony_nc_event, %struct.sony_nc_event* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.sony_nc_event*, %struct.sony_nc_event** %8, align 8
  %48 = getelementptr inbounds %struct.sony_nc_event, %struct.sony_nc_event* %47, i32 1
  store %struct.sony_nc_event* %48, %struct.sony_nc_event** %8, align 8
  br label %30

49:                                               ; preds = %41, %30
  %50 = load %struct.sony_nc_event*, %struct.sony_nc_event** %8, align 8
  %51 = getelementptr inbounds %struct.sony_nc_event, %struct.sony_nc_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
