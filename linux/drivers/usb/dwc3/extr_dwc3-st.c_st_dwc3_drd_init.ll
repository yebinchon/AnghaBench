; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_drd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_drd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_dwc3 = type { i32, i32, i32, i32 }

@USB3_CONTROL_MASK = common dso_local global i32 0, align 4
@USB3_DELAY_VBUSVALID = common dso_local global i32 0, align 4
@USB3_SEL_FORCE_OPMODE = common dso_local global i32 0, align 4
@USB3_SEL_FORCE_DPPULLDOWN2 = common dso_local global i32 0, align 4
@USB3_FORCE_DPPULLDOWN2 = common dso_local global i32 0, align 4
@USB3_SEL_FORCE_DMPULLDOWN2 = common dso_local global i32 0, align 4
@USB3_FORCE_DMPULLDOWN2 = common dso_local global i32 0, align 4
@USB3_DEVICE_NOT_HOST = common dso_local global i32 0, align 4
@USB3_FORCE_VBUSVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unsupported mode of operation %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_dwc3*)* @st_dwc3_drd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_dwc3_drd_init(%struct.st_dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.st_dwc3* %0, %struct.st_dwc3** %3, align 8
  %6 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %7 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %10 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regmap_read(i32 %8, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load i32, i32* @USB3_CONTROL_MASK, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %68 [
    i32 128, label %24
    i32 129, label %46
  ]

24:                                               ; preds = %17
  %25 = load i32, i32* @USB3_DELAY_VBUSVALID, align 4
  %26 = load i32, i32* @USB3_SEL_FORCE_OPMODE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @USB3_FORCE_OPMODE(i32 3)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB3_SEL_FORCE_DPPULLDOWN2, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB3_FORCE_DPPULLDOWN2, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB3_SEL_FORCE_DMPULLDOWN2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB3_FORCE_DMPULLDOWN2, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @USB3_DEVICE_NOT_HOST, align 4
  %42 = load i32, i32* @USB3_FORCE_VBUSVALID, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %78

46:                                               ; preds = %17
  %47 = load i32, i32* @USB3_DEVICE_NOT_HOST, align 4
  %48 = load i32, i32* @USB3_FORCE_VBUSVALID, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USB3_SEL_FORCE_OPMODE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @USB3_FORCE_OPMODE(i32 3)
  %53 = or i32 %51, %52
  %54 = load i32, i32* @USB3_SEL_FORCE_DPPULLDOWN2, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @USB3_FORCE_DPPULLDOWN2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @USB3_SEL_FORCE_DMPULLDOWN2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB3_FORCE_DMPULLDOWN2, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @USB3_DELAY_VBUSVALID, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %17
  %69 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %70 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %73 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %46, %24
  %79 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %80 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.st_dwc3*, %struct.st_dwc3** %3, align 8
  %83 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @regmap_write(i32 %81, i32 %84, i32 %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %68, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @USB3_FORCE_OPMODE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
