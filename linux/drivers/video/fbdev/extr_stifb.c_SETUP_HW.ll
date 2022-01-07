; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_SETUP_HW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_SETUP_HW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i32 }

@REG_15b0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*)* @SETUP_HW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SETUP_HW(%struct.stifb_info* %0) #0 {
  %2 = alloca %struct.stifb_info*, align 8
  %3 = alloca i8, align 1
  store %struct.stifb_info* %0, %struct.stifb_info** %2, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %6 = load i32, i32* @REG_15b0, align 4
  %7 = call signext i8 @READ_BYTE(%struct.stifb_info* %5, i32 %6)
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load %struct.stifb_info*, %struct.stifb_info** %2, align 8
  %12 = load i32, i32* @REG_15b0, align 4
  %13 = call signext i8 @READ_BYTE(%struct.stifb_info* %11, i32 %12)
  store i8 %13, i8* %3, align 1
  br label %14

14:                                               ; preds = %10, %4
  br label %15

15:                                               ; preds = %14
  %16 = load i8, i8* %3, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %4, label %18

18:                                               ; preds = %15
  ret void
}

declare dso_local signext i8 @READ_BYTE(%struct.stifb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
