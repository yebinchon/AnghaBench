; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_ntty_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.port* }
%struct.port = type { %struct.ctrl_ul, %struct.ctrl_dl }
%struct.ctrl_ul = type { i64, i64 }
%struct.ctrl_dl = type { i64, i64, i64, i64 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ntty_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntty_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.ctrl_dl*, align 8
  %5 = alloca %struct.ctrl_ul*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.port*, %struct.port** %7, align 8
  store %struct.port* %8, %struct.port** %3, align 8
  %9 = load %struct.port*, %struct.port** %3, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 1
  store %struct.ctrl_dl* %10, %struct.ctrl_dl** %4, align 8
  %11 = load %struct.port*, %struct.port** %3, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 0
  store %struct.ctrl_ul* %12, %struct.ctrl_ul** %5, align 8
  %13 = load %struct.ctrl_ul*, %struct.ctrl_ul** %5, align 8
  %14 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TIOCM_RTS, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load %struct.ctrl_ul*, %struct.ctrl_ul** %5, align 8
  %23 = getelementptr inbounds %struct.ctrl_ul, %struct.ctrl_ul* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TIOCM_DTR, align 4
  br label %29

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %21, %30
  %32 = load %struct.ctrl_dl*, %struct.ctrl_dl** %4, align 8
  %33 = getelementptr inbounds %struct.ctrl_dl, %struct.ctrl_dl* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @TIOCM_CAR, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %31, %40
  %42 = load %struct.ctrl_dl*, %struct.ctrl_dl** %4, align 8
  %43 = getelementptr inbounds %struct.ctrl_dl, %struct.ctrl_dl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @TIOCM_RNG, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %41, %50
  %52 = load %struct.ctrl_dl*, %struct.ctrl_dl** %4, align 8
  %53 = getelementptr inbounds %struct.ctrl_dl, %struct.ctrl_dl* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @TIOCM_DSR, align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %51, %60
  %62 = load %struct.ctrl_dl*, %struct.ctrl_dl** %4, align 8
  %63 = getelementptr inbounds %struct.ctrl_dl, %struct.ctrl_dl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @TIOCM_CTS, align 4
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %61, %70
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
