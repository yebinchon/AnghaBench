; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_set_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_set_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.a2150_private* }
%struct.a2150_private = type { i32 }

@CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @a2150_set_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_set_chanlist(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.a2150_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.a2150_private*, %struct.a2150_private** %10, align 8
  store %struct.a2150_private* %11, %struct.a2150_private** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %12, %13
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i32, i32* @CHANNEL_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %21 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %60 [
    i32 1, label %25
    i32 2, label %33
    i32 4, label %54
  ]

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = or i32 4, %26
  %28 = call i32 @CHANNEL_BITS(i32 %27)
  %29 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %30 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %61

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @CHANNEL_BITS(i32 2)
  %38 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %39 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %53

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call i32 @CHANNEL_BITS(i32 3)
  %47 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %48 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %52

51:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %62

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %36
  br label %61

54:                                               ; preds = %17
  %55 = call i32 @CHANNEL_BITS(i32 1)
  %56 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %57 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %61

60:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %62

61:                                               ; preds = %54, %53, %25
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %51, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @CHANNEL_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
