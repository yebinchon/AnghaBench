; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i32, i32, i32, %struct.u132_command* }
%struct.u132_command = type { i32, i32, i32, i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@cPCIcfgwr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32, i32, i32)* @ftdi_elan_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_write_config(%struct.usb_ftdi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_ftdi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %81, %4
  %16 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %17 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %86

23:                                               ; preds = %15
  %24 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %25 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %28 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %31 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @COMMAND_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %23
  %38 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %39 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %38, i32 0, i32 4
  %40 = load %struct.u132_command*, %struct.u132_command** %39, align 8
  %41 = load i64, i64* @COMMAND_MASK, align 8
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %43 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = and i64 %41, %45
  %47 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %40, i64 %46
  store %struct.u132_command* %47, %struct.u132_command** %12, align 8
  %48 = load i32, i32* @cPCIcfgwr, align 4
  %49 = and i32 %48, 15
  %50 = or i32 0, %49
  %51 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %52 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %54 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %53, i32 0, i32 1
  store i32 4, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %57 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 15
  %60 = or i32 0, %59
  %61 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %62 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %64 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %63, i32 0, i32 4
  store i32 4, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %67 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %69 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %68, i32 0, i32 5
  %70 = load %struct.u132_command*, %struct.u132_command** %12, align 8
  %71 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %70, i32 0, i32 6
  store i32* %69, i32** %71, align 8
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %73 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %77 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %76)
  %78 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %79 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %78, i32 0, i32 3
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %5, align 4
  br label %86

81:                                               ; preds = %23
  %82 = load %struct.usb_ftdi*, %struct.usb_ftdi** %6, align 8
  %83 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %82, i32 0, i32 3
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = call i32 @msleep(i32 100)
  br label %15

86:                                               ; preds = %37, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
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
