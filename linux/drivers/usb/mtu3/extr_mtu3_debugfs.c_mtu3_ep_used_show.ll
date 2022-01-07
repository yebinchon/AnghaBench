; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_ep_used_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_ep_used_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mtu3* }
%struct.mtu3 = type { i32, i32, %struct.mtu3_ep*, %struct.mtu3_ep* }
%struct.mtu3_ep = type { i32, i32, i32 }

@MTU3_EP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s - type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"total used: %d eps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtu3_ep_used_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_ep_used_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtu3*, align 8
  %6 = alloca %struct.mtu3_ep*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.mtu3*, %struct.mtu3** %11, align 8
  store %struct.mtu3* %12, %struct.mtu3** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %14 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %20 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  %24 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %25 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %24, i32 0, i32 3
  %26 = load %struct.mtu3_ep*, %struct.mtu3_ep** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %26, i64 %28
  store %struct.mtu3_ep* %29, %struct.mtu3_ep** %6, align 8
  %30 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %31 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MTU3_EP_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %39 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %42 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %36, %23
  %48 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %49 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %48, i32 0, i32 2
  %50 = load %struct.mtu3_ep*, %struct.mtu3_ep** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %50, i64 %52
  store %struct.mtu3_ep* %53, %struct.mtu3_ep** %6, align 8
  %54 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %55 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MTU3_EP_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %47
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %63 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mtu3_ep*, %struct.mtu3_ep** %6, align 8
  %66 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %60, %47
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %80 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %79, i32 0, i32 1
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
