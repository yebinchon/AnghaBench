; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_set_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32 }
%struct.enclosure_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* @ses_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_set_active(%struct.enclosure_device* %0, %struct.enclosure_component* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enclosure_device*, align 8
  %6 = alloca %struct.enclosure_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8*, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %5, align 8
  store %struct.enclosure_component* %1, %struct.enclosure_component** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %11 = call i32 @ses_page2_supported(%struct.enclosure_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %55

16:                                               ; preds = %3
  %17 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %18 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %19 = call i8* @ses_get_page2_descriptor(%struct.enclosure_device* %17, %struct.enclosure_component* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %55

25:                                               ; preds = %16
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %27 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @init_device_slot_control(i8* %26, %struct.enclosure_component* %27, i8* %28)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %47 [
    i32 129, label %31
    i32 128, label %39
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 127
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %38 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %50

39:                                               ; preds = %25
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 128
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %46 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %39, %31
  %51 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %52 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %54 = call i32 @ses_set_page2_descriptor(%struct.enclosure_device* %51, %struct.enclosure_component* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %47, %22, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ses_page2_supported(%struct.enclosure_device*) #1

declare dso_local i8* @ses_get_page2_descriptor(%struct.enclosure_device*, %struct.enclosure_component*) #1

declare dso_local i32 @init_device_slot_control(i8*, %struct.enclosure_component*, i8*) #1

declare dso_local i32 @ses_set_page2_descriptor(%struct.enclosure_device*, %struct.enclosure_component*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
