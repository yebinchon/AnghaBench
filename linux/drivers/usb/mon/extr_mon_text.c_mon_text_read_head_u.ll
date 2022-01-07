; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_head_u.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_read_head_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"%lx %u %c %c%c:%d:%03u:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_head_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_head_u(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %9 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %10 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 105, i32 111
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %7, align 1
  %16 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %17 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %22 [
    i32 128, label %19
    i32 129, label %20
    i32 130, label %21
  ]

19:                                               ; preds = %3
  store i8 90, i8* %8, align 1
  br label %23

20:                                               ; preds = %3
  store i8 73, i8* %8, align 1
  br label %23

21:                                               ; preds = %3
  store i8 67, i8* %8, align 1
  br label %23

22:                                               ; preds = %3
  store i8 66, i8* %8, align 1
  br label %23

23:                                               ; preds = %22, %21, %20, %19
  %24 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %25 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %28 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %32 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %35 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %39 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %42 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %45 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i8, i8* %8, align 1
  %48 = load i8, i8* %7, align 1
  %49 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %50 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %53 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %56 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @snprintf(i64 %30, i64 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i8 signext %47, i8 signext %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %60 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, i32, i32, i32, i8 signext, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
