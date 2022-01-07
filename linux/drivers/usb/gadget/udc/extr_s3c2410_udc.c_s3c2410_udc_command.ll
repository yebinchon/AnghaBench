; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c2410_udc.c_s3c2410_udc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (i32)* }

@udc_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s3c2410_udc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_udc_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %41

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 %15(i32 %16)
  br label %41

18:                                               ; preds = %7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @gpio_is_valid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  switch i32 %25, label %28 [
    i32 128, label %26
    i32 129, label %27
  ]

26:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %24
  br label %41

29:                                               ; preds = %27, %26
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc_info, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @gpio_set_value(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %29, %18
  br label %41

41:                                               ; preds = %6, %28, %40, %12
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
