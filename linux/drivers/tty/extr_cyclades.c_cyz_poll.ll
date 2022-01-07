; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cyz_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cyz_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_card = type { i32, i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i32 }
%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NR_CARDS = common dso_local global i32 0, align 4
@cy_card = common dso_local global %struct.cyclades_card* null, align 8
@cyz_polling_cycle = common dso_local global i64 0, align 8
@cyz_timerlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cyz_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyz_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cyclades_card*, align 8
  %4 = alloca %struct.cyclades_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %70, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NR_CARDS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %11
  %16 = load %struct.cyclades_card*, %struct.cyclades_card** @cy_card, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %16, i64 %18
  store %struct.cyclades_card* %19, %struct.cyclades_card** %3, align 8
  %20 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %21 = call i32 @cy_is_Z(%struct.cyclades_card* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %70

24:                                               ; preds = %15
  %25 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %26 = call i32 @cyz_is_loaded(%struct.cyclades_card* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %70

29:                                               ; preds = %24
  %30 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %31 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %36 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %70

37:                                               ; preds = %29
  %38 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %39 = call i32 @cyz_handle_cmd(%struct.cyclades_card* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %63, %37
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %43 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %48 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %47, i32 0, i32 2
  %49 = load %struct.cyclades_port*, %struct.cyclades_port** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %49, i64 %51
  store %struct.cyclades_port* %52, %struct.cyclades_port** %4, align 8
  %53 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %54 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %59 = call i32 @cyz_handle_rx(%struct.cyclades_port* %58)
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %62 = call i32 @cyz_handle_tx(%struct.cyclades_port* %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %40

66:                                               ; preds = %40
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i64, i64* @cyz_polling_cycle, align 8
  %69 = add i64 %67, %68
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %66, %34, %28, %23
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %11

73:                                               ; preds = %11
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @mod_timer(i32* @cyz_timerlist, i64 %74)
  ret void
}

declare dso_local i32 @cy_is_Z(%struct.cyclades_card*) #1

declare dso_local i32 @cyz_is_loaded(%struct.cyclades_card*) #1

declare dso_local i32 @cyz_handle_cmd(%struct.cyclades_card*) #1

declare dso_local i32 @cyz_handle_rx(%struct.cyclades_port*) #1

declare dso_local i32 @cyz_handle_tx(%struct.cyclades_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
