; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_amiga.c_status_amiga_to_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_amiga.c_status_amiga_to_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARPORT_STATUS_BUSY = common dso_local global i8 0, align 1
@PARPORT_STATUS_ACK = common dso_local global i8 0, align 1
@PARPORT_STATUS_ERROR = common dso_local global i8 0, align 1
@PARPORT_STATUS_PAPEROUT = common dso_local global i8 0, align 1
@PARPORT_STATUS_SELECT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @status_amiga_to_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @status_amiga_to_pc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* @PARPORT_STATUS_BUSY, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @PARPORT_STATUS_ACK, align 1
  %7 = zext i8 %6 to i32
  %8 = or i32 %5, %7
  %9 = load i8, i8* @PARPORT_STATUS_ERROR, align 1
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i8, i8* @PARPORT_STATUS_BUSY, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i8, i8* %2, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8, i8* @PARPORT_STATUS_PAPEROUT, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %3, align 1
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i8, i8* %2, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8, i8* @PARPORT_STATUS_SELECT, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %3, align 1
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i8, i8* %3, align 1
  ret i8 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
