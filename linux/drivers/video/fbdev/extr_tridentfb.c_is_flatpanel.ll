; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_is_flatpanel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_is_flatpanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@fp = common dso_local global i64 0, align 8
@crt = common dso_local global i64 0, align 8
@FPConfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tridentfb_par*)* @is_flatpanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_flatpanel(%struct.tridentfb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tridentfb_par*, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %3, align 8
  %4 = load i64, i64* @fp, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load i64, i64* @crt, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %12 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iscyber(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %7
  store i32 0, i32* %2, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %19 = load i32, i32* @FPConfig, align 4
  %20 = call i32 @read3CE(%struct.tridentfb_par* %18, i32 %19)
  %21 = and i32 %20, 16
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %16, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @iscyber(i32) #1

declare dso_local i32 @read3CE(%struct.tridentfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
