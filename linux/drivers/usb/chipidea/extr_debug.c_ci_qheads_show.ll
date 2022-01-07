; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_qheads_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_qheads_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ci_hdrc* }
%struct.ci_hdrc = type { i64, i32, i32, %struct.ci_hw_ep* }
%struct.ci_hw_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@CI_ROLE_GADGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"not in gadget mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"EP=%02i: RX=%08X TX=%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" %04X:    %08X    %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ci_qheads_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_qheads_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ci_hw_ep*, align 8
  %11 = alloca %struct.ci_hw_ep*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %13, align 8
  store %struct.ci_hdrc* %14, %struct.ci_hdrc** %6, align 8
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CI_ROLE_GADGET, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %25 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %24, i32 0, i32 2
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %96, %23
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %31 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 2
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %99

35:                                               ; preds = %28
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %37 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %36, i32 0, i32 3
  %38 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %38, i64 %40
  store %struct.ci_hw_ep* %41, %struct.ci_hw_ep** %10, align 8
  %42 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %43 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %42, i32 0, i32 3
  %44 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %47 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 2
  %50 = add i32 %45, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %44, i64 %51
  store %struct.ci_hw_ep* %52, %struct.ci_hw_ep** %11, align 8
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %10, align 8
  %56 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %11, align 8
  %61 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %59, i32 %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %92, %35
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %68, 1
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %10, align 8
  %74 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %11, align 8
  %83 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %81, i32 %90)
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %66

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %28

99:                                               ; preds = %28
  %100 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %101 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %100, i32 0, i32 2
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
