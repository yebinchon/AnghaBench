; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_state_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_set_state_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"skipped %sstate change %s -> %s [%u ms], context state %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"delayed \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tcpm_states = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpm_port*, i32, i32)* @tcpm_set_state_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_set_state_cond(%struct.tcpm_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tcpm_set_state(%struct.tcpm_port* %15, i32 %16, i32 %17)
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32*, i32** @tcpm_states, align 8
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @tcpm_states, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** @tcpm_states, align 8
  %38 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %39 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tcpm_log(%struct.tcpm_port* %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %30, i32 %35, i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @tcpm_set_state(%struct.tcpm_port*, i32, i32) #1

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
