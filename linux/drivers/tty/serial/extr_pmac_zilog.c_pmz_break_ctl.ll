; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8* }

@SND_BRK = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pmz_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %10)
  store %struct.uart_pmac_port* %11, %struct.uart_pmac_port** %5, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %6, align 1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8, i8* @SND_BRK, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %6, align 1
  br label %28

21:                                               ; preds = %2
  %22 = load i8, i8* @SND_BRK, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %34 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* @R5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = and i32 %42, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %8, align 1
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %51 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* @R5, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %49, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %28
  %59 = load i8, i8* %8, align 1
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %61 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* @R5, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %59, i8* %64, align 1
  %65 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %66 = load i64, i64* @R5, align 8
  %67 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* @R5, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @write_zsreg(%struct.uart_pmac_port* %65, i64 %66, i8 zeroext %72)
  br label %74

74:                                               ; preds = %58, %28
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
