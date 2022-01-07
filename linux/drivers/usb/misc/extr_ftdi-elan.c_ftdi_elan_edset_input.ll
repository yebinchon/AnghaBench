; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_edset_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i64, i64, i32, i32, i32, %struct.u132_command*, %struct.u132_target* }
%struct.u132_command = type { i32, i32, i64, i32*, i64, i64, i32 }
%struct.u132_target = type { void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32, %struct.urb*, i8* }
%struct.urb = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i64, i8*, %struct.urb*, i64, i64, i64, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*)* @ftdi_elan_edset_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_edset_input(%struct.usb_ftdi* %0, i64 %1, i8* %2, %struct.urb* %3, i64 %4, i64 %5, i64 %6, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ftdi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.urb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.u132_target*, align 8
  %21 = alloca %struct.u132_command*, align 8
  %22 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.urb* %3, %struct.urb** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %7, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %23 = load i64, i64* %11, align 8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %18, align 8
  br label %25

25:                                               ; preds = %152, %8
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %27 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %157

33:                                               ; preds = %25
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %157

41:                                               ; preds = %33
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %43 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %42, i32 0, i32 4
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %46 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* @COMMAND_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %152

55:                                               ; preds = %41
  %56 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %57 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %56, i32 0, i32 6
  %58 = load %struct.u132_target*, %struct.u132_target** %57, align 8
  %59 = load i64, i64* %18, align 8
  %60 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %58, i64 %59
  store %struct.u132_target* %60, %struct.u132_target** %20, align 8
  %61 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %62 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %61, i32 0, i32 5
  %63 = load %struct.u132_command*, %struct.u132_command** %62, align 8
  %64 = load i64, i64* @COMMAND_MASK, align 8
  %65 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %66 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = and i64 %64, %68
  %70 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %63, i64 %69
  store %struct.u132_command* %70, %struct.u132_command** %21, align 8
  %71 = load %struct.urb*, %struct.urb** %13, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.urb*, %struct.urb** %13, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  store i32 %77, i32* %22, align 4
  %78 = load i64, i64* %18, align 8
  %79 = shl i64 %78, 5
  %80 = or i64 130, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %83 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %22, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %55
  %87 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %88 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %102

89:                                               ; preds = %55
  %90 = load i32, i32* %22, align 4
  %91 = icmp sgt i32 %90, 1024
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %94 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %93, i32 0, i32 1
  store i32 33791, i32* %94, align 4
  br label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %22, align 4
  %97 = sub nsw i32 %96, 1
  %98 = or i32 32768, %97
  %99 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %100 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %92
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i64, i64* %16, align 8
  %104 = shl i64 %103, 6
  %105 = load i64, i64* %15, align 8
  %106 = shl i64 %105, 2
  %107 = or i64 %104, %106
  %108 = load i64, i64* %14, align 8
  %109 = shl i64 %108, 0
  %110 = or i64 %107, %109
  %111 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %112 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.urb*, %struct.urb** %13, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.urb*, %struct.urb** %13, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.urb*, %struct.urb** %13, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usb_pipeout(i32 %121)
  %123 = call i32 @usb_maxpacket(i32 %115, i32 %118, i32 %122)
  %124 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %125 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %127 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  %128 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %129 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load %struct.u132_command*, %struct.u132_command** %21, align 8
  %131 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %17, align 8
  %133 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %134 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %133, i32 0, i32 0
  store void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* %132, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %134, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %137 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.urb*, %struct.urb** %13, align 8
  %139 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %140 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %139, i32 0, i32 2
  store %struct.urb* %138, %struct.urb** %140, align 8
  %141 = load %struct.u132_target*, %struct.u132_target** %20, align 8
  %142 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %141, i32 0, i32 1
  store i32 1, i32* %142, align 8
  %143 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %144 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %148 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %147)
  %149 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %150 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %149, i32 0, i32 4
  %151 = call i32 @mutex_unlock(i32* %150)
  store i32 0, i32* %9, align 4
  br label %157

152:                                              ; preds = %41
  %153 = load %struct.usb_ftdi*, %struct.usb_ftdi** %10, align 8
  %154 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %153, i32 0, i32 4
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = call i32 @msleep(i32 100)
  br label %25

157:                                              ; preds = %102, %38, %30
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
