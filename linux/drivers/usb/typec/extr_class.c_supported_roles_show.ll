; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_supported_roles_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_supported_roles_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.altmode = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"source\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sink\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"source sink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @supported_roles_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supported_roles_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.altmode*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @to_typec_altmode(%struct.device* %9)
  %11 = call %struct.altmode* @to_altmode(i32 %10)
  store %struct.altmode* %11, %struct.altmode** %7, align 8
  %12 = load %struct.altmode*, %struct.altmode** %7, align 8
  %13 = getelementptr inbounds %struct.altmode, %struct.altmode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %22 [
    i32 128, label %15
    i32 129, label %18
    i32 130, label %21
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %3, %21
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.altmode* @to_altmode(i32) #1

declare dso_local i32 @to_typec_altmode(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
