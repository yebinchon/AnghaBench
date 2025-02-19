; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }

@MUSB_POWER = common dso_local global i32 0, align 4
@MUSB_POWER_SOFTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"gadget D+ pullup %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @musb_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_pullup(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MUSB_POWER, align 4
  %10 = call i32 @musb_readb(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MUSB_POWER_SOFTCONN, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @MUSB_POWER_SOFTCONN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @musb_dbg(%struct.musb* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.musb*, %struct.musb** %3, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MUSB_POWER, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @musb_writeb(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i8*) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
