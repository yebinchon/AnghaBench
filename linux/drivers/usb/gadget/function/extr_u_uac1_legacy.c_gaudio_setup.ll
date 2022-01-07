; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_gaudio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_gaudio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gaudio = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"we need at least one control device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gaudio_setup(%struct.gaudio* %0) #0 {
  %2 = alloca %struct.gaudio*, align 8
  %3 = alloca i32, align 4
  store %struct.gaudio* %0, %struct.gaudio** %2, align 8
  %4 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %5 = call i32 @gaudio_open_snd_dev(%struct.gaudio* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %10 = call i32 @ERROR(%struct.gaudio* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @gaudio_open_snd_dev(%struct.gaudio*) #1

declare dso_local i32 @ERROR(%struct.gaudio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
