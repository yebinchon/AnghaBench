; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8* }

@TIOCM_RTS = common dso_local global i32 0, align 4
@RTS = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@DTR = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"pmz_set_mctrl: set bits: %x, clear bits: %x -> %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pmz_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %8)
  store %struct.uart_pmac_port* %9, %struct.uart_pmac_port** %5, align 8
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %11 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %16 = call i64 @ZS_IS_OPEN(%struct.uart_pmac_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %20 = call i64 @ZS_IS_CONS(%struct.uart_pmac_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %110

23:                                               ; preds = %18, %14
  store i8 0, i8* %7, align 1
  store i8 0, i8* %6, align 1
  %24 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %25 = call i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TIOCM_RTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8, i8* @RTS, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %6, align 1
  br label %46

39:                                               ; preds = %27
  %40 = load i8, i8* @RTS, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %7, align 1
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TIOCM_DTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i8, i8* @DTR, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %6, align 1
  br label %66

59:                                               ; preds = %47
  %60 = load i8, i8* @DTR, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %7, align 1
  br label %66

66:                                               ; preds = %59, %52
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %70 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* @R5, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, %68
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  %78 = load i8, i8* %7, align 1
  %79 = zext i8 %78 to i32
  %80 = xor i32 %79, -1
  %81 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* @R5, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, %80
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %91 = load i64, i64* @R5, align 8
  %92 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* @R5, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @write_zsreg(%struct.uart_pmac_port* %90, i64 %91, i8 zeroext %97)
  %99 = load i8, i8* %6, align 1
  %100 = load i8, i8* %7, align 1
  %101 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %102 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* @R5, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @pmz_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8 zeroext %99, i8 zeroext %100, i8 zeroext %106)
  %108 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %109 = call i32 @zssync(%struct.uart_pmac_port* %108)
  br label %110

110:                                              ; preds = %66, %22, %13
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

declare dso_local i32 @pmz_debug(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
