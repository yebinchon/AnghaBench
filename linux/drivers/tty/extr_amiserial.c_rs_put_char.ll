; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_put_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"rs_put_char\00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @rs_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.serial_state*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.serial_state*, %struct.serial_state** %9, align 8
  store %struct.serial_state* %10, %struct.serial_state** %6, align 8
  %11 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @serial_paranoia_check(%struct.serial_state* %11, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %20 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %29 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %33 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %37 = call i64 @CIRC_SPACE(i32 %31, i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  store i32 0, i32* %3, align 4
  br label %64

42:                                               ; preds = %25
  %43 = load i8, i8* %5, align 1
  %44 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %45 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %49 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %47, i64 %53
  store i8 %43, i8* %54, align 1
  %55 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %58 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %42, %39, %24, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
