; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_SETUP_ATTR_ACCESS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_SETUP_ATTR_ACCESS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i32 }

@REG_11 = common dso_local global i32 0, align 4
@REG_14 = common dso_local global i32 0, align 4
@REG_12 = common dso_local global i32 0, align 4
@REG_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32)* @SETUP_ATTR_ACCESS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SETUP_ATTR_ACCESS(%struct.stifb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.stifb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %6 = call i32 @SETUP_HW(%struct.stifb_info* %5)
  %7 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %8 = load i32, i32* @REG_11, align 4
  %9 = call i32 @WRITE_WORD(i32 782290944, %struct.stifb_info* %7, i32 %8)
  %10 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %11 = load i32, i32* @REG_14, align 4
  %12 = call i32 @WRITE_WORD(i32 587203330, %struct.stifb_info* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %15 = load i32, i32* @REG_12, align 4
  %16 = call i32 @WRITE_WORD(i32 %13, %struct.stifb_info* %14, i32 %15)
  %17 = load %struct.stifb_info*, %struct.stifb_info** %3, align 8
  %18 = load i32, i32* @REG_8, align 4
  %19 = call i32 @WRITE_WORD(i32 -1, %struct.stifb_info* %17, i32 %18)
  ret void
}

declare dso_local i32 @SETUP_HW(%struct.stifb_info*) #1

declare dso_local i32 @WRITE_WORD(i32, %struct.stifb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
