; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_flush_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_flush_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i32, i32, i32, i64, i64, %struct.u132_command*, %struct.u132_target* }
%struct.u132_command = type { i32, i32, i32, i32, i64, i64*, i64 }
%struct.u132_target = type { i32, i32 }

@COMMAND_SIZE = common dso_local global i32 0, align 4
@COMMAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ftdi*)* @ftdi_elan_flush_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_flush_targets(%struct.usb_ftdi* %0) #0 {
  %2 = alloca %struct.usb_ftdi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.u132_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.u132_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.u132_command*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %2, align 8
  store i32 4, i32* %3, align 4
  %9 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %10 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %149, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %150

16:                                               ; preds = %12
  %17 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %18 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %17, i32 0, i32 7
  %19 = load %struct.u132_target*, %struct.u132_target** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %19, i64 %21
  store %struct.u132_target* %22, %struct.u132_target** %4, align 8
  %23 = load %struct.u132_target*, %struct.u132_target** %4, align 8
  %24 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %78, %16
  %26 = load %struct.u132_target*, %struct.u132_target** %4, align 8
  %27 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %87

30:                                               ; preds = %25
  %31 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %32 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @COMMAND_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %30
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %43 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %42, i32 0, i32 6
  %44 = load %struct.u132_command*, %struct.u132_command** %43, align 8
  %45 = load i64, i64* @COMMAND_MASK, align 8
  %46 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %47 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = and i64 %45, %49
  %51 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %44, i64 %50
  store %struct.u132_command* %51, %struct.u132_command** %6, align 8
  %52 = load i32, i32* %3, align 4
  %53 = shl i32 %52, 5
  %54 = or i32 128, %53
  %55 = or i32 %54, 4
  %56 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %57 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %59 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %61 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %63 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %65 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %67 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %69 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %68, i32 0, i32 4
  %70 = load %struct.u132_command*, %struct.u132_command** %6, align 8
  %71 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %70, i32 0, i32 5
  store i64* %69, i64** %71, align 8
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %73 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %77 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %76)
  br label %86

78:                                               ; preds = %30
  %79 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %80 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %79, i32 0, i32 3
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = call i32 @msleep(i32 100)
  %83 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %84 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %83, i32 0, i32 3
  %85 = call i32 @mutex_lock(i32* %84)
  br label %25

86:                                               ; preds = %41
  br label %87

87:                                               ; preds = %86, %25
  br label %88

88:                                               ; preds = %140, %87
  %89 = load %struct.u132_target*, %struct.u132_target** %4, align 8
  %90 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %149

93:                                               ; preds = %88
  %94 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %95 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %98 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @COMMAND_SIZE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %93
  %105 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %106 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %105, i32 0, i32 6
  %107 = load %struct.u132_command*, %struct.u132_command** %106, align 8
  %108 = load i64, i64* @COMMAND_MASK, align 8
  %109 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %110 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = and i64 %108, %112
  %114 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %107, i64 %113
  store %struct.u132_command* %114, %struct.u132_command** %8, align 8
  %115 = load i32, i32* %3, align 4
  %116 = shl i32 %115, 5
  %117 = or i32 144, %116
  %118 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %119 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %121 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %123 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %125 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %127 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %126, i32 0, i32 6
  store i64 0, i64* %127, align 8
  %128 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %129 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %131 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %130, i32 0, i32 4
  %132 = load %struct.u132_command*, %struct.u132_command** %8, align 8
  %133 = getelementptr inbounds %struct.u132_command, %struct.u132_command* %132, i32 0, i32 5
  store i64* %131, i64** %133, align 8
  %134 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %135 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %139 = call i32 @ftdi_elan_kick_command_queue(%struct.usb_ftdi* %138)
  br label %148

140:                                              ; preds = %93
  %141 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %142 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %141, i32 0, i32 3
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = call i32 @msleep(i32 100)
  %145 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %146 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %145, i32 0, i32 3
  %147 = call i32 @mutex_lock(i32* %146)
  br label %88

148:                                              ; preds = %104
  br label %149

149:                                              ; preds = %148, %88
  br label %12

150:                                              ; preds = %12
  %151 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %152 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %151, i32 0, i32 5
  store i64 0, i64* %152, align 8
  %153 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %154 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %153, i32 0, i32 2
  store i32 4, i32* %154, align 8
  %155 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %156 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.usb_ftdi*, %struct.usb_ftdi** %2, align 8
  %158 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %157, i32 0, i32 3
  %159 = call i32 @mutex_unlock(i32* %158)
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
