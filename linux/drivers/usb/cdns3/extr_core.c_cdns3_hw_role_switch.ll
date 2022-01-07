; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_hw_role_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_hw_role_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Switching role %d -> %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"set %d has failed, back to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"back to %d failed too\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_hw_role_switch(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %8 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %14 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_get_sync(i32 %15)
  %17 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %18 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %21 = call i32 @cdsn3_hw_role_state_machine(%struct.cdns3* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %60

26:                                               ; preds = %12
  %27 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %28 = call i32 @cdns3_role_stop(%struct.cdns3* %27)
  %29 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %30 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cdns3_role_start(%struct.cdns3* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %26
  %41 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %42 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @cdns3_role_start(%struct.cdns3* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %40
  %53 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %54 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %40
  br label %59

59:                                               ; preds = %58, %26
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %62 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pm_runtime_put_sync(i32 %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cdsn3_hw_role_state_machine(%struct.cdns3*) #1

declare dso_local i32 @cdns3_role_stop(%struct.cdns3*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cdns3_role_start(%struct.cdns3*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
