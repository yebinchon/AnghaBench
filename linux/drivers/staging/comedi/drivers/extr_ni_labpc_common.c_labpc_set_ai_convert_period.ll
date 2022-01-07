; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_set_ai_convert_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_set_ai_convert_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i64, i64, i32, i32 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@MODE_SINGLE_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_cmd*, i32, i32)* @labpc_set_ai_convert_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_set_ai_convert_period(%struct.comedi_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_cmd* %0, %struct.comedi_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TRIG_TIMER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MODE_SINGLE_CHAN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TRIG_TIMER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %23
  br label %45

41:                                               ; preds = %17, %13
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %12, %41, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
