; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_control_mfc3_to_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_control_mfc3_to_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@PARPORT_CONTROL_AUTOFD = common dso_local global i8 0, align 1
@PARPORT_CONTROL_SELECT = common dso_local global i8 0, align 1
@PARPORT_CONTROL_INIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @control_mfc3_to_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @control_mfc3_to_pc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %7 = zext i8 %6 to i32
  %8 = or i32 %5, %7
  %9 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i8, i8* @PARPORT_CONTROL_INIT, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i8, i8* %2, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %31, -1
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i8, i8* %2, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %3, align 1
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i8, i8* %3, align 1
  ret i8 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
