; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_cancel_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_cancel_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i32, i32, i32, i64, i64, %struct.u132_command*, %struct.u132_target* }
%struct.u132_command = type { i32, i32, i32, i32, i64, i64*, i64 }
%struct.u132_target = type { i32, i32 }

@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ftdi*)* @ftdi_elan_cancel_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_cancel_targets(%struct.usb_ftdi* %0) #0 {
  %2 = alloca %struct.usb_ftdi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.u132_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %2, align 8
  store i32 4, i32* %3, align 4
  %7 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %8 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  br label %10

10:                                               ; preds = %85, %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %3, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %16 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %15, i32 0, i32 7
  %17 = load %struct.u132_target*, %struct.u132_target** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %17, i64 %19
  store %struct.u132_target* %20, %struct.u132_target** %4, align 8
  %21 = load %struct.u132_target*, %struct.u132_target** %4, align 8
  %22 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %76, %14
  %24 = load %struct.u132_target*, %struct.u132_target** %4, align 8
  %25 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %85

28:                                               ; preds = %23
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %33 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @COMMAND_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %28
  %40 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %41 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %40, i32 0, i32 6
  %42 = load %struct.u132_command*, %struct.u132_command** %41, align 8
  %43 = load i64, i64* @COMMAND_MASK, align 8
  %44 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %45 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = and i64 %43, %47
  %49 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %42, i64 %48
  store %struct.u132_command* %49, %struct.u132_command** %6, align 8
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 %50, 5
  %52 = or i32 128, %51
  %53 = or i32 %52, 4
  %54 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %55 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %57 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %59 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %61 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %63 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %65 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %67 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %66, i32 0, i32 4
  %68 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %69 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %68, i32 0, i32 5
  store i64* %67, i64** %69, align 8
  %70 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %71 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %75 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %74)
  br label %84

76:                                               ; preds = %28
  %77 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %78 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %77, i32 0, i32 3
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = call i32 @msleep(i32 100)
  %81 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %82 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %81, i32 0, i32 3
  %83 = call i32 @mutex_lock(i32* %82)
  br label %23

84:                                               ; preds = %39
  br label %85

85:                                               ; preds = %84, %23
  br label %10

86:                                               ; preds = %10
  %87 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %88 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %90 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %89, i32 0, i32 2
  store i32 4, i32* %90, align 8
  %91 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %92 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %94 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %93, i32 0, i32 3
  %95 = call i32 @mutex_unlock(i32* %94)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
