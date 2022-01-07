; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdsn3_hw_role_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdsn3_hw_role_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i64, i32, i32 }

@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"role %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @cdsn3_hw_role_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdsn3_hw_role_state_machine(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %7 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %8 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %15 = call i32 @cdns3_get_id(%struct.cdns3* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %17 = call i32 @cdns3_get_vbus(%struct.cdns3* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %19 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %42 [
    i32 128, label %22
    i32 129, label %32
    i32 130, label %37
  ]

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 129, i32* %4, align 4
  br label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 130, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %25
  br label %42

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 128, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %42

37:                                               ; preds = %13
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 128, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %13, %41, %36, %31
  %43 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %44 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %47 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %12
  %53 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %54 = call i64 @cdns3_is_host(%struct.cdns3* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 129, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %59 = call i64 @cdns3_is_device(%struct.cdns3* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 130, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %42
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @cdns3_get_id(%struct.cdns3*) #1

declare dso_local i32 @cdns3_get_vbus(%struct.cdns3*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @cdns3_is_host(%struct.cdns3*) #1

declare dso_local i64 @cdns3_is_device(%struct.cdns3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
