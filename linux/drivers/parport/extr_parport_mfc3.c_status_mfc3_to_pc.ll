; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_status_mfc3_to_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_mfc3.c_status_mfc3_to_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARPORT_STATUS_BUSY = common dso_local global i8 0, align 1
@PARPORT_STATUS_PAPEROUT = common dso_local global i8 0, align 1
@PARPORT_STATUS_SELECT = common dso_local global i8 0, align 1
@PARPORT_STATUS_ACK = common dso_local global i8 0, align 1
@PARPORT_STATUS_ERROR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @status_mfc3_to_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @status_mfc3_to_pc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* @PARPORT_STATUS_BUSY, align 1
  store i8 %4, i8* %3, align 1
  %5 = load i8, i8* %2, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i8, i8* @PARPORT_STATUS_BUSY, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i8, i8* %2, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8, i8* @PARPORT_STATUS_PAPEROUT, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8, i8* @PARPORT_STATUS_SELECT, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %3, align 1
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i8, i8* %2, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8, i8* @PARPORT_STATUS_ACK, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %3, align 1
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i8, i8* %2, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8, i8* @PARPORT_STATUS_ERROR, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %3, align 1
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i8, i8* %3, align 1
  ret i8 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
