; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_free_usb_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_free_usb_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.r8a66597_device* }
%struct.r8a66597_device = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"free_addr: addr=%d\0A\00", align 1
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_device*, i32)* @free_usb_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_usb_address(%struct.r8a66597* %0, %struct.r8a66597_device* %1, i32 %2) #0 {
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca %struct.r8a66597_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store %struct.r8a66597_device* %1, %struct.r8a66597_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %9 = icmp ne %struct.r8a66597_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %77

11:                                               ; preds = %3
  %12 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %13 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %17 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %21 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %22 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %24 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %29 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %33 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %11
  %37 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %38 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_set_drvdata(i32* %40, i32* null)
  br label %42

42:                                               ; preds = %36, %11
  %43 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %44 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %43, i32 0, i32 1
  %45 = call i32 @list_del(i32* %44)
  %46 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %47 = call i32 @kfree(%struct.r8a66597_device* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %74, %42
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %51 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %56 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.r8a66597_device*, %struct.r8a66597_device** %61, align 8
  %63 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %64 = icmp eq %struct.r8a66597_device* %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %67 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.r8a66597_device* null, %struct.r8a66597_device** %72, align 8
  br label %77

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %48

77:                                               ; preds = %10, %65, %48
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.r8a66597_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
