; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_set_tty_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_moxa.c_moxa_set_tty_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.moxa_port*, %struct.ktermios }
%struct.moxa_port = type { i32 }
%struct.ktermios = type { i32, i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @moxa_set_tty_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_set_tty_param(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.moxa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  store %struct.ktermios* %14, %struct.ktermios** %5, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load %struct.moxa_port*, %struct.moxa_port** %16, align 8
  store %struct.moxa_port* %17, %struct.moxa_port** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %19 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CRTSCTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IXON, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %35 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IXOFF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %43 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXANY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @MoxaPortFlowCtrl(%struct.moxa_port* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %60 = call i32 @tty_get_baud_rate(%struct.tty_struct* %59)
  %61 = call i32 @MoxaPortSetTermio(%struct.moxa_port* %57, %struct.ktermios* %58, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %66 = call i32 @tty_termios_baud_rate(%struct.ktermios* %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %49
  %68 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %68, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @MoxaPortFlowCtrl(%struct.moxa_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MoxaPortSetTermio(%struct.moxa_port*, %struct.ktermios*, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
