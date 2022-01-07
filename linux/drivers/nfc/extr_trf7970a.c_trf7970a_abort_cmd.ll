; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.trf7970a = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Abort process initiated\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Abort process complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*)* @trf7970a_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_abort_cmd(%struct.nfc_digital_dev* %0) #0 {
  %2 = alloca %struct.nfc_digital_dev*, align 8
  %3 = alloca %struct.trf7970a*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %2, align 8
  %4 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %2, align 8
  %5 = call %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %4)
  store %struct.trf7970a* %5, %struct.trf7970a** %3, align 8
  %6 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %7 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %11 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %14 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %36 [
    i32 129, label %16
    i32 131, label %16
    i32 130, label %16
    i32 128, label %16
    i32 132, label %19
  ]

16:                                               ; preds = %1, %1, %1, %1
  %17 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %18 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 5
  %22 = call i32 @cancel_delayed_work(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %27 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %29 = load i32, i32* @ECANCELED, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @trf7970a_send_err_upstream(%struct.trf7970a* %28, i32 %30)
  %32 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %33 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %19, %16
  %38 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %39 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %38, i32 0, i32 3
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @trf7970a_send_err_upstream(%struct.trf7970a*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
