; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_set_modem_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_set_modem_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@DEBUG_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tiocmset set %x clear %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32, i32)* @gigaset_set_modem_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_set_modem_ctrl(%struct.cardstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %8, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.tty_struct*, i32, i32)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %67

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %67

53:                                               ; preds = %49, %38
  %54 = load i32, i32* @DEBUG_IF, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @gig_dbg(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %61, align 8
  %63 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 %62(%struct.tty_struct* %63, i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %53, %52, %35
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
