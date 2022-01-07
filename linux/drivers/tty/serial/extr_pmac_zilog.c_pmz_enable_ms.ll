; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_enable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8* }

@R15 = common dso_local global i64 0, align 8
@DCDIE = common dso_local global i8 0, align 1
@SYNCIE = common dso_local global i8 0, align 1
@CTSIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %5)
  store %struct.uart_pmac_port* %6, %struct.uart_pmac_port** %3, align 8
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %8 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* @R15, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @DCDIE, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SYNCIE, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* @CTSIE, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = or i32 %18, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %4, align 1
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* @R15, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %11
  %40 = load i8, i8* %4, align 1
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* @R15, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %40, i8* %45, align 1
  %46 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %47 = load i64, i64* @R15, align 8
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* @R15, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @write_zsreg(%struct.uart_pmac_port* %46, i64 %47, i8 zeroext %53)
  br label %55

55:                                               ; preds = %10, %39, %11
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
