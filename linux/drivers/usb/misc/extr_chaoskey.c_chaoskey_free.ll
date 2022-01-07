; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chaoskey = type { i32, %struct.chaoskey*, %struct.chaoskey*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chaoskey*)* @chaoskey_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chaoskey_free(%struct.chaoskey* %0) #0 {
  %2 = alloca %struct.chaoskey*, align 8
  store %struct.chaoskey* %0, %struct.chaoskey** %2, align 8
  %3 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %4 = icmp ne %struct.chaoskey* %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %7 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @usb_dbg(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %11 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_free_urb(i32 %12)
  %14 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %15 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 2
  %16 = load %struct.chaoskey*, %struct.chaoskey** %15, align 8
  %17 = call i32 @kfree(%struct.chaoskey* %16)
  %18 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %19 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %18, i32 0, i32 1
  %20 = load %struct.chaoskey*, %struct.chaoskey** %19, align 8
  %21 = call i32 @kfree(%struct.chaoskey* %20)
  %22 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %23 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_put_intf(i32 %24)
  %26 = load %struct.chaoskey*, %struct.chaoskey** %2, align 8
  %27 = call i32 @kfree(%struct.chaoskey* %26)
  br label %28

28:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @usb_dbg(i32, i8*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.chaoskey*) #1

declare dso_local i32 @usb_put_intf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
