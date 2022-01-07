; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"pending state change %s -> %s @ %u ms\00", align 1
@tcpm_states = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"state change %s -> %s\00", align 1
@INVALID_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32, i32)* @tcpm_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_set_state(%struct.tcpm_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %11 = load i32*, i32** @tcpm_states, align 8
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @tcpm_states, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.tcpm_port*, i8*, i32, i32, ...) @tcpm_log(%struct.tcpm_port* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %26 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  %34 = call i32 @mod_delayed_work(i32 %29, i32* %31, i64 %33)
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %40 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %43 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %82

44:                                               ; preds = %3
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %46 = load i32*, i32** @tcpm_states, align 8
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @tcpm_states, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.tcpm_port*, i8*, i32, i32, ...) @tcpm_log(%struct.tcpm_port* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56)
  %58 = load i32, i32* @INVALID_STATE, align 4
  %59 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %60 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %62 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %65 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %69 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %71 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %44
  %75 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %76 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %79 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %78, i32 0, i32 4
  %80 = call i32 @mod_delayed_work(i32 %77, i32* %79, i64 0)
  br label %81

81:                                               ; preds = %74, %44
  br label %82

82:                                               ; preds = %81, %9
  ret void
}

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32, i32, ...) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
