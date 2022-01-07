; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-wmi.c_et2012_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-wmi.c_et2012_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_device = type { i32 }

@DMI_DEV_TYPE_OEM_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"AEMS%24c\00", align 1
@quirk_asus_et2012_type1 = common dso_local global i32 0, align 4
@quirks = common dso_local global i32* null, align 8
@quirk_asus_et2012_type3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @et2012_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et2012_quirks() #0 {
  %1 = alloca %struct.dmi_device*, align 8
  %2 = alloca [30 x i8], align 16
  store %struct.dmi_device* null, %struct.dmi_device** %1, align 8
  br label %3

3:                                                ; preds = %29, %0
  %4 = load i32, i32* @DMI_DEV_TYPE_OEM_STRING, align 4
  %5 = load %struct.dmi_device*, %struct.dmi_device** %1, align 8
  %6 = call %struct.dmi_device* @dmi_find_device(i32 %4, i32* null, %struct.dmi_device* %5)
  store %struct.dmi_device* %6, %struct.dmi_device** %1, align 8
  %7 = icmp ne %struct.dmi_device* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = load %struct.dmi_device*, %struct.dmi_device** %1, align 8
  %10 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  %13 = call i32 @sscanf(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %8
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 18
  %17 = load i8, i8* %16, align 2
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 49
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32* @quirk_asus_et2012_type1, i32** @quirks, align 8
  br label %28

21:                                               ; preds = %15
  %22 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 18
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 51
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32* @quirk_asus_et2012_type3, i32** @quirks, align 8
  br label %27

27:                                               ; preds = %26, %21
  br label %28

28:                                               ; preds = %27, %20
  br label %30

29:                                               ; preds = %8
  br label %3

30:                                               ; preds = %28, %3
  ret void
}

declare dso_local %struct.dmi_device* @dmi_find_device(i32, i32*, %struct.dmi_device*) #1

declare dso_local i32 @sscanf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
