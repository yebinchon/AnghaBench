; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_nt2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_nt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_nt2_area = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"chsc: sei nt2 unhandled cc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_nt2_area*)* @chsc_process_sei_nt2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_nt2(%struct.chsc_sei_nt2_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_nt2_area*, align 8
  store %struct.chsc_sei_nt2_area* %0, %struct.chsc_sei_nt2_area** %2, align 8
  %3 = load %struct.chsc_sei_nt2_area*, %struct.chsc_sei_nt2_area** %2, align 8
  %4 = getelementptr inbounds %struct.chsc_sei_nt2_area, %struct.chsc_sei_nt2_area* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 1, label %6
    i32 2, label %11
  ]

6:                                                ; preds = %1
  %7 = load %struct.chsc_sei_nt2_area*, %struct.chsc_sei_nt2_area** %2, align 8
  %8 = getelementptr inbounds %struct.chsc_sei_nt2_area, %struct.chsc_sei_nt2_area* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @zpci_event_error(i32 %9)
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.chsc_sei_nt2_area*, %struct.chsc_sei_nt2_area** %2, align 8
  %13 = getelementptr inbounds %struct.chsc_sei_nt2_area, %struct.chsc_sei_nt2_area* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @zpci_event_availability(i32 %14)
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.chsc_sei_nt2_area*, %struct.chsc_sei_nt2_area** %2, align 8
  %18 = getelementptr inbounds %struct.chsc_sei_nt2_area, %struct.chsc_sei_nt2_area* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %11, %6
  ret void
}

declare dso_local i32 @zpci_event_error(i32) #1

declare dso_local i32 @zpci_event_availability(i32) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
