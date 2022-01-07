; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ulpi.c_dwc3_ulpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ulpi.c_dwc3_ulpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32 }

@dwc3_ulpi_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to register ULPI interface\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_ulpi_init(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ulpi_register_interface(i32 %6, i32* @dwc3_ulpi_ops)
  %8 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ulpi_register_interface(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
